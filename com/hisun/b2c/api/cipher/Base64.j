.bytecode 50.0
.class public synchronized com/hisun/b2c/api/cipher/Base64
.super java/lang/Object

.field private static final 'base64' [C

.field private static 'pad1' C

.field private static 'pad2' Ljava/lang/String;

.field private static final 'reverse' [B

.method static <clinit>()V
new java/lang/String
dup
ldc "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
invokevirtual java/lang/String/toCharArray()[C
putstatic com/hisun/b2c/api/cipher/Base64/base64 [C
bipush 61
putstatic com/hisun/b2c/api/cipher/Base64/pad1 C
ldc "=="
putstatic com/hisun/b2c/api/cipher/Base64/pad2 Ljava/lang/String;
sipush 128
newarray byte
astore 0
aload 0
iconst_0
iconst_m1
bastore
aload 0
iconst_1
iconst_m1
bastore
aload 0
iconst_2
iconst_m1
bastore
aload 0
iconst_3
iconst_m1
bastore
aload 0
iconst_4
iconst_m1
bastore
aload 0
iconst_5
iconst_m1
bastore
aload 0
bipush 6
iconst_m1
bastore
aload 0
bipush 7
iconst_m1
bastore
aload 0
bipush 8
iconst_m1
bastore
aload 0
bipush 9
iconst_m1
bastore
aload 0
bipush 10
iconst_m1
bastore
aload 0
bipush 11
iconst_m1
bastore
aload 0
bipush 12
iconst_m1
bastore
aload 0
bipush 13
iconst_m1
bastore
aload 0
bipush 14
iconst_m1
bastore
aload 0
bipush 15
iconst_m1
bastore
aload 0
bipush 16
iconst_m1
bastore
aload 0
bipush 17
iconst_m1
bastore
aload 0
bipush 18
iconst_m1
bastore
aload 0
bipush 19
iconst_m1
bastore
aload 0
bipush 20
iconst_m1
bastore
aload 0
bipush 21
iconst_m1
bastore
aload 0
bipush 22
iconst_m1
bastore
aload 0
bipush 23
iconst_m1
bastore
aload 0
bipush 24
iconst_m1
bastore
aload 0
bipush 25
iconst_m1
bastore
aload 0
bipush 26
iconst_m1
bastore
aload 0
bipush 27
iconst_m1
bastore
aload 0
bipush 28
iconst_m1
bastore
aload 0
bipush 29
iconst_m1
bastore
aload 0
bipush 30
iconst_m1
bastore
aload 0
bipush 31
iconst_m1
bastore
aload 0
bipush 32
iconst_m1
bastore
aload 0
bipush 33
iconst_m1
bastore
aload 0
bipush 34
iconst_m1
bastore
aload 0
bipush 35
iconst_m1
bastore
aload 0
bipush 36
iconst_m1
bastore
aload 0
bipush 37
iconst_m1
bastore
aload 0
bipush 38
iconst_m1
bastore
aload 0
bipush 39
iconst_m1
bastore
aload 0
bipush 40
iconst_m1
bastore
aload 0
bipush 41
iconst_m1
bastore
aload 0
bipush 42
iconst_m1
bastore
aload 0
bipush 43
bipush 62
bastore
aload 0
bipush 44
iconst_m1
bastore
aload 0
bipush 45
iconst_m1
bastore
aload 0
bipush 46
iconst_m1
bastore
aload 0
bipush 47
bipush 63
bastore
aload 0
bipush 48
bipush 52
bastore
aload 0
bipush 49
bipush 53
bastore
aload 0
bipush 50
bipush 54
bastore
aload 0
bipush 51
bipush 55
bastore
aload 0
bipush 52
bipush 56
bastore
aload 0
bipush 53
bipush 57
bastore
aload 0
bipush 54
bipush 58
bastore
aload 0
bipush 55
bipush 59
bastore
aload 0
bipush 56
bipush 60
bastore
aload 0
bipush 57
bipush 61
bastore
aload 0
bipush 58
iconst_m1
bastore
aload 0
bipush 59
iconst_m1
bastore
aload 0
bipush 60
iconst_m1
bastore
aload 0
bipush 61
bipush 64
bastore
aload 0
bipush 62
iconst_m1
bastore
aload 0
bipush 63
iconst_m1
bastore
aload 0
bipush 64
iconst_m1
bastore
aload 0
bipush 66
iconst_1
bastore
aload 0
bipush 67
iconst_2
bastore
aload 0
bipush 68
iconst_3
bastore
aload 0
bipush 69
iconst_4
bastore
aload 0
bipush 70
iconst_5
bastore
aload 0
bipush 71
bipush 6
bastore
aload 0
bipush 72
bipush 7
bastore
aload 0
bipush 73
bipush 8
bastore
aload 0
bipush 74
bipush 9
bastore
aload 0
bipush 75
bipush 10
bastore
aload 0
bipush 76
bipush 11
bastore
aload 0
bipush 77
bipush 12
bastore
aload 0
bipush 78
bipush 13
bastore
aload 0
bipush 79
bipush 14
bastore
aload 0
bipush 80
bipush 15
bastore
aload 0
bipush 81
bipush 16
bastore
aload 0
bipush 82
bipush 17
bastore
aload 0
bipush 83
bipush 18
bastore
aload 0
bipush 84
bipush 19
bastore
aload 0
bipush 85
bipush 20
bastore
aload 0
bipush 86
bipush 21
bastore
aload 0
bipush 87
bipush 22
bastore
aload 0
bipush 88
bipush 23
bastore
aload 0
bipush 89
bipush 24
bastore
aload 0
bipush 90
bipush 25
bastore
aload 0
bipush 91
iconst_m1
bastore
aload 0
bipush 92
iconst_m1
bastore
aload 0
bipush 93
iconst_m1
bastore
aload 0
bipush 94
iconst_m1
bastore
aload 0
bipush 95
iconst_m1
bastore
aload 0
bipush 96
iconst_m1
bastore
aload 0
bipush 97
bipush 26
bastore
aload 0
bipush 98
bipush 27
bastore
aload 0
bipush 99
bipush 28
bastore
aload 0
bipush 100
bipush 29
bastore
aload 0
bipush 101
bipush 30
bastore
aload 0
bipush 102
bipush 31
bastore
aload 0
bipush 103
bipush 32
bastore
aload 0
bipush 104
bipush 33
bastore
aload 0
bipush 105
bipush 34
bastore
aload 0
bipush 106
bipush 35
bastore
aload 0
bipush 107
bipush 36
bastore
aload 0
bipush 108
bipush 37
bastore
aload 0
bipush 109
bipush 38
bastore
aload 0
bipush 110
bipush 39
bastore
aload 0
bipush 111
bipush 40
bastore
aload 0
bipush 112
bipush 41
bastore
aload 0
bipush 113
bipush 42
bastore
aload 0
bipush 114
bipush 43
bastore
aload 0
bipush 115
bipush 44
bastore
aload 0
bipush 116
bipush 45
bastore
aload 0
bipush 117
bipush 46
bastore
aload 0
bipush 118
bipush 47
bastore
aload 0
bipush 119
bipush 48
bastore
aload 0
bipush 120
bipush 49
bastore
aload 0
bipush 121
bipush 50
bastore
aload 0
bipush 122
bipush 51
bastore
aload 0
bipush 123
iconst_m1
bastore
aload 0
bipush 124
iconst_m1
bastore
aload 0
bipush 125
iconst_m1
bastore
aload 0
bipush 126
iconst_m1
bastore
aload 0
bipush 127
iconst_m1
bastore
aload 0
putstatic com/hisun/b2c/api/cipher/Base64/reverse [B
return
.limit locals 1
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static decode(Ljava/lang/String;)[B
.throws java/lang/Exception
aload 0
invokevirtual java/lang/String/length()I
ifne L0
iconst_0
newarray byte
areturn
L0:
aload 0
invokevirtual java/lang/String/length()I
newarray byte
astore 2
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
istore 1
L1:
iload 1
ifge L2
aload 2
invokestatic com/hisun/b2c/api/cipher/Base64/decode([B)[B
areturn
L2:
aload 2
iload 1
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
i2b
bastore
iload 1
iconst_1
isub
istore 1
goto L1
.limit locals 3
.limit stack 4
.end method

.method public static decode([B)[B
.throws java/lang/Exception
aload 0
arraylength
istore 6
iconst_0
istore 4
iconst_0
istore 3
iconst_0
istore 2
L0:
iload 3
iload 6
if_icmplt L1
L2:
iload 2
iconst_2
ishr
istore 5
iload 5
iconst_3
imul
istore 3
iload 2
iconst_3
iand
istore 7
iload 7
iconst_1
if_icmpne L3
new java/lang/Exception
dup
ldc "Cannot found first char!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L1:
getstatic com/hisun/b2c/api/cipher/Base64/reverse [B
aload 0
iload 3
baload
baload
istore 1
iload 1
bipush 64
if_icmpne L4
iload 4
ifne L2
iconst_1
istore 4
L5:
iload 3
iconst_1
iadd
istore 3
goto L0
L4:
iload 4
ifeq L6
new java/lang/Exception
dup
ldc "Cannot found second char!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L6:
iload 1
iconst_m1
if_icmpeq L7
iload 2
iconst_1
iadd
istore 5
aload 0
iload 2
iload 1
bastore
iload 5
istore 2
goto L5
L3:
iload 3
istore 2
iload 7
ifle L8
iload 3
iload 7
iadd
iconst_1
isub
istore 2
L8:
iload 2
newarray byte
astore 11
iconst_0
istore 4
iconst_0
istore 2
iconst_0
istore 3
L9:
iload 5
ifgt L10
iload 4
istore 6
iload 3
istore 5
iload 2
istore 4
iload 7
iconst_2
if_icmplt L11
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
istore 5
aload 0
iload 4
baload
istore 6
aload 11
iload 2
iload 3
iconst_2
ishl
iload 6
iconst_4
iushr
iconst_3
iand
ior
i2b
bastore
iload 2
iconst_1
iadd
istore 4
L11:
iload 7
iconst_3
if_icmplt L12
aload 11
iload 4
iload 6
bipush 15
iand
iconst_4
ishl
aload 0
iload 5
baload
iconst_2
iushr
bipush 15
iand
ior
i2b
bastore
aload 11
areturn
L10:
iload 3
iconst_1
iadd
istore 4
aload 0
iload 3
baload
istore 6
iload 4
iconst_1
iadd
istore 3
aload 0
iload 4
baload
istore 4
iload 3
iconst_1
iadd
istore 9
aload 0
iload 3
baload
istore 8
iload 9
iconst_1
iadd
istore 3
aload 0
iload 9
baload
istore 9
iload 2
iconst_1
iadd
istore 10
aload 11
iload 2
iload 6
iconst_2
ishl
iload 4
iconst_4
iushr
iconst_3
iand
ior
i2b
bastore
iload 10
iconst_1
iadd
istore 2
aload 11
iload 10
iload 4
bipush 15
iand
iconst_4
ishl
iload 8
iconst_2
iushr
bipush 15
iand
ior
i2b
bastore
aload 11
iload 2
iload 8
iconst_3
iand
bipush 6
ishl
iload 9
ior
i2b
bastore
iload 5
iconst_1
isub
istore 5
iload 2
iconst_1
iadd
istore 2
goto L9
L12:
aload 11
areturn
L7:
goto L5
.limit locals 12
.limit stack 5
.end method

.method public static encode([B)Ljava/lang/String;
aload 0
arraylength
ifne L0
ldc ""
areturn
L0:
new java/lang/StringBuffer
dup
aload 0
arraylength
iconst_2
iadd
iconst_3
idiv
iconst_2
ishl
invokespecial java/lang/StringBuffer/<init>(I)V
astore 6
aload 0
arraylength
iconst_3
idiv
istore 2
iconst_0
istore 1
L1:
iload 2
ifgt L2
aload 0
arraylength
iconst_3
irem
tableswitch 1
L3
L4
default : L5
L5:
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L2:
iload 1
iconst_1
iadd
istore 4
aload 0
iload 1
baload
istore 3
iload 4
iconst_1
iadd
istore 1
aload 0
iload 4
baload
istore 4
aload 0
iload 1
baload
istore 5
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 3
iconst_2
iushr
bipush 63
iand
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 3
iconst_3
iand
iconst_4
ishl
iload 4
iconst_4
iushr
bipush 15
iand
ior
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 4
bipush 15
iand
iconst_2
ishl
iload 5
bipush 6
iushr
iconst_3
iand
ior
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 5
bipush 63
iand
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 2
iconst_1
isub
istore 2
iload 1
iconst_1
iadd
istore 1
goto L1
L3:
aload 0
iload 1
baload
istore 1
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 1
iconst_2
iushr
bipush 63
iand
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 1
iconst_3
iand
iconst_4
ishl
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/pad2 Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
L4:
iload 1
iconst_1
iadd
istore 2
aload 0
iload 1
baload
istore 3
iload 2
iconst_1
iadd
istore 1
aload 0
iload 2
baload
istore 2
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 3
iconst_2
iushr
bipush 63
iand
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 3
iconst_3
iand
iconst_4
ishl
iload 2
iconst_4
iushr
bipush 15
iand
ior
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/base64 [C
iload 2
bipush 15
iand
iconst_2
ishl
caload
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 6
getstatic com/hisun/b2c/api/cipher/Base64/pad1 C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
goto L5
.limit locals 7
.limit stack 5
.end method

.method public static toHex([B)Ljava/lang/String;
new java/lang/StringBuffer
dup
aload 0
arraylength
iconst_2
imul
invokespecial java/lang/StringBuffer/<init>(I)V
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmplt L1
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L1:
aload 2
ldc "0123456789abcdef"
aload 0
iload 1
baload
iconst_4
ishr
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 2
ldc "0123456789abcdef"
aload 0
iload 1
baload
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 4
.end method
