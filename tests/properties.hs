module Main (main) where
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.QuickCheck (testProperty, (===))
import Data.Char (chr, ord)
import Data.Int.Conv

main :: IO ()
main = defaultMain $ testGroup "int-conv" $
  testProperty "wordToWord8" (\x -> wordToWord8 x === fromIntegral x) :
  testProperty "wordToWord16" (\x -> wordToWord16 x === fromIntegral x) :
  testProperty "wordToWord32" (\x -> wordToWord32 x === fromIntegral x) :
  testProperty "wordToWord64" (\x -> wordToWord64 x === fromIntegral x) :
  testProperty "wordToInt" (\x -> wordToInt x === fromIntegral x) :
  testProperty "wordToInt8" (\x -> wordToInt8 x === fromIntegral x) :
  testProperty "wordToInt16" (\x -> wordToInt16 x === fromIntegral x) :
  testProperty "wordToInt32" (\x -> wordToInt32 x === fromIntegral x) :
  testProperty "wordToInt64" (\x -> wordToInt64 x === fromIntegral x) :
  testProperty "wordToChar" (\x -> wordToChar x === intToChar (fromIntegral x)) :
  testProperty "word8ToWord" (\x -> word8ToWord x === fromIntegral x) :
  testProperty "word8ToWord16" (\x -> word8ToWord16 x === fromIntegral x) :
  testProperty "word8ToWord32" (\x -> word8ToWord32 x === fromIntegral x) :
  testProperty "word8ToWord64" (\x -> word8ToWord64 x === fromIntegral x) :
  testProperty "word8ToInt" (\x -> word8ToInt x === fromIntegral x) :
  testProperty "word8ToInt8" (\x -> word8ToInt8 x === fromIntegral x) :
  testProperty "word8ToInt16" (\x -> word8ToInt16 x === fromIntegral x) :
  testProperty "word8ToInt32" (\x -> word8ToInt32 x === fromIntegral x) :
  testProperty "word8ToInt64" (\x -> word8ToInt64 x === fromIntegral x) :
  testProperty "word8ToChar" (\x -> word8ToChar x === intToChar (fromIntegral x)) :
  testProperty "word16ToWord" (\x -> word16ToWord x === fromIntegral x) :
  testProperty "word16ToWord8" (\x -> word16ToWord8 x === fromIntegral x) :
  testProperty "word16ToWord32" (\x -> word16ToWord32 x === fromIntegral x) :
  testProperty "word16ToWord64" (\x -> word16ToWord64 x === fromIntegral x) :
  testProperty "word16ToInt" (\x -> word16ToInt x === fromIntegral x) :
  testProperty "word16ToInt8" (\x -> word16ToInt8 x === fromIntegral x) :
  testProperty "word16ToInt16" (\x -> word16ToInt16 x === fromIntegral x) :
  testProperty "word16ToInt32" (\x -> word16ToInt32 x === fromIntegral x) :
  testProperty "word16ToInt64" (\x -> word16ToInt64 x === fromIntegral x) :
  testProperty "word16ToChar" (\x -> word16ToChar x === intToChar (fromIntegral x)) :
  testProperty "word32ToWord" (\x -> word32ToWord x === fromIntegral x) :
  testProperty "word32ToWord8" (\x -> word32ToWord8 x === fromIntegral x) :
  testProperty "word32ToWord16" (\x -> word32ToWord16 x === fromIntegral x) :
  testProperty "word32ToWord64" (\x -> word32ToWord64 x === fromIntegral x) :
  testProperty "word32ToInt" (\x -> word32ToInt x === fromIntegral x) :
  testProperty "word32ToInt8" (\x -> word32ToInt8 x === fromIntegral x) :
  testProperty "word32ToInt16" (\x -> word32ToInt16 x === fromIntegral x) :
  testProperty "word32ToInt32" (\x -> word32ToInt32 x === fromIntegral x) :
  testProperty "word32ToInt64" (\x -> word32ToInt64 x === fromIntegral x) :
  testProperty "word32ToChar" (\x -> word32ToChar x === intToChar (fromIntegral x)) :
  testProperty "word64ToWord" (\x -> word64ToWord x === fromIntegral x) :
  testProperty "word64ToWord8" (\x -> word64ToWord8 x === fromIntegral x) :
  testProperty "word64ToWord16" (\x -> word64ToWord16 x === fromIntegral x) :
  testProperty "word64ToWord32" (\x -> word64ToWord32 x === fromIntegral x) :
  testProperty "word64ToInt" (\x -> word64ToInt x === fromIntegral x) :
  testProperty "word64ToInt8" (\x -> word64ToInt8 x === fromIntegral x) :
  testProperty "word64ToInt16" (\x -> word64ToInt16 x === fromIntegral x) :
  testProperty "word64ToInt32" (\x -> word64ToInt32 x === fromIntegral x) :
  testProperty "word64ToInt64" (\x -> word64ToInt64 x === fromIntegral x) :
  testProperty "word64ToChar" (\x -> word64ToChar x === intToChar (fromIntegral x)) :
  testProperty "intToWord" (\x -> intToWord x === fromIntegral x) :
  testProperty "intToWord8" (\x -> intToWord8 x === fromIntegral x) :
  testProperty "intToWord16" (\x -> intToWord16 x === fromIntegral x) :
  testProperty "intToWord32" (\x -> intToWord32 x === fromIntegral x) :
  testProperty "intToWord64" (\x -> intToWord64 x === fromIntegral x) :
  testProperty "intToInt8" (\x -> intToInt8 x === fromIntegral x) :
  testProperty "intToInt16" (\x -> intToInt16 x === fromIntegral x) :
  testProperty "intToInt32" (\x -> intToInt32 x === fromIntegral x) :
  testProperty "intToInt64" (\x -> intToInt64 x === fromIntegral x) :
  testProperty "intToChar" (\x -> intToChar x === intToChar (fromIntegral x)) :
  testProperty "int8ToWord" (\x -> int8ToWord x === fromIntegral x) :
  testProperty "int8ToWord8" (\x -> int8ToWord8 x === fromIntegral x) :
  testProperty "int8ToWord16" (\x -> int8ToWord16 x === fromIntegral x) :
  testProperty "int8ToWord32" (\x -> int8ToWord32 x === fromIntegral x) :
  testProperty "int8ToWord64" (\x -> int8ToWord64 x === fromIntegral x) :
  testProperty "int8ToInt" (\x -> int8ToInt x === fromIntegral x) :
  testProperty "int8ToInt16" (\x -> int8ToInt16 x === fromIntegral x) :
  testProperty "int8ToInt32" (\x -> int8ToInt32 x === fromIntegral x) :
  testProperty "int8ToInt64" (\x -> int8ToInt64 x === fromIntegral x) :
  testProperty "int8ToChar" (\x -> int8ToChar x === intToChar (fromIntegral x)) :
  testProperty "int16ToWord" (\x -> int16ToWord x === fromIntegral x) :
  testProperty "int16ToWord8" (\x -> int16ToWord8 x === fromIntegral x) :
  testProperty "int16ToWord16" (\x -> int16ToWord16 x === fromIntegral x) :
  testProperty "int16ToWord32" (\x -> int16ToWord32 x === fromIntegral x) :
  testProperty "int16ToWord64" (\x -> int16ToWord64 x === fromIntegral x) :
  testProperty "int16ToInt" (\x -> int16ToInt x === fromIntegral x) :
  testProperty "int16ToInt8" (\x -> int16ToInt8 x === fromIntegral x) :
  testProperty "int16ToInt32" (\x -> int16ToInt32 x === fromIntegral x) :
  testProperty "int16ToInt64" (\x -> int16ToInt64 x === fromIntegral x) :
  testProperty "int16ToChar" (\x -> int16ToChar x === intToChar (fromIntegral x)) :
  testProperty "int32ToWord" (\x -> int32ToWord x === fromIntegral x) :
  testProperty "int32ToWord8" (\x -> int32ToWord8 x === fromIntegral x) :
  testProperty "int32ToWord16" (\x -> int32ToWord16 x === fromIntegral x) :
  testProperty "int32ToWord32" (\x -> int32ToWord32 x === fromIntegral x) :
  testProperty "int32ToWord64" (\x -> int32ToWord64 x === fromIntegral x) :
  testProperty "int32ToInt" (\x -> int32ToInt x === fromIntegral x) :
  testProperty "int32ToInt8" (\x -> int32ToInt8 x === fromIntegral x) :
  testProperty "int32ToInt16" (\x -> int32ToInt16 x === fromIntegral x) :
  testProperty "int32ToInt64" (\x -> int32ToInt64 x === fromIntegral x) :
  testProperty "int32ToChar" (\x -> int32ToChar x === intToChar (fromIntegral x)) :
  testProperty "int64ToWord" (\x -> int64ToWord x === fromIntegral x) :
  testProperty "int64ToWord8" (\x -> int64ToWord8 x === fromIntegral x) :
  testProperty "int64ToWord16" (\x -> int64ToWord16 x === fromIntegral x) :
  testProperty "int64ToWord32" (\x -> int64ToWord32 x === fromIntegral x) :
  testProperty "int64ToWord64" (\x -> int64ToWord64 x === fromIntegral x) :
  testProperty "int64ToInt" (\x -> int64ToInt x === fromIntegral x) :
  testProperty "int64ToInt8" (\x -> int64ToInt8 x === fromIntegral x) :
  testProperty "int64ToInt16" (\x -> int64ToInt16 x === fromIntegral x) :
  testProperty "int64ToInt32" (\x -> int64ToInt32 x === fromIntegral x) :
  testProperty "int64ToChar" (\x -> int64ToChar x === intToChar (fromIntegral x)) :
  testProperty "charToWord" (\x -> charToWord x === fromIntegral (ord x)) :
  testProperty "charToWord8" (\x -> charToWord8 x === fromIntegral (ord x)) :
  testProperty "charToWord16" (\x -> charToWord16 x === fromIntegral (ord x)) :
  testProperty "charToWord32" (\x -> charToWord32 x === fromIntegral (ord x)) :
  testProperty "charToWord64" (\x -> charToWord64 x === fromIntegral (ord x)) :
  testProperty "charToInt" (\x -> charToInt x === fromIntegral (ord x)) :
  testProperty "charToInt8" (\x -> charToInt8 x === fromIntegral (ord x)) :
  testProperty "charToInt16" (\x -> charToInt16 x === fromIntegral (ord x)) :
  testProperty "charToInt32" (\x -> charToInt32 x === fromIntegral (ord x)) :
  testProperty "charToInt64" (\x -> charToInt64 x === fromIntegral (ord x)) :
  [] 
