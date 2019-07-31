.bytecode 50.0
.class public synchronized com/hisun/b2c/api/util/EncodeUtil
.super java/lang/Object

.field static final 'BASELENGTH' I = 255


.field static final 'CHUNK_SEPARATOR' [B

.field static final 'CHUNK_SIZE' I = 76


.field static final 'EIGHTBIT' I = 8


.field static final 'FOURBYTE' I = 4


.field static final 'LOOKUPLENGTH' I = 64


.field static final 'PAD' B = 61


.field static final 'SIGN' I = -128


.field static final 'SIXTEENBIT' I = 16


.field static final 'TWENTYFOURBITGROUP' I = 24


.field private static 'base64Alphabet' [B

.field private static 'lookUpBase64Alphabet' [B

.method static <clinit>()V
ldc "\r\n"
invokevirtual java/lang/String/getBytes()[B
putstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
sipush 27599
newarray byte
putstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
bipush 64
newarray byte
putstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iconst_0
istore 0
L0:
iload 0
sipush 255
if_icmplt L1
bipush 90
istore 0
L2:
iload 0
bipush 65
if_icmpge L3
bipush 122
istore 0
L4:
iload 0
bipush 97
if_icmpge L5
bipush 57
istore 0
L6:
iload 0
bipush 48
if_icmpge L7
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
bipush 43
bipush 62
bastore
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
bipush 47
bipush 63
bastore
iconst_0
istore 0
L8:
iload 0
bipush 25
if_icmple L9
bipush 26
istore 1
iconst_0
istore 0
L10:
iload 1
bipush 51
if_icmple L11
bipush 52
istore 1
iconst_0
istore 0
L12:
iload 1
bipush 61
if_icmple L13
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
bipush 62
bipush 43
bastore
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
bipush 63
bipush 47
bastore
return
L1:
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 0
iconst_m1
bastore
iload 0
iconst_1
iadd
istore 0
goto L0
L3:
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 0
iload 0
bipush 65
isub
i2b
bastore
iload 0
iconst_1
isub
istore 0
goto L2
L5:
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 0
iload 0
bipush 97
isub
bipush 26
iadd
i2b
bastore
iload 0
iconst_1
isub
istore 0
goto L4
L7:
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 0
iload 0
bipush 48
isub
bipush 52
iadd
i2b
bastore
iload 0
iconst_1
isub
istore 0
goto L6
L9:
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 0
iload 0
bipush 65
iadd
i2b
bastore
iload 0
iconst_1
iadd
istore 0
goto L8
L11:
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 1
iload 0
bipush 97
iadd
i2b
bastore
iload 1
iconst_1
iadd
istore 1
iload 0
iconst_1
iadd
istore 0
goto L10
L13:
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 1
iload 0
bipush 48
iadd
i2b
bastore
iload 1
iconst_1
iadd
istore 1
iload 0
iconst_1
iadd
istore 0
goto L12
.limit locals 2
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static decodeBase64([B)[B
aload 0
invokestatic com/hisun/b2c/api/util/EncodeUtil/discardNonBase64([B)[B
astore 9
aload 9
arraylength
ifne L0
iconst_0
newarray byte
astore 0
L1:
aload 0
areturn
L0:
aload 9
arraylength
iconst_4
idiv
istore 4
iconst_0
istore 2
aload 9
arraylength
istore 1
L2:
aload 9
iload 1
iconst_1
isub
baload
bipush 61
if_icmpeq L3
iload 1
iload 4
isub
newarray byte
astore 8
iconst_0
istore 1
L4:
aload 8
astore 0
iload 1
iload 4
if_icmpge L1
iload 1
iconst_4
imul
istore 5
aload 9
iload 5
iconst_2
iadd
baload
istore 7
aload 9
iload 5
iconst_3
iadd
baload
istore 6
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
aload 9
iload 5
baload
baload
istore 3
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
aload 9
iload 5
iconst_1
iadd
baload
baload
istore 5
iload 7
bipush 61
if_icmpeq L5
iload 6
bipush 61
if_icmpeq L5
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 7
baload
istore 7
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 6
baload
istore 6
aload 8
iload 2
iload 3
iconst_2
ishl
iload 5
iconst_4
ishr
ior
i2b
bastore
aload 8
iload 2
iconst_1
iadd
iload 5
bipush 15
iand
iconst_4
ishl
iload 7
iconst_2
ishr
bipush 15
iand
ior
i2b
bastore
aload 8
iload 2
iconst_2
iadd
iload 7
bipush 6
ishl
iload 6
ior
i2b
bastore
L6:
iload 2
iconst_3
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L4
L3:
iload 1
iconst_1
isub
istore 3
iload 3
istore 1
iload 3
ifne L2
iconst_0
newarray byte
areturn
L5:
iload 7
bipush 61
if_icmpne L7
aload 8
iload 2
iload 3
iconst_2
ishl
iload 5
iconst_4
ishr
ior
i2b
bastore
goto L6
L7:
iload 6
bipush 61
if_icmpne L6
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 7
baload
istore 6
aload 8
iload 2
iload 3
iconst_2
ishl
iload 5
iconst_4
ishr
ior
i2b
bastore
aload 8
iload 2
iconst_1
iadd
iload 5
bipush 15
iand
iconst_4
ishl
iload 6
iconst_2
ishr
bipush 15
iand
ior
i2b
bastore
goto L6
.limit locals 10
.limit stack 5
.end method

.method static discardNonBase64([B)[B
aload 0
arraylength
newarray byte
astore 4
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmplt L1
iload 2
newarray byte
astore 0
aload 4
iconst_0
aload 0
iconst_0
iload 2
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
areturn
L1:
iload 2
istore 3
aload 0
iload 1
baload
invokestatic com/hisun/b2c/api/util/EncodeUtil/isBase64(B)Z
ifeq L2
aload 4
iload 2
aload 0
iload 1
baload
bastore
iload 2
iconst_1
iadd
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 5
.limit stack 5
.end method

.method static discardWhitespace([B)[B
aload 0
arraylength
newarray byte
astore 4
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmplt L1
iload 2
newarray byte
astore 0
aload 4
iconst_0
aload 0
iconst_0
iload 2
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
areturn
L1:
iload 2
istore 3
aload 0
iload 1
baload
lookupswitch
9 : L2
10 : L2
13 : L2
32 : L2
default : L3
L3:
aload 4
iload 2
aload 0
iload 1
baload
bastore
iload 2
iconst_1
iadd
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 5
.limit stack 5
.end method

.method public static encodeBase64([B)[B
aload 0
iconst_0
invokestatic com/hisun/b2c/api/util/EncodeUtil/encodeBase64([BZ)[B
areturn
.limit locals 1
.limit stack 2
.end method

.method public static encodeBase64([BZ)[B
aload 0
arraylength
bipush 8
imul
istore 2
iload 2
bipush 24
irem
istore 11
iload 2
bipush 24
idiv
istore 12
iconst_0
istore 4
iload 11
ifeq L0
iload 12
iconst_1
iadd
iconst_4
imul
istore 2
L1:
iload 2
istore 3
iload 1
ifeq L2
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
ifne L3
iconst_0
istore 3
L4:
iload 2
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
iload 3
imul
iadd
istore 2
iload 3
istore 4
iload 2
istore 3
L2:
iload 3
newarray byte
astore 16
iconst_0
istore 2
bipush 76
istore 7
iconst_0
istore 5
iconst_0
istore 6
L5:
iload 6
iload 12
if_icmplt L6
iload 6
iconst_3
imul
istore 7
iload 11
bipush 8
if_icmpne L7
aload 0
iload 7
baload
istore 6
iload 6
iconst_3
iand
i2b
istore 7
iload 6
bipush -128
iand
ifne L8
iload 6
iconst_2
ishr
i2b
istore 6
L9:
aload 16
iload 2
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 6
baload
bastore
aload 16
iload 2
iconst_1
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 7
iconst_4
ishl
baload
bastore
aload 16
iload 2
iconst_2
iadd
bipush 61
bastore
aload 16
iload 2
iconst_3
iadd
bipush 61
bastore
L10:
iload 1
ifeq L11
iload 5
iload 4
if_icmpge L11
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
iconst_0
aload 16
iload 3
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
isub
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L11:
aload 16
areturn
L0:
iload 12
iconst_4
imul
istore 2
goto L1
L3:
iload 2
i2f
ldc_w 76.0F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 3
goto L4
L6:
iload 6
iconst_3
imul
istore 10
aload 0
iload 10
baload
istore 8
aload 0
iload 10
iconst_1
iadd
baload
istore 9
aload 0
iload 10
iconst_2
iadd
baload
istore 13
iload 9
bipush 15
iand
i2b
istore 14
iload 8
iconst_3
iand
i2b
istore 15
iload 8
bipush -128
iand
ifne L12
iload 8
iconst_2
ishr
i2b
istore 8
L13:
iload 9
bipush -128
iand
ifne L14
iload 9
iconst_4
ishr
i2b
istore 9
L15:
iload 13
bipush -128
iand
ifne L16
iload 13
bipush 6
ishr
i2b
istore 10
L17:
aload 16
iload 2
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 8
baload
bastore
aload 16
iload 2
iconst_1
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 15
iconst_4
ishl
iload 9
ior
baload
bastore
aload 16
iload 2
iconst_2
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 14
iconst_2
ishl
iload 10
ior
baload
bastore
aload 16
iload 2
iconst_3
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 13
bipush 63
iand
baload
bastore
iload 2
iconst_4
iadd
istore 10
iload 1
ifne L18
iload 7
istore 9
iload 10
istore 2
iload 5
istore 8
L19:
iload 6
iconst_1
iadd
istore 6
iload 8
istore 5
iload 9
istore 7
goto L5
L12:
iload 8
iconst_2
ishr
sipush 192
ixor
i2b
istore 8
goto L13
L14:
iload 9
iconst_4
ishr
sipush 240
ixor
i2b
istore 9
goto L15
L16:
iload 13
bipush 6
ishr
sipush 252
ixor
i2b
istore 10
goto L17
L18:
iload 5
istore 8
iload 10
istore 2
iload 7
istore 9
iload 10
iload 7
if_icmpne L19
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
iconst_0
aload 16
iload 10
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iload 5
iconst_1
iadd
istore 8
iload 8
iconst_1
iadd
bipush 76
imul
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
iload 8
imul
iadd
istore 9
iload 10
getstatic com/hisun/b2c/api/util/EncodeUtil/CHUNK_SEPARATOR [B
arraylength
iadd
istore 2
goto L19
L8:
iload 6
iconst_2
ishr
sipush 192
ixor
i2b
istore 6
goto L9
L7:
iload 11
bipush 16
if_icmpne L10
aload 0
iload 7
baload
istore 6
aload 0
iload 7
iconst_1
iadd
baload
istore 7
iload 7
bipush 15
iand
i2b
istore 8
iload 6
iconst_3
iand
i2b
istore 9
iload 6
bipush -128
iand
ifne L20
iload 6
iconst_2
ishr
i2b
istore 6
L21:
iload 7
bipush -128
iand
ifne L22
iload 7
iconst_4
ishr
i2b
istore 7
L23:
aload 16
iload 2
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 6
baload
bastore
aload 16
iload 2
iconst_1
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 9
iconst_4
ishl
iload 7
ior
baload
bastore
aload 16
iload 2
iconst_2
iadd
getstatic com/hisun/b2c/api/util/EncodeUtil/lookUpBase64Alphabet [B
iload 8
iconst_2
ishl
baload
bastore
aload 16
iload 2
iconst_3
iadd
bipush 61
bastore
goto L10
L20:
iload 6
iconst_2
ishr
sipush 192
ixor
i2b
istore 6
goto L21
L22:
iload 7
iconst_4
ishr
sipush 240
ixor
i2b
istore 7
goto L23
.limit locals 17
.limit stack 5
.end method

.method public static encodeBase64Chunked([B)[B
aload 0
iconst_1
invokestatic com/hisun/b2c/api/util/EncodeUtil/encodeBase64([BZ)[B
areturn
.limit locals 1
.limit stack 2
.end method

.method public static isArrayByteBase64([B)Z
aload 0
invokestatic com/hisun/b2c/api/util/EncodeUtil/discardWhitespace([B)[B
astore 0
aload 0
arraylength
istore 2
iload 2
ifne L0
L1:
iconst_1
ireturn
L0:
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
baload
invokestatic com/hisun/b2c/api/util/EncodeUtil/isBase64(B)Z
ifne L3
iconst_0
ireturn
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 2
.end method

.method private static isBase64(B)Z
iload 0
bipush 61
if_icmpne L0
L1:
iconst_1
ireturn
L0:
getstatic com/hisun/b2c/api/util/EncodeUtil/base64Alphabet [B
iload 0
baload
iconst_m1
if_icmpne L1
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public decode([B)[B
aload 1
invokestatic com/hisun/b2c/api/util/EncodeUtil/decodeBase64([B)[B
areturn
.limit locals 2
.limit stack 1
.end method

.method public encode([B)[B
aload 1
iconst_0
invokestatic com/hisun/b2c/api/util/EncodeUtil/encodeBase64([BZ)[B
areturn
.limit locals 2
.limit stack 2
.end method
