.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/IOUtils
.super java/lang/Object

.field static final 'DigitOnes' [C

.field static final 'DigitTens' [C

.field static final 'digits' [C

.field static final 'sizeTable' [I

.method static <clinit>()V
bipush 36
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
ldc_w 97
castore
dup
bipush 11
ldc_w 98
castore
dup
bipush 12
ldc_w 99
castore
dup
bipush 13
ldc_w 100
castore
dup
bipush 14
ldc_w 101
castore
dup
bipush 15
ldc_w 102
castore
dup
bipush 16
ldc_w 103
castore
dup
bipush 17
ldc_w 104
castore
dup
bipush 18
ldc_w 105
castore
dup
bipush 19
ldc_w 106
castore
dup
bipush 20
ldc_w 107
castore
dup
bipush 21
ldc_w 108
castore
dup
bipush 22
ldc_w 109
castore
dup
bipush 23
ldc_w 110
castore
dup
bipush 24
ldc_w 111
castore
dup
bipush 25
ldc_w 112
castore
dup
bipush 26
ldc_w 113
castore
dup
bipush 27
ldc_w 114
castore
dup
bipush 28
ldc_w 115
castore
dup
bipush 29
ldc_w 116
castore
dup
bipush 30
ldc_w 117
castore
dup
bipush 31
ldc_w 118
castore
dup
bipush 32
ldc_w 119
castore
dup
bipush 33
ldc_w 120
castore
dup
bipush 34
ldc_w 121
castore
dup
bipush 35
ldc_w 122
castore
putstatic com/alibaba/fastjson/util/IOUtils/digits [C
bipush 100
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
ldc_w 48
castore
dup
iconst_4
ldc_w 48
castore
dup
iconst_5
ldc_w 48
castore
dup
bipush 6
ldc_w 48
castore
dup
bipush 7
ldc_w 48
castore
dup
bipush 8
ldc_w 48
castore
dup
bipush 9
ldc_w 48
castore
dup
bipush 10
ldc_w 49
castore
dup
bipush 11
ldc_w 49
castore
dup
bipush 12
ldc_w 49
castore
dup
bipush 13
ldc_w 49
castore
dup
bipush 14
ldc_w 49
castore
dup
bipush 15
ldc_w 49
castore
dup
bipush 16
ldc_w 49
castore
dup
bipush 17
ldc_w 49
castore
dup
bipush 18
ldc_w 49
castore
dup
bipush 19
ldc_w 49
castore
dup
bipush 20
ldc_w 50
castore
dup
bipush 21
ldc_w 50
castore
dup
bipush 22
ldc_w 50
castore
dup
bipush 23
ldc_w 50
castore
dup
bipush 24
ldc_w 50
castore
dup
bipush 25
ldc_w 50
castore
dup
bipush 26
ldc_w 50
castore
dup
bipush 27
ldc_w 50
castore
dup
bipush 28
ldc_w 50
castore
dup
bipush 29
ldc_w 50
castore
dup
bipush 30
ldc_w 51
castore
dup
bipush 31
ldc_w 51
castore
dup
bipush 32
ldc_w 51
castore
dup
bipush 33
ldc_w 51
castore
dup
bipush 34
ldc_w 51
castore
dup
bipush 35
ldc_w 51
castore
dup
bipush 36
ldc_w 51
castore
dup
bipush 37
ldc_w 51
castore
dup
bipush 38
ldc_w 51
castore
dup
bipush 39
ldc_w 51
castore
dup
bipush 40
ldc_w 52
castore
dup
bipush 41
ldc_w 52
castore
dup
bipush 42
ldc_w 52
castore
dup
bipush 43
ldc_w 52
castore
dup
bipush 44
ldc_w 52
castore
dup
bipush 45
ldc_w 52
castore
dup
bipush 46
ldc_w 52
castore
dup
bipush 47
ldc_w 52
castore
dup
bipush 48
ldc_w 52
castore
dup
bipush 49
ldc_w 52
castore
dup
bipush 50
ldc_w 53
castore
dup
bipush 51
ldc_w 53
castore
dup
bipush 52
ldc_w 53
castore
dup
bipush 53
ldc_w 53
castore
dup
bipush 54
ldc_w 53
castore
dup
bipush 55
ldc_w 53
castore
dup
bipush 56
ldc_w 53
castore
dup
bipush 57
ldc_w 53
castore
dup
bipush 58
ldc_w 53
castore
dup
bipush 59
ldc_w 53
castore
dup
bipush 60
ldc_w 54
castore
dup
bipush 61
ldc_w 54
castore
dup
bipush 62
ldc_w 54
castore
dup
bipush 63
ldc_w 54
castore
dup
bipush 64
ldc_w 54
castore
dup
bipush 65
ldc_w 54
castore
dup
bipush 66
ldc_w 54
castore
dup
bipush 67
ldc_w 54
castore
dup
bipush 68
ldc_w 54
castore
dup
bipush 69
ldc_w 54
castore
dup
bipush 70
ldc_w 55
castore
dup
bipush 71
ldc_w 55
castore
dup
bipush 72
ldc_w 55
castore
dup
bipush 73
ldc_w 55
castore
dup
bipush 74
ldc_w 55
castore
dup
bipush 75
ldc_w 55
castore
dup
bipush 76
ldc_w 55
castore
dup
bipush 77
ldc_w 55
castore
dup
bipush 78
ldc_w 55
castore
dup
bipush 79
ldc_w 55
castore
dup
bipush 80
ldc_w 56
castore
dup
bipush 81
ldc_w 56
castore
dup
bipush 82
ldc_w 56
castore
dup
bipush 83
ldc_w 56
castore
dup
bipush 84
ldc_w 56
castore
dup
bipush 85
ldc_w 56
castore
dup
bipush 86
ldc_w 56
castore
dup
bipush 87
ldc_w 56
castore
dup
bipush 88
ldc_w 56
castore
dup
bipush 89
ldc_w 56
castore
dup
bipush 90
ldc_w 57
castore
dup
bipush 91
ldc_w 57
castore
dup
bipush 92
ldc_w 57
castore
dup
bipush 93
ldc_w 57
castore
dup
bipush 94
ldc_w 57
castore
dup
bipush 95
ldc_w 57
castore
dup
bipush 96
ldc_w 57
castore
dup
bipush 97
ldc_w 57
castore
dup
bipush 98
ldc_w 57
castore
dup
bipush 99
ldc_w 57
castore
putstatic com/alibaba/fastjson/util/IOUtils/DigitTens [C
bipush 100
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
ldc_w 48
castore
dup
bipush 11
ldc_w 49
castore
dup
bipush 12
ldc_w 50
castore
dup
bipush 13
ldc_w 51
castore
dup
bipush 14
ldc_w 52
castore
dup
bipush 15
ldc_w 53
castore
dup
bipush 16
ldc_w 54
castore
dup
bipush 17
ldc_w 55
castore
dup
bipush 18
ldc_w 56
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
ldc_w 49
castore
dup
bipush 22
ldc_w 50
castore
dup
bipush 23
ldc_w 51
castore
dup
bipush 24
ldc_w 52
castore
dup
bipush 25
ldc_w 53
castore
dup
bipush 26
ldc_w 54
castore
dup
bipush 27
ldc_w 55
castore
dup
bipush 28
ldc_w 56
castore
dup
bipush 29
ldc_w 57
castore
dup
bipush 30
ldc_w 48
castore
dup
bipush 31
ldc_w 49
castore
dup
bipush 32
ldc_w 50
castore
dup
bipush 33
ldc_w 51
castore
dup
bipush 34
ldc_w 52
castore
dup
bipush 35
ldc_w 53
castore
dup
bipush 36
ldc_w 54
castore
dup
bipush 37
ldc_w 55
castore
dup
bipush 38
ldc_w 56
castore
dup
bipush 39
ldc_w 57
castore
dup
bipush 40
ldc_w 48
castore
dup
bipush 41
ldc_w 49
castore
dup
bipush 42
ldc_w 50
castore
dup
bipush 43
ldc_w 51
castore
dup
bipush 44
ldc_w 52
castore
dup
bipush 45
ldc_w 53
castore
dup
bipush 46
ldc_w 54
castore
dup
bipush 47
ldc_w 55
castore
dup
bipush 48
ldc_w 56
castore
dup
bipush 49
ldc_w 57
castore
dup
bipush 50
ldc_w 48
castore
dup
bipush 51
ldc_w 49
castore
dup
bipush 52
ldc_w 50
castore
dup
bipush 53
ldc_w 51
castore
dup
bipush 54
ldc_w 52
castore
dup
bipush 55
ldc_w 53
castore
dup
bipush 56
ldc_w 54
castore
dup
bipush 57
ldc_w 55
castore
dup
bipush 58
ldc_w 56
castore
dup
bipush 59
ldc_w 57
castore
dup
bipush 60
ldc_w 48
castore
dup
bipush 61
ldc_w 49
castore
dup
bipush 62
ldc_w 50
castore
dup
bipush 63
ldc_w 51
castore
dup
bipush 64
ldc_w 52
castore
dup
bipush 65
ldc_w 53
castore
dup
bipush 66
ldc_w 54
castore
dup
bipush 67
ldc_w 55
castore
dup
bipush 68
ldc_w 56
castore
dup
bipush 69
ldc_w 57
castore
dup
bipush 70
ldc_w 48
castore
dup
bipush 71
ldc_w 49
castore
dup
bipush 72
ldc_w 50
castore
dup
bipush 73
ldc_w 51
castore
dup
bipush 74
ldc_w 52
castore
dup
bipush 75
ldc_w 53
castore
dup
bipush 76
ldc_w 54
castore
dup
bipush 77
ldc_w 55
castore
dup
bipush 78
ldc_w 56
castore
dup
bipush 79
ldc_w 57
castore
dup
bipush 80
ldc_w 48
castore
dup
bipush 81
ldc_w 49
castore
dup
bipush 82
ldc_w 50
castore
dup
bipush 83
ldc_w 51
castore
dup
bipush 84
ldc_w 52
castore
dup
bipush 85
ldc_w 53
castore
dup
bipush 86
ldc_w 54
castore
dup
bipush 87
ldc_w 55
castore
dup
bipush 88
ldc_w 56
castore
dup
bipush 89
ldc_w 57
castore
dup
bipush 90
ldc_w 48
castore
dup
bipush 91
ldc_w 49
castore
dup
bipush 92
ldc_w 50
castore
dup
bipush 93
ldc_w 51
castore
dup
bipush 94
ldc_w 52
castore
dup
bipush 95
ldc_w 53
castore
dup
bipush 96
ldc_w 54
castore
dup
bipush 97
ldc_w 55
castore
dup
bipush 98
ldc_w 56
castore
dup
bipush 99
ldc_w 57
castore
putstatic com/alibaba/fastjson/util/IOUtils/DigitOnes [C
bipush 10
newarray int
dup
iconst_0
bipush 9
iastore
dup
iconst_1
bipush 99
iastore
dup
iconst_2
sipush 999
iastore
dup
iconst_3
sipush 9999
iastore
dup
iconst_4
ldc_w 99999
iastore
dup
iconst_5
ldc_w 999999
iastore
dup
bipush 6
ldc_w 9999999
iastore
dup
bipush 7
ldc_w 99999999
iastore
dup
bipush 8
ldc_w 999999999
iastore
dup
bipush 9
ldc_w 2147483647
iastore
putstatic com/alibaba/fastjson/util/IOUtils/sizeTable [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static close(Ljava/io/Closeable;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
return
.limit locals 1
.limit stack 1
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
.catch java/nio/charset/CharacterCodingException from L0 to L1 using L2
.catch java/nio/charset/CharacterCodingException from L1 to L3 using L2
L0:
aload 0
aload 1
aload 2
iconst_1
invokevirtual java/nio/charset/CharsetDecoder/decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
astore 1
aload 1
invokevirtual java/nio/charset/CoderResult/isUnderflow()Z
ifne L1
aload 1
invokevirtual java/nio/charset/CoderResult/throwException()V
L1:
aload 0
aload 2
invokevirtual java/nio/charset/CharsetDecoder/flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
astore 0
aload 0
invokevirtual java/nio/charset/CoderResult/isUnderflow()Z
ifne L3
aload 0
invokevirtual java/nio/charset/CoderResult/throwException()V
L3:
return
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
aload 0
invokevirtual java/nio/charset/CharacterCodingException/getMessage()Ljava/lang/String;
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public static getChars(BI[C)V
iload 0
istore 4
iload 1
istore 5
iconst_0
istore 3
iload 5
istore 1
iload 4
istore 0
iload 4
ifge L0
bipush 45
istore 3
iload 4
ineg
istore 0
iload 5
istore 1
L0:
ldc_w 52429
iload 0
imul
bipush 19
iushr
istore 4
iload 1
iconst_1
isub
istore 5
aload 2
iload 5
getstatic com/alibaba/fastjson/util/IOUtils/digits [C
iload 0
iload 4
iconst_3
ishl
iload 4
iconst_1
ishl
iadd
isub
caload
castore
iload 5
istore 1
iload 4
istore 0
iload 4
ifne L0
iload 3
ifeq L1
aload 2
iload 5
iconst_1
isub
iload 3
castore
L1:
return
.limit locals 6
.limit stack 7
.end method

.method public static getChars(II[C)V
iload 1
istore 5
iconst_0
istore 3
iload 5
istore 4
iload 0
istore 1
iload 0
ifge L0
bipush 45
istore 3
iload 0
ineg
istore 1
iload 5
istore 4
L0:
iload 4
istore 0
iload 1
istore 5
iload 1
ldc_w 65536
if_icmplt L1
iload 1
bipush 100
idiv
istore 0
iload 1
iload 0
bipush 6
ishl
iload 0
iconst_5
ishl
iadd
iload 0
iconst_2
ishl
iadd
isub
istore 5
iload 0
istore 1
iload 4
iconst_1
isub
istore 0
aload 2
iload 0
getstatic com/alibaba/fastjson/util/IOUtils/DigitOnes [C
iload 5
caload
castore
iload 0
iconst_1
isub
istore 4
aload 2
iload 4
getstatic com/alibaba/fastjson/util/IOUtils/DigitTens [C
iload 5
caload
castore
goto L0
L1:
ldc_w 52429
iload 5
imul
bipush 19
iushr
istore 1
iload 0
iconst_1
isub
istore 4
aload 2
iload 4
getstatic com/alibaba/fastjson/util/IOUtils/digits [C
iload 5
iload 1
iconst_3
ishl
iload 1
iconst_1
ishl
iadd
isub
caload
castore
iload 4
istore 0
iload 1
istore 5
iload 1
ifne L1
iload 3
ifeq L2
aload 2
iload 4
iconst_1
isub
iload 3
castore
L2:
return
.limit locals 6
.limit stack 7
.end method

.method public static getChars(JI[C)V
iload 2
istore 5
iconst_0
istore 4
iload 5
istore 2
lload 0
lstore 8
lload 0
lconst_0
lcmp
ifge L0
bipush 45
istore 4
lload 0
lneg
lstore 8
iload 5
istore 2
L0:
lload 8
ldc2_w 2147483647L
lcmp
ifle L1
lload 8
ldc2_w 100L
ldiv
lstore 0
lload 8
lload 0
bipush 6
lshl
lload 0
iconst_5
lshl
ladd
lload 0
iconst_2
lshl
ladd
lsub
l2i
istore 5
lload 0
lstore 8
iload 2
iconst_1
isub
istore 2
aload 3
iload 2
getstatic com/alibaba/fastjson/util/IOUtils/DigitOnes [C
iload 5
caload
castore
iload 2
iconst_1
isub
istore 2
aload 3
iload 2
getstatic com/alibaba/fastjson/util/IOUtils/DigitTens [C
iload 5
caload
castore
goto L0
L1:
lload 8
l2i
istore 5
L2:
iload 2
istore 6
iload 5
istore 7
iload 5
ldc_w 65536
if_icmplt L3
iload 5
bipush 100
idiv
istore 6
iload 5
iload 6
bipush 6
ishl
iload 6
iconst_5
ishl
iadd
iload 6
iconst_2
ishl
iadd
isub
istore 7
iload 6
istore 5
iload 2
iconst_1
isub
istore 2
aload 3
iload 2
getstatic com/alibaba/fastjson/util/IOUtils/DigitOnes [C
iload 7
caload
castore
iload 2
iconst_1
isub
istore 2
aload 3
iload 2
getstatic com/alibaba/fastjson/util/IOUtils/DigitTens [C
iload 7
caload
castore
goto L2
L3:
ldc_w 52429
iload 7
imul
bipush 19
iushr
istore 2
iload 6
iconst_1
isub
istore 5
aload 3
iload 5
getstatic com/alibaba/fastjson/util/IOUtils/digits [C
iload 7
iload 2
iconst_3
ishl
iload 2
iconst_1
ishl
iadd
isub
caload
castore
iload 5
istore 6
iload 2
istore 7
iload 2
ifne L3
iload 4
ifeq L4
aload 3
iload 5
iconst_1
isub
iload 4
castore
L4:
return
.limit locals 10
.limit stack 7
.end method

.method public static stringSize(I)I
iconst_0
istore 1
L0:
iload 0
getstatic com/alibaba/fastjson/util/IOUtils/sizeTable [I
iload 1
iaload
if_icmpgt L1
iload 1
iconst_1
iadd
ireturn
L1:
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 2
.limit stack 3
.end method

.method public static stringSize(J)I
ldc2_w 10L
lstore 3
iconst_1
istore 2
L0:
iload 2
bipush 19
if_icmpge L1
lload 0
lload 3
lcmp
ifge L2
iload 2
ireturn
L2:
lload 3
ldc2_w 10L
lmul
lstore 3
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
bipush 19
ireturn
.limit locals 5
.limit stack 4
.end method
