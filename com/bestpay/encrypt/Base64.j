.bytecode 50.0
.class public final synchronized com/bestpay/encrypt/Base64
.super java/lang/Object

.field private static final 'BASELENGTH' I = 128


.field private static final 'EIGHTBIT' I = 8


.field private static final 'FOURBYTE' I = 4


.field private static final 'LOOKUPLENGTH' I = 64


.field private static final 'PAD' C = 61


.field private static final 'SIGN' I = -128


.field private static final 'SIXTEENBIT' I = 16


.field private static final 'TWENTYFOURBITGROUP' I = 24


.field private static final 'base64Alphabet' [B

.field private static final 'fDebug' Z = 0


.field private static final 'lookUpBase64Alphabet' [C

.method static <clinit>()V
sipush 128
newarray byte
putstatic com/bestpay/encrypt/Base64/base64Alphabet [B
bipush 64
newarray char
putstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iconst_0
istore 0
L0:
iload 0
sipush 128
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
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
bipush 43
bipush 62
bastore
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
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
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
bipush 62
bipush 43
castore
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
bipush 63
bipush 47
castore
return
L1:
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 0
iconst_m1
bastore
iload 0
iconst_1
iadd
istore 0
goto L0
L3:
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
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
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
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
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
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
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 0
iload 0
bipush 65
iadd
i2c
castore
iload 0
iconst_1
iadd
istore 0
goto L8
L11:
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 1
iload 0
bipush 97
iadd
i2c
castore
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
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 1
iload 0
bipush 48
iadd
i2c
castore
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

.method public static decode(Ljava/lang/String;)[B
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/String/toCharArray()[C
astore 14
aload 14
invokestatic com/bestpay/encrypt/Base64/removeWhiteSpace([C)I
istore 5
iload 5
iconst_4
irem
ifeq L1
aconst_null
areturn
L1:
iload 5
iconst_4
idiv
istore 9
iload 9
ifne L2
iconst_0
newarray byte
areturn
L2:
iconst_0
istore 6
iload 9
iconst_3
imul
newarray byte
astore 0
iconst_0
istore 7
iconst_0
istore 5
L3:
iload 6
iload 9
iconst_1
isub
if_icmplt L4
iload 7
iconst_1
iadd
istore 8
aload 14
iload 7
caload
istore 1
iload 1
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifeq L5
iload 8
iconst_1
iadd
istore 9
aload 14
iload 8
caload
istore 2
iload 2
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifne L6
L5:
aconst_null
areturn
L4:
iload 7
iconst_1
iadd
istore 10
aload 14
iload 7
caload
istore 1
iload 1
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifeq L7
iload 10
iconst_1
iadd
istore 8
aload 14
iload 10
caload
istore 2
iload 8
istore 7
iload 2
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifeq L7
iload 8
iconst_1
iadd
istore 10
aload 14
iload 8
caload
istore 3
iload 3
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifeq L7
iload 10
iconst_1
iadd
istore 7
aload 14
iload 10
caload
istore 4
iload 4
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifne L8
L7:
aconst_null
areturn
L8:
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 1
baload
istore 13
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 2
baload
istore 8
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 3
baload
istore 10
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 4
baload
istore 11
iload 5
iconst_1
iadd
istore 12
aload 0
iload 5
iload 13
iconst_2
ishl
iload 8
iconst_4
ishr
ior
i2b
bastore
iload 12
iconst_1
iadd
istore 5
aload 0
iload 12
iload 8
bipush 15
iand
iconst_4
ishl
iload 10
iconst_2
ishr
bipush 15
iand
ior
i2b
bastore
aload 0
iload 5
iload 10
bipush 6
ishl
iload 11
ior
i2b
bastore
iload 6
iconst_1
iadd
istore 6
iload 5
iconst_1
iadd
istore 5
goto L3
L6:
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 1
baload
istore 8
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 2
baload
istore 7
iload 9
iconst_1
iadd
istore 10
aload 14
iload 9
caload
istore 1
aload 14
iload 10
caload
istore 2
iload 1
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifeq L9
iload 2
invokestatic com/bestpay/encrypt/Base64/isData(C)Z
ifne L10
L9:
iload 1
invokestatic com/bestpay/encrypt/Base64/isPad(C)Z
ifeq L11
iload 2
invokestatic com/bestpay/encrypt/Base64/isPad(C)Z
ifeq L11
iload 7
bipush 15
iand
ifeq L12
aconst_null
areturn
L12:
iload 6
iconst_3
imul
iconst_1
iadd
newarray byte
astore 14
aload 0
iconst_0
aload 14
iconst_0
iload 6
iconst_3
imul
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 14
iload 5
iload 8
iconst_2
ishl
iload 7
iconst_4
ishr
ior
i2b
bastore
aload 14
areturn
L11:
iload 1
invokestatic com/bestpay/encrypt/Base64/isPad(C)Z
ifne L13
iload 2
invokestatic com/bestpay/encrypt/Base64/isPad(C)Z
ifeq L13
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 1
baload
istore 9
iload 9
iconst_3
iand
ifeq L14
aconst_null
areturn
L14:
iload 6
iconst_3
imul
iconst_2
iadd
newarray byte
astore 14
aload 0
iconst_0
aload 14
iconst_0
iload 6
iconst_3
imul
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 14
iload 5
iload 8
iconst_2
ishl
iload 7
iconst_4
ishr
ior
i2b
bastore
aload 14
iload 5
iconst_1
iadd
iload 7
bipush 15
iand
iconst_4
ishl
iload 9
iconst_2
ishr
bipush 15
iand
ior
i2b
bastore
aload 14
areturn
L13:
aconst_null
areturn
L10:
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 1
baload
istore 6
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 2
baload
istore 9
iload 5
iconst_1
iadd
istore 10
aload 0
iload 5
iload 8
iconst_2
ishl
iload 7
iconst_4
ishr
ior
i2b
bastore
iload 10
iconst_1
iadd
istore 5
aload 0
iload 10
iload 7
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
aload 0
iload 5
iload 6
bipush 6
ishl
iload 9
ior
i2b
bastore
aload 0
areturn
.limit locals 15
.limit stack 6
.end method

.method public static encode([B)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
arraylength
bipush 8
imul
istore 1
iload 1
ifne L1
ldc ""
areturn
L1:
iload 1
bipush 24
irem
istore 7
iload 1
bipush 24
idiv
istore 6
iload 7
ifeq L2
iload 6
iconst_1
iadd
istore 1
L3:
iload 1
iconst_4
imul
newarray char
astore 13
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 1
L4:
iload 2
iload 6
if_icmplt L5
iload 7
bipush 8
if_icmpne L6
aload 0
iload 3
baload
istore 2
iload 2
iconst_3
iand
i2b
istore 3
iload 2
bipush -128
iand
ifne L7
iload 2
iconst_2
ishr
i2b
istore 2
L8:
iload 1
iconst_1
iadd
istore 4
aload 13
iload 1
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 2
caload
castore
iload 4
iconst_1
iadd
istore 1
aload 13
iload 4
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 3
iconst_4
ishl
caload
castore
iload 1
iconst_1
iadd
istore 2
aload 13
iload 1
bipush 61
castore
aload 13
iload 2
bipush 61
castore
L9:
new java/lang/String
dup
aload 13
invokespecial java/lang/String/<init>([C)V
areturn
L2:
iload 6
istore 1
goto L3
L5:
iload 3
iconst_1
iadd
istore 4
aload 0
iload 3
baload
istore 3
iload 4
iconst_1
iadd
istore 8
aload 0
iload 4
baload
istore 4
aload 0
iload 8
baload
istore 9
iload 4
bipush 15
iand
i2b
istore 10
iload 3
iconst_3
iand
i2b
istore 11
iload 3
bipush -128
iand
ifne L10
iload 3
iconst_2
ishr
i2b
istore 3
L11:
iload 4
bipush -128
iand
ifne L12
iload 4
iconst_4
ishr
i2b
istore 4
L13:
iload 9
bipush -128
iand
ifne L14
iload 9
bipush 6
ishr
i2b
istore 5
L15:
iload 1
iconst_1
iadd
istore 12
aload 13
iload 1
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 3
caload
castore
iload 12
iconst_1
iadd
istore 1
aload 13
iload 12
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 11
iconst_4
ishl
iload 4
ior
caload
castore
iload 1
iconst_1
iadd
istore 3
aload 13
iload 1
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 10
iconst_2
ishl
iload 5
ior
caload
castore
iload 3
iconst_1
iadd
istore 1
aload 13
iload 3
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 9
bipush 63
iand
caload
castore
iload 2
iconst_1
iadd
istore 2
iload 8
iconst_1
iadd
istore 3
goto L4
L10:
iload 3
iconst_2
ishr
sipush 192
ixor
i2b
istore 3
goto L11
L12:
iload 4
iconst_4
ishr
sipush 240
ixor
i2b
istore 4
goto L13
L14:
iload 9
bipush 6
ishr
sipush 252
ixor
i2b
istore 5
goto L15
L7:
iload 2
iconst_2
ishr
sipush 192
ixor
i2b
istore 2
goto L8
L6:
iload 1
istore 2
iload 7
bipush 16
if_icmpne L16
aload 0
iload 3
baload
istore 2
aload 0
iload 3
iconst_1
iadd
baload
istore 3
iload 3
bipush 15
iand
i2b
istore 4
iload 2
iconst_3
iand
i2b
istore 5
iload 2
bipush -128
iand
ifne L17
iload 2
iconst_2
ishr
i2b
istore 2
L18:
iload 3
bipush -128
iand
ifne L19
iload 3
iconst_4
ishr
i2b
istore 3
L20:
iload 1
iconst_1
iadd
istore 6
aload 13
iload 1
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 2
caload
castore
iload 6
iconst_1
iadd
istore 1
aload 13
iload 6
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 5
iconst_4
ishl
iload 3
ior
caload
castore
iload 1
iconst_1
iadd
istore 3
aload 13
iload 1
getstatic com/bestpay/encrypt/Base64/lookUpBase64Alphabet [C
iload 4
iconst_2
ishl
caload
castore
iload 3
iconst_1
iadd
istore 2
aload 13
iload 3
bipush 61
castore
L16:
goto L9
L17:
iload 2
iconst_2
ishr
sipush 192
ixor
i2b
istore 2
goto L18
L19:
iload 3
iconst_4
ishr
sipush 240
ixor
i2b
istore 3
goto L20
.limit locals 14
.limit stack 5
.end method

.method private static isData(C)Z
iload 0
sipush 128
if_icmpge L0
getstatic com/bestpay/encrypt/Base64/base64Alphabet [B
iload 0
baload
iconst_m1
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static isPad(C)Z
iload 0
bipush 61
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static isWhiteSpace(C)Z
iload 0
bipush 32
if_icmpeq L0
iload 0
bipush 13
if_icmpeq L0
iload 0
bipush 10
if_icmpeq L0
iload 0
bipush 9
if_icmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static main([Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\u6211\u662f\u5f20\u9e4f\u98de\uff0c\u4f60\u597d\u554a\uff01"
invokevirtual java/lang/String/getBytes()[B
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/String
dup
ldc "5oiR5piv5byg6bmP6aOe77yM5L2g5aW95ZWK77yB"
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/lang/String/<init>([B)V
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/String
dup
ldc "MTExMTExMQ=="
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/lang/String/<init>([B)V
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method

.method private static removeWhiteSpace([C)I
aload 0
ifnonnull L0
iconst_0
istore 3
L1:
iload 3
ireturn
L0:
aload 0
arraylength
istore 4
iconst_0
istore 2
iconst_0
istore 1
L2:
iload 1
istore 3
iload 2
iload 4
if_icmpge L1
aload 0
iload 2
caload
invokestatic com/bestpay/encrypt/Base64/isWhiteSpace(C)Z
ifne L3
iload 1
iconst_1
iadd
istore 3
aload 0
iload 1
aload 0
iload 2
caload
castore
iload 3
istore 1
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
goto L4
.limit locals 5
.limit stack 4
.end method
