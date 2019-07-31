.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/CharTypes
.super java/lang/Object

.field public static final 'ASCII_CHARS' [C

.field public static final 'digits' [C

.field public static final 'firstIdentifierFlags' [Z

.field public static final 'identifierFlags' [Z

.field public static final 'replaceChars' [C

.field public static final 'specicalFlags_doubleQuotes' [B

.field public static final 'specicalFlags_singleQuotes' [B

.method static <clinit>()V
bipush 16
newarray char
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 49
castore
dup
iconst_2
ldc_w 50
castore
dup
iconst_3
ldc_w 51
castore
dup
iconst_4
ldc_w 52
castore
dup
iconst_5
ldc_w 53
castore
dup
bipush 6
ldc_w 54
castore
dup
bipush 7
ldc_w 55
castore
dup
bipush 8
ldc_w 56
castore
dup
bipush 9
ldc_w 57
castore
dup
bipush 10
ldc_w 65
castore
dup
bipush 11
ldc_w 66
castore
dup
bipush 12
ldc_w 67
castore
dup
bipush 13
ldc_w 68
castore
dup
bipush 14
ldc_w 69
castore
dup
bipush 15
ldc_w 70
castore
putstatic com/alibaba/fastjson/parser/CharTypes/digits [C
sipush 256
newarray boolean
putstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
iconst_0
istore 0
L0:
iload 0
getstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
arraylength
if_icmpge L1
iload 0
bipush 65
if_icmplt L2
iload 0
bipush 90
if_icmpgt L2
getstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
iload 0
iconst_1
bastore
L3:
iload 0
iconst_1
iadd
i2c
istore 0
goto L0
L2:
iload 0
bipush 97
if_icmplt L4
iload 0
bipush 122
if_icmpgt L4
getstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
iload 0
iconst_1
bastore
goto L3
L4:
iload 0
bipush 95
if_icmpne L3
getstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
iload 0
iconst_1
bastore
goto L3
L1:
sipush 256
newarray boolean
putstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
iconst_0
istore 0
L5:
iload 0
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
arraylength
if_icmpge L6
iload 0
bipush 65
if_icmplt L7
iload 0
bipush 90
if_icmpgt L7
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
iload 0
iconst_1
bastore
L8:
iload 0
iconst_1
iadd
i2c
istore 0
goto L5
L7:
iload 0
bipush 97
if_icmplt L9
iload 0
bipush 122
if_icmpgt L9
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
iload 0
iconst_1
bastore
goto L8
L9:
iload 0
bipush 95
if_icmpne L10
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
iload 0
iconst_1
bastore
goto L8
L10:
iload 0
bipush 48
if_icmplt L8
iload 0
bipush 57
if_icmpgt L8
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
iload 0
iconst_1
bastore
goto L8
L6:
sipush 256
newarray byte
putstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
sipush 256
newarray byte
putstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
sipush 128
newarray char
putstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_0
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_1
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_2
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_3
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_4
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iconst_5
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 6
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 7
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 8
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 9
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 10
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 11
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 12
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 13
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 34
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
bipush 92
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_0
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_1
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_2
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_3
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_4
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iconst_5
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 6
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 7
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 8
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 9
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 10
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 11
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 12
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 13
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 14
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 15
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 16
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 17
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 18
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 19
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 20
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 21
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 22
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 23
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 24
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 25
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 32
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 92
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
bipush 39
iconst_1
bastore
bipush 127
istore 0
L11:
iload 0
sipush 160
if_icmpgt L12
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 0
iconst_4
bastore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
iload 0
iconst_4
bastore
iload 0
iconst_1
iadd
istore 0
goto L11
L12:
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_0
bipush 48
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_1
bipush 49
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_2
bipush 50
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_3
bipush 51
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_4
bipush 52
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iconst_5
bipush 53
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 6
bipush 54
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 7
bipush 55
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 8
bipush 98
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 9
bipush 116
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 10
bipush 110
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 11
bipush 118
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 12
bipush 102
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 13
bipush 114
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 34
bipush 34
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 39
bipush 39
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 47
bipush 47
castore
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
bipush 92
bipush 92
castore
bipush 96
newarray char
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 48
castore
dup
iconst_2
ldc_w 48
castore
dup
iconst_3
ldc_w 49
castore
dup
iconst_4
ldc_w 48
castore
dup
iconst_5
ldc_w 50
castore
dup
bipush 6
ldc_w 48
castore
dup
bipush 7
ldc_w 51
castore
dup
bipush 8
ldc_w 48
castore
dup
bipush 9
ldc_w 52
castore
dup
bipush 10
ldc_w 48
castore
dup
bipush 11
ldc_w 53
castore
dup
bipush 12
ldc_w 48
castore
dup
bipush 13
ldc_w 54
castore
dup
bipush 14
ldc_w 48
castore
dup
bipush 15
ldc_w 55
castore
dup
bipush 16
ldc_w 48
castore
dup
bipush 17
ldc_w 56
castore
dup
bipush 18
ldc_w 48
castore
dup
bipush 19
ldc_w 57
castore
dup
bipush 20
ldc_w 48
castore
dup
bipush 21
ldc_w 65
castore
dup
bipush 22
ldc_w 48
castore
dup
bipush 23
ldc_w 66
castore
dup
bipush 24
ldc_w 48
castore
dup
bipush 25
ldc_w 67
castore
dup
bipush 26
ldc_w 48
castore
dup
bipush 27
ldc_w 68
castore
dup
bipush 28
ldc_w 48
castore
dup
bipush 29
ldc_w 69
castore
dup
bipush 30
ldc_w 48
castore
dup
bipush 31
ldc_w 70
castore
dup
bipush 32
ldc_w 49
castore
dup
bipush 33
ldc_w 48
castore
dup
bipush 34
ldc_w 49
castore
dup
bipush 35
ldc_w 49
castore
dup
bipush 36
ldc_w 49
castore
dup
bipush 37
ldc_w 50
castore
dup
bipush 38
ldc_w 49
castore
dup
bipush 39
ldc_w 51
castore
dup
bipush 40
ldc_w 49
castore
dup
bipush 41
ldc_w 52
castore
dup
bipush 42
ldc_w 49
castore
dup
bipush 43
ldc_w 53
castore
dup
bipush 44
ldc_w 49
castore
dup
bipush 45
ldc_w 54
castore
dup
bipush 46
ldc_w 49
castore
dup
bipush 47
ldc_w 55
castore
dup
bipush 48
ldc_w 49
castore
dup
bipush 49
ldc_w 56
castore
dup
bipush 50
ldc_w 49
castore
dup
bipush 51
ldc_w 57
castore
dup
bipush 52
ldc_w 49
castore
dup
bipush 53
ldc_w 65
castore
dup
bipush 54
ldc_w 49
castore
dup
bipush 55
ldc_w 66
castore
dup
bipush 56
ldc_w 49
castore
dup
bipush 57
ldc_w 67
castore
dup
bipush 58
ldc_w 49
castore
dup
bipush 59
ldc_w 68
castore
dup
bipush 60
ldc_w 49
castore
dup
bipush 61
ldc_w 69
castore
dup
bipush 62
ldc_w 49
castore
dup
bipush 63
ldc_w 70
castore
dup
bipush 64
ldc_w 50
castore
dup
bipush 65
ldc_w 48
castore
dup
bipush 66
ldc_w 50
castore
dup
bipush 67
ldc_w 49
castore
dup
bipush 68
ldc_w 50
castore
dup
bipush 69
ldc_w 50
castore
dup
bipush 70
ldc_w 50
castore
dup
bipush 71
ldc_w 51
castore
dup
bipush 72
ldc_w 50
castore
dup
bipush 73
ldc_w 52
castore
dup
bipush 74
ldc_w 50
castore
dup
bipush 75
ldc_w 53
castore
dup
bipush 76
ldc_w 50
castore
dup
bipush 77
ldc_w 54
castore
dup
bipush 78
ldc_w 50
castore
dup
bipush 79
ldc_w 55
castore
dup
bipush 80
ldc_w 50
castore
dup
bipush 81
ldc_w 56
castore
dup
bipush 82
ldc_w 50
castore
dup
bipush 83
ldc_w 57
castore
dup
bipush 84
ldc_w 50
castore
dup
bipush 85
ldc_w 65
castore
dup
bipush 86
ldc_w 50
castore
dup
bipush 87
ldc_w 66
castore
dup
bipush 88
ldc_w 50
castore
dup
bipush 89
ldc_w 67
castore
dup
bipush 90
ldc_w 50
castore
dup
bipush 91
ldc_w 68
castore
dup
bipush 92
ldc_w 50
castore
dup
bipush 93
ldc_w 69
castore
dup
bipush 94
ldc_w 50
castore
dup
bipush 95
ldc_w 70
castore
putstatic com/alibaba/fastjson/parser/CharTypes/ASCII_CHARS [C
return
.limit locals 1
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
