.bytecode 50.0
.class public synchronized com/github/kevinsawicki/http/HttpRequest$Base64
.super java/lang/Object
.inner class public static Base64 inner com/github/kevinsawicki/http/HttpRequest$Base64 outer com/github/kevinsawicki/http/HttpRequest

.field private static final 'EQUALS_SIGN' B = 61


.field private static final 'PREFERRED_ENCODING' Ljava/lang/String; = "US-ASCII"

.field private static final '_STANDARD_ALPHABET' [B

.method static <clinit>()V
bipush 64
newarray byte
dup
iconst_0
ldc_w 65
bastore
dup
iconst_1
ldc_w 66
bastore
dup
iconst_2
ldc_w 67
bastore
dup
iconst_3
ldc_w 68
bastore
dup
iconst_4
ldc_w 69
bastore
dup
iconst_5
ldc_w 70
bastore
dup
bipush 6
ldc_w 71
bastore
dup
bipush 7
ldc_w 72
bastore
dup
bipush 8
ldc_w 73
bastore
dup
bipush 9
ldc_w 74
bastore
dup
bipush 10
ldc_w 75
bastore
dup
bipush 11
ldc_w 76
bastore
dup
bipush 12
ldc_w 77
bastore
dup
bipush 13
ldc_w 78
bastore
dup
bipush 14
ldc_w 79
bastore
dup
bipush 15
ldc_w 80
bastore
dup
bipush 16
ldc_w 81
bastore
dup
bipush 17
ldc_w 82
bastore
dup
bipush 18
ldc_w 83
bastore
dup
bipush 19
ldc_w 84
bastore
dup
bipush 20
ldc_w 85
bastore
dup
bipush 21
ldc_w 86
bastore
dup
bipush 22
ldc_w 87
bastore
dup
bipush 23
ldc_w 88
bastore
dup
bipush 24
ldc_w 89
bastore
dup
bipush 25
ldc_w 90
bastore
dup
bipush 26
ldc_w 97
bastore
dup
bipush 27
ldc_w 98
bastore
dup
bipush 28
ldc_w 99
bastore
dup
bipush 29
ldc_w 100
bastore
dup
bipush 30
ldc_w 101
bastore
dup
bipush 31
ldc_w 102
bastore
dup
bipush 32
ldc_w 103
bastore
dup
bipush 33
ldc_w 104
bastore
dup
bipush 34
ldc_w 105
bastore
dup
bipush 35
ldc_w 106
bastore
dup
bipush 36
ldc_w 107
bastore
dup
bipush 37
ldc_w 108
bastore
dup
bipush 38
ldc_w 109
bastore
dup
bipush 39
ldc_w 110
bastore
dup
bipush 40
ldc_w 111
bastore
dup
bipush 41
ldc_w 112
bastore
dup
bipush 42
ldc_w 113
bastore
dup
bipush 43
ldc_w 114
bastore
dup
bipush 44
ldc_w 115
bastore
dup
bipush 45
ldc_w 116
bastore
dup
bipush 46
ldc_w 117
bastore
dup
bipush 47
ldc_w 118
bastore
dup
bipush 48
ldc_w 119
bastore
dup
bipush 49
ldc_w 120
bastore
dup
bipush 50
ldc_w 121
bastore
dup
bipush 51
ldc_w 122
bastore
dup
bipush 52
ldc_w 48
bastore
dup
bipush 53
ldc_w 49
bastore
dup
bipush 54
ldc_w 50
bastore
dup
bipush 55
ldc_w 51
bastore
dup
bipush 56
ldc_w 52
bastore
dup
bipush 57
ldc_w 53
bastore
dup
bipush 58
ldc_w 54
bastore
dup
bipush 59
ldc_w 55
bastore
dup
bipush 60
ldc_w 56
bastore
dup
bipush 61
ldc_w 57
bastore
dup
bipush 62
ldc_w 43
bastore
dup
bipush 63
ldc_w 47
bastore
putstatic com/github/kevinsawicki/http/HttpRequest$Base64/_STANDARD_ALPHABET [B
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
aload 0
ldc "US-ASCII"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 1
L1:
aload 1
astore 0
L3:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encodeBytes([B)Ljava/lang/String;
areturn
L2:
astore 1
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
goto L3
.limit locals 2
.limit stack 2
.end method

.method private static encode3to4([BII[BI)[B
iconst_0
istore 7
getstatic com/github/kevinsawicki/http/HttpRequest$Base64/_STANDARD_ALPHABET [B
astore 8
iload 2
ifle L0
aload 0
iload 1
baload
bipush 24
ishl
bipush 8
iushr
istore 5
L1:
iload 2
iconst_1
if_icmple L2
aload 0
iload 1
iconst_1
iadd
baload
bipush 24
ishl
bipush 16
iushr
istore 6
L3:
iload 2
iconst_2
if_icmple L4
aload 0
iload 1
iconst_2
iadd
baload
bipush 24
ishl
bipush 24
iushr
istore 7
L4:
iload 6
iload 5
ior
iload 7
ior
istore 1
iload 2
tableswitch 1
L5
L6
L7
default : L8
L8:
aload 3
areturn
L0:
iconst_0
istore 5
goto L1
L2:
iconst_0
istore 6
goto L3
L7:
aload 3
iload 4
aload 8
iload 1
bipush 18
iushr
baload
bastore
aload 3
iload 4
iconst_1
iadd
aload 8
iload 1
bipush 12
iushr
bipush 63
iand
baload
bastore
aload 3
iload 4
iconst_2
iadd
aload 8
iload 1
bipush 6
iushr
bipush 63
iand
baload
bastore
aload 3
iload 4
iconst_3
iadd
aload 8
iload 1
bipush 63
iand
baload
bastore
aload 3
areturn
L6:
aload 3
iload 4
aload 8
iload 1
bipush 18
iushr
baload
bastore
aload 3
iload 4
iconst_1
iadd
aload 8
iload 1
bipush 12
iushr
bipush 63
iand
baload
bastore
aload 3
iload 4
iconst_2
iadd
aload 8
iload 1
bipush 6
iushr
bipush 63
iand
baload
bastore
aload 3
iload 4
iconst_3
iadd
bipush 61
bastore
aload 3
areturn
L5:
aload 3
iload 4
aload 8
iload 1
bipush 18
iushr
baload
bastore
aload 3
iload 4
iconst_1
iadd
aload 8
iload 1
bipush 12
iushr
bipush 63
iand
baload
bastore
aload 3
iload 4
iconst_2
iadd
bipush 61
bastore
aload 3
iload 4
iconst_3
iadd
bipush 61
bastore
aload 3
areturn
.limit locals 9
.limit stack 5
.end method

.method public static encodeBytes([B)Ljava/lang/String;
aload 0
iconst_0
aload 0
arraylength
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encodeBytes([BII)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aload 0
iload 1
iload 2
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encodeBytesToBytes([BII)[B
astore 0
L0:
new java/lang/String
dup
aload 0
ldc "US-ASCII"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 3
L1:
aload 3
areturn
L2:
astore 3
new java/lang/String
dup
aload 0
invokespecial java/lang/String/<init>([B)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public static encodeBytesToBytes([BII)[B
aload 0
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Cannot serialize a null array."
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 1
ifge L1
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "Cannot have negative offset: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
iload 2
ifge L2
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "Cannot have length offset: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
iload 1
iload 2
iadd
aload 0
arraylength
if_icmple L3
new java/lang/IllegalArgumentException
dup
ldc "Cannot have offset of %d and length of %d with array of length %d"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 0
arraylength
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 2
iconst_3
idiv
istore 4
iload 2
iconst_3
irem
ifle L4
iconst_4
istore 3
L5:
iload 4
iconst_4
imul
iload 3
iadd
newarray byte
astore 6
iconst_0
istore 4
iconst_0
istore 3
L6:
iload 4
iload 2
iconst_2
isub
if_icmplt L7
iload 3
istore 5
iload 4
iload 2
if_icmpge L8
aload 0
iload 4
iload 1
iadd
iload 2
iload 4
isub
aload 6
iload 3
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encode3to4([BII[BI)[B
pop
iload 3
iconst_4
iadd
istore 5
L8:
iload 5
aload 6
arraylength
iconst_1
isub
if_icmpgt L9
iload 5
newarray byte
astore 0
aload 6
iconst_0
aload 0
iconst_0
iload 5
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
areturn
L4:
iconst_0
istore 3
goto L5
L7:
aload 0
iload 4
iload 1
iadd
iconst_3
aload 6
iload 3
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encode3to4([BII[BI)[B
pop
iload 4
iconst_3
iadd
istore 4
iload 3
iconst_4
iadd
istore 3
goto L6
L9:
aload 6
areturn
.limit locals 7
.limit stack 7
.end method
