module Main (main) where

import Data.Char (toLower)

main :: IO ()
main = do
    writeFile "src/Data/Int/Conv.hs" $ unlines $
        header ++
        conversions

    writeFile "tests/properties.hs" $ unlines $
        testFile

header :: [String]
header = 
    [ "module Data.Int.Conv where"
    , ""
    , "import GHC.Exts"
    , "import GHC.Word"
    , "import GHC.Int"
    , ""
    ]

testFile :: [String]
testFile =
    [ "module Main (main) where"
    , "import Test.Tasty (defaultMain, testGroup)"
    , "import Test.Tasty.QuickCheck (testProperty, (===))"
    , "import Data.Int.Conv"
    , ""
    , "main :: IO ()"
    , "main = defaultMain $ testGroup \"int-conv\" $"
    ] ++
    [ "  testProperty " ++ show (funcName x y) ++ " (\\x -> " ++ funcName x y ++ " x === fromIntegral x) :"
    | x <- [ minBound .. maxBound :: Ty]
    , y <- [ minBound .. maxBound :: Ty]
    , x /= y
    ] ++
    [ "  [] "
    ]

conversions :: [String]
conversions = concat
    [ [ signature x y
      , implementation x y
      , ""
      ]
    | x <- [ minBound .. maxBound :: Ty]
    , y <- [ minBound .. maxBound :: Ty]
    , x /= y
    ]

funcName :: Ty -> Ty -> String
funcName x y = mapFirst toLower (name x) ++ "To" ++ name y

mapFirst :: (a -> a) -> [a] -> [a]
mapFirst _ []     = []
mapFirst f (x:xs) = f x : xs

signature :: Ty -> Ty -> String
signature x y = funcName x y ++ " :: " ++ name x ++ " -> " ++ name y

implementation :: Ty -> Ty -> String
implementation x y = funcName x y ++ " (" ++ constructor x ++ " x) = " ++ constructor y ++ " (" ++ implementation' x y ++ ")"

implementation' :: Ty -> Ty -> String
implementation' x y
    | x == W64
    , y == I64
    = "word64ToInt64# x"

    | x == I64
    , y == W64
    = "int64ToWord64# x"

    | otherwise
    = composition (parts x y)

parts :: Ty -> Ty -> [String]
parts x y =
    [ convTo y | y /= W && y /= I ] ++
    [ "int2Word#" | x > W64, y <= W64 ] ++
    [ "word2Int#" | x <= W64, y > W64 ] ++
    [ convFrom x | x /= W && x /= I ]

composition :: [String] -> String
composition [] = "x"
composition [f] = f ++ " x"
composition (f:fs) = f ++ " (" ++ composition fs ++ ")"

data Ty
    = W
    | W8
    | W16
    | W32
    | W64
    | I
    | I8
    | I16
    | I32
    | I64
  deriving (Eq, Ord, Show, Enum, Bounded)

convTo :: Ty -> [Char]
convTo ty
    | ty <= W64 = "wordTo" ++ name ty ++ "#"
    | otherwise = "intTo" ++ name ty ++ "#"

convFrom :: Ty -> [Char]
convFrom ty
    | ty <= W64 = mapFirst toLower (name ty) ++ "ToWord#"
    | otherwise = mapFirst toLower (name ty) ++ "ToInt#"

name :: Ty -> String
name W = "Word"
name W8 = "Word8"
name W16 = "Word16"
name W32 = "Word32"
name W64 = "Word64"
name I = "Int"
name I8 = "Int8"
name I16 = "Int16"
name I32 = "Int32"
name I64 = "Int64"

constructor :: Ty -> String
constructor ty = show ty ++ "#"
