module Data.Int.Conv where

import GHC.Exts
import GHC.Word
import GHC.Int

wordToWord8 :: Word -> Word8
wordToWord8 (W# x) = W8# (wordToWord8# x)

wordToWord16 :: Word -> Word16
wordToWord16 (W# x) = W16# (wordToWord16# x)

wordToWord32 :: Word -> Word32
wordToWord32 (W# x) = W32# (wordToWord32# x)

wordToWord64 :: Word -> Word64
wordToWord64 (W# x) = W64# (wordToWord64# x)

wordToInt :: Word -> Int
wordToInt (W# x) = I# (word2Int# x)

wordToInt8 :: Word -> Int8
wordToInt8 (W# x) = I8# (intToInt8# (word2Int# x))

wordToInt16 :: Word -> Int16
wordToInt16 (W# x) = I16# (intToInt16# (word2Int# x))

wordToInt32 :: Word -> Int32
wordToInt32 (W# x) = I32# (intToInt32# (word2Int# x))

wordToInt64 :: Word -> Int64
wordToInt64 (W# x) = I64# (intToInt64# (word2Int# x))

wordToChar :: Word -> Char
wordToChar (W# x) = C# (chr# (word2Int# x))

word8ToWord :: Word8 -> Word
word8ToWord (W8# x) = W# (word8ToWord# x)

word8ToWord16 :: Word8 -> Word16
word8ToWord16 (W8# x) = W16# (wordToWord16# (word8ToWord# x))

word8ToWord32 :: Word8 -> Word32
word8ToWord32 (W8# x) = W32# (wordToWord32# (word8ToWord# x))

word8ToWord64 :: Word8 -> Word64
word8ToWord64 (W8# x) = W64# (wordToWord64# (word8ToWord# x))

word8ToInt :: Word8 -> Int
word8ToInt (W8# x) = I# (word2Int# (word8ToWord# x))

word8ToInt8 :: Word8 -> Int8
word8ToInt8 (W8# x) = I8# (intToInt8# (word2Int# (word8ToWord# x)))

word8ToInt16 :: Word8 -> Int16
word8ToInt16 (W8# x) = I16# (intToInt16# (word2Int# (word8ToWord# x)))

word8ToInt32 :: Word8 -> Int32
word8ToInt32 (W8# x) = I32# (intToInt32# (word2Int# (word8ToWord# x)))

word8ToInt64 :: Word8 -> Int64
word8ToInt64 (W8# x) = I64# (intToInt64# (word2Int# (word8ToWord# x)))

word8ToChar :: Word8 -> Char
word8ToChar (W8# x) = C# (chr# (word2Int# (word8ToWord# x)))

word16ToWord :: Word16 -> Word
word16ToWord (W16# x) = W# (word16ToWord# x)

word16ToWord8 :: Word16 -> Word8
word16ToWord8 (W16# x) = W8# (wordToWord8# (word16ToWord# x))

word16ToWord32 :: Word16 -> Word32
word16ToWord32 (W16# x) = W32# (wordToWord32# (word16ToWord# x))

word16ToWord64 :: Word16 -> Word64
word16ToWord64 (W16# x) = W64# (wordToWord64# (word16ToWord# x))

word16ToInt :: Word16 -> Int
word16ToInt (W16# x) = I# (word2Int# (word16ToWord# x))

word16ToInt8 :: Word16 -> Int8
word16ToInt8 (W16# x) = I8# (intToInt8# (word2Int# (word16ToWord# x)))

word16ToInt16 :: Word16 -> Int16
word16ToInt16 (W16# x) = I16# (intToInt16# (word2Int# (word16ToWord# x)))

word16ToInt32 :: Word16 -> Int32
word16ToInt32 (W16# x) = I32# (intToInt32# (word2Int# (word16ToWord# x)))

word16ToInt64 :: Word16 -> Int64
word16ToInt64 (W16# x) = I64# (intToInt64# (word2Int# (word16ToWord# x)))

word16ToChar :: Word16 -> Char
word16ToChar (W16# x) = C# (chr# (word2Int# (word16ToWord# x)))

word32ToWord :: Word32 -> Word
word32ToWord (W32# x) = W# (word32ToWord# x)

word32ToWord8 :: Word32 -> Word8
word32ToWord8 (W32# x) = W8# (wordToWord8# (word32ToWord# x))

word32ToWord16 :: Word32 -> Word16
word32ToWord16 (W32# x) = W16# (wordToWord16# (word32ToWord# x))

word32ToWord64 :: Word32 -> Word64
word32ToWord64 (W32# x) = W64# (wordToWord64# (word32ToWord# x))

word32ToInt :: Word32 -> Int
word32ToInt (W32# x) = I# (word2Int# (word32ToWord# x))

word32ToInt8 :: Word32 -> Int8
word32ToInt8 (W32# x) = I8# (intToInt8# (word2Int# (word32ToWord# x)))

word32ToInt16 :: Word32 -> Int16
word32ToInt16 (W32# x) = I16# (intToInt16# (word2Int# (word32ToWord# x)))

word32ToInt32 :: Word32 -> Int32
word32ToInt32 (W32# x) = I32# (intToInt32# (word2Int# (word32ToWord# x)))

word32ToInt64 :: Word32 -> Int64
word32ToInt64 (W32# x) = I64# (intToInt64# (word2Int# (word32ToWord# x)))

word32ToChar :: Word32 -> Char
word32ToChar (W32# x) = C# (chr# (word2Int# (word32ToWord# x)))

word64ToWord :: Word64 -> Word
word64ToWord (W64# x) = W# (word64ToWord# x)

word64ToWord8 :: Word64 -> Word8
word64ToWord8 (W64# x) = W8# (wordToWord8# (word64ToWord# x))

word64ToWord16 :: Word64 -> Word16
word64ToWord16 (W64# x) = W16# (wordToWord16# (word64ToWord# x))

word64ToWord32 :: Word64 -> Word32
word64ToWord32 (W64# x) = W32# (wordToWord32# (word64ToWord# x))

word64ToInt :: Word64 -> Int
word64ToInt (W64# x) = I# (word2Int# (word64ToWord# x))

word64ToInt8 :: Word64 -> Int8
word64ToInt8 (W64# x) = I8# (intToInt8# (word2Int# (word64ToWord# x)))

word64ToInt16 :: Word64 -> Int16
word64ToInt16 (W64# x) = I16# (intToInt16# (word2Int# (word64ToWord# x)))

word64ToInt32 :: Word64 -> Int32
word64ToInt32 (W64# x) = I32# (intToInt32# (word2Int# (word64ToWord# x)))

word64ToInt64 :: Word64 -> Int64
word64ToInt64 (W64# x) = I64# (word64ToInt64# x)

word64ToChar :: Word64 -> Char
word64ToChar (W64# x) = C# (chr# (word2Int# (word64ToWord# x)))

intToWord :: Int -> Word
intToWord (I# x) = W# (int2Word# x)

intToWord8 :: Int -> Word8
intToWord8 (I# x) = W8# (wordToWord8# (int2Word# x))

intToWord16 :: Int -> Word16
intToWord16 (I# x) = W16# (wordToWord16# (int2Word# x))

intToWord32 :: Int -> Word32
intToWord32 (I# x) = W32# (wordToWord32# (int2Word# x))

intToWord64 :: Int -> Word64
intToWord64 (I# x) = W64# (wordToWord64# (int2Word# x))

intToInt8 :: Int -> Int8
intToInt8 (I# x) = I8# (intToInt8# x)

intToInt16 :: Int -> Int16
intToInt16 (I# x) = I16# (intToInt16# x)

intToInt32 :: Int -> Int32
intToInt32 (I# x) = I32# (intToInt32# x)

intToInt64 :: Int -> Int64
intToInt64 (I# x) = I64# (intToInt64# x)

intToChar :: Int -> Char
intToChar (I# x) = C# (chr# x)

int8ToWord :: Int8 -> Word
int8ToWord (I8# x) = W# (int2Word# (int8ToInt# x))

int8ToWord8 :: Int8 -> Word8
int8ToWord8 (I8# x) = W8# (wordToWord8# (int2Word# (int8ToInt# x)))

int8ToWord16 :: Int8 -> Word16
int8ToWord16 (I8# x) = W16# (wordToWord16# (int2Word# (int8ToInt# x)))

int8ToWord32 :: Int8 -> Word32
int8ToWord32 (I8# x) = W32# (wordToWord32# (int2Word# (int8ToInt# x)))

int8ToWord64 :: Int8 -> Word64
int8ToWord64 (I8# x) = W64# (wordToWord64# (int2Word# (int8ToInt# x)))

int8ToInt :: Int8 -> Int
int8ToInt (I8# x) = I# (int8ToInt# x)

int8ToInt16 :: Int8 -> Int16
int8ToInt16 (I8# x) = I16# (intToInt16# (int8ToInt# x))

int8ToInt32 :: Int8 -> Int32
int8ToInt32 (I8# x) = I32# (intToInt32# (int8ToInt# x))

int8ToInt64 :: Int8 -> Int64
int8ToInt64 (I8# x) = I64# (intToInt64# (int8ToInt# x))

int8ToChar :: Int8 -> Char
int8ToChar (I8# x) = C# (chr# (int8ToInt# x))

int16ToWord :: Int16 -> Word
int16ToWord (I16# x) = W# (int2Word# (int16ToInt# x))

int16ToWord8 :: Int16 -> Word8
int16ToWord8 (I16# x) = W8# (wordToWord8# (int2Word# (int16ToInt# x)))

int16ToWord16 :: Int16 -> Word16
int16ToWord16 (I16# x) = W16# (wordToWord16# (int2Word# (int16ToInt# x)))

int16ToWord32 :: Int16 -> Word32
int16ToWord32 (I16# x) = W32# (wordToWord32# (int2Word# (int16ToInt# x)))

int16ToWord64 :: Int16 -> Word64
int16ToWord64 (I16# x) = W64# (wordToWord64# (int2Word# (int16ToInt# x)))

int16ToInt :: Int16 -> Int
int16ToInt (I16# x) = I# (int16ToInt# x)

int16ToInt8 :: Int16 -> Int8
int16ToInt8 (I16# x) = I8# (intToInt8# (int16ToInt# x))

int16ToInt32 :: Int16 -> Int32
int16ToInt32 (I16# x) = I32# (intToInt32# (int16ToInt# x))

int16ToInt64 :: Int16 -> Int64
int16ToInt64 (I16# x) = I64# (intToInt64# (int16ToInt# x))

int16ToChar :: Int16 -> Char
int16ToChar (I16# x) = C# (chr# (int16ToInt# x))

int32ToWord :: Int32 -> Word
int32ToWord (I32# x) = W# (int2Word# (int32ToInt# x))

int32ToWord8 :: Int32 -> Word8
int32ToWord8 (I32# x) = W8# (wordToWord8# (int2Word# (int32ToInt# x)))

int32ToWord16 :: Int32 -> Word16
int32ToWord16 (I32# x) = W16# (wordToWord16# (int2Word# (int32ToInt# x)))

int32ToWord32 :: Int32 -> Word32
int32ToWord32 (I32# x) = W32# (wordToWord32# (int2Word# (int32ToInt# x)))

int32ToWord64 :: Int32 -> Word64
int32ToWord64 (I32# x) = W64# (wordToWord64# (int2Word# (int32ToInt# x)))

int32ToInt :: Int32 -> Int
int32ToInt (I32# x) = I# (int32ToInt# x)

int32ToInt8 :: Int32 -> Int8
int32ToInt8 (I32# x) = I8# (intToInt8# (int32ToInt# x))

int32ToInt16 :: Int32 -> Int16
int32ToInt16 (I32# x) = I16# (intToInt16# (int32ToInt# x))

int32ToInt64 :: Int32 -> Int64
int32ToInt64 (I32# x) = I64# (intToInt64# (int32ToInt# x))

int32ToChar :: Int32 -> Char
int32ToChar (I32# x) = C# (chr# (int32ToInt# x))

int64ToWord :: Int64 -> Word
int64ToWord (I64# x) = W# (int2Word# (int64ToInt# x))

int64ToWord8 :: Int64 -> Word8
int64ToWord8 (I64# x) = W8# (wordToWord8# (int2Word# (int64ToInt# x)))

int64ToWord16 :: Int64 -> Word16
int64ToWord16 (I64# x) = W16# (wordToWord16# (int2Word# (int64ToInt# x)))

int64ToWord32 :: Int64 -> Word32
int64ToWord32 (I64# x) = W32# (wordToWord32# (int2Word# (int64ToInt# x)))

int64ToWord64 :: Int64 -> Word64
int64ToWord64 (I64# x) = W64# (int64ToWord64# x)

int64ToInt :: Int64 -> Int
int64ToInt (I64# x) = I# (int64ToInt# x)

int64ToInt8 :: Int64 -> Int8
int64ToInt8 (I64# x) = I8# (intToInt8# (int64ToInt# x))

int64ToInt16 :: Int64 -> Int16
int64ToInt16 (I64# x) = I16# (intToInt16# (int64ToInt# x))

int64ToInt32 :: Int64 -> Int32
int64ToInt32 (I64# x) = I32# (intToInt32# (int64ToInt# x))

int64ToChar :: Int64 -> Char
int64ToChar (I64# x) = C# (chr# (int64ToInt# x))

charToWord :: Char -> Word
charToWord (C# x) = W# (int2Word# (ord# x))

charToWord8 :: Char -> Word8
charToWord8 (C# x) = W8# (wordToWord8# (int2Word# (ord# x)))

charToWord16 :: Char -> Word16
charToWord16 (C# x) = W16# (wordToWord16# (int2Word# (ord# x)))

charToWord32 :: Char -> Word32
charToWord32 (C# x) = W32# (wordToWord32# (int2Word# (ord# x)))

charToWord64 :: Char -> Word64
charToWord64 (C# x) = W64# (wordToWord64# (int2Word# (ord# x)))

charToInt :: Char -> Int
charToInt (C# x) = I# (ord# x)

charToInt8 :: Char -> Int8
charToInt8 (C# x) = I8# (intToInt8# (ord# x))

charToInt16 :: Char -> Int16
charToInt16 (C# x) = I16# (intToInt16# (ord# x))

charToInt32 :: Char -> Int32
charToInt32 (C# x) = I32# (intToInt32# (ord# x))

charToInt64 :: Char -> Int64
charToInt64 (C# x) = I64# (intToInt64# (ord# x))

