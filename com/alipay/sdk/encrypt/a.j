.bytecode 50.0
.class public final synchronized com/alipay/sdk/encrypt/a
.super java/lang/Object

.field private static final 'a' I = 128


.field private static final 'b' I = 64


.field private static final 'c' I = 24


.field private static final 'd' I = 8


.field private static final 'e' I = 16


.field private static final 'f' I = 4


.field private static final 'g' I = -128


.field private static final 'h' C = 61


.field private static final 'i' [B

.field private static final 'j' [C

.method static <clinit>()V
iconst_0
istore 2
sipush 128
newarray byte
putstatic com/alipay/sdk/encrypt/a/i [B
bipush 64
newarray char
putstatic com/alipay/sdk/encrypt/a/j [C
iconst_0
istore 0
L0:
iload 0
sipush 128
if_icmpge L1
getstatic com/alipay/sdk/encrypt/a/i [B
iload 0
iconst_m1
bastore
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
bipush 90
istore 0
L2:
iload 0
bipush 65
if_icmplt L3
getstatic com/alipay/sdk/encrypt/a/i [B
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
L3:
bipush 122
istore 0
L4:
iload 0
bipush 97
if_icmplt L5
getstatic com/alipay/sdk/encrypt/a/i [B
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
L5:
bipush 57
istore 0
L6:
iload 0
bipush 48
if_icmplt L7
getstatic com/alipay/sdk/encrypt/a/i [B
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
L7:
getstatic com/alipay/sdk/encrypt/a/i [B
bipush 43
bipush 62
bastore
getstatic com/alipay/sdk/encrypt/a/i [B
bipush 47
bipush 63
bastore
iconst_0
istore 0
L8:
iload 0
bipush 25
if_icmpgt L9
getstatic com/alipay/sdk/encrypt/a/j [C
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
L9:
bipush 26
istore 1
iconst_0
istore 0
L10:
iload 1
bipush 51
if_icmpgt L11
getstatic com/alipay/sdk/encrypt/a/j [C
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
L11:
bipush 52
istore 1
iload 2
istore 0
L12:
iload 1
bipush 61
if_icmpgt L13
getstatic com/alipay/sdk/encrypt/a/j [C
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
L13:
getstatic com/alipay/sdk/encrypt/a/j [C
bipush 62
bipush 43
castore
getstatic com/alipay/sdk/encrypt/a/j [C
bipush 63
bipush 47
castore
return
.limit locals 3
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a([C)I
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
istore 3
iload 3
bipush 32
if_icmpeq L3
iload 3
bipush 13
if_icmpeq L3
iload 3
bipush 10
if_icmpeq L3
iload 3
bipush 9
if_icmpne L4
L3:
iconst_1
istore 3
L5:
iload 3
ifne L6
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
L7:
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
iconst_0
istore 3
goto L5
L6:
goto L7
.limit locals 5
.limit stack 4
.end method

.method public static a([B)Ljava/lang/String;
iconst_0
istore 3
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
istore 1
L4:
iload 2
iload 6
if_icmpge L5
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
ifne L6
iload 3
iconst_2
ishr
i2b
istore 3
L7:
iload 4
bipush -128
iand
ifne L8
iload 4
iconst_4
ishr
i2b
istore 4
L9:
iload 9
bipush -128
iand
ifne L10
iload 9
bipush 6
ishr
i2b
istore 5
L11:
iload 1
iconst_1
iadd
istore 12
aload 13
iload 1
getstatic com/alipay/sdk/encrypt/a/j [C
iload 3
caload
castore
iload 12
iconst_1
iadd
istore 1
aload 13
iload 12
getstatic com/alipay/sdk/encrypt/a/j [C
iload 4
iload 11
iconst_4
ishl
ior
caload
castore
iload 1
iconst_1
iadd
istore 3
aload 13
iload 1
getstatic com/alipay/sdk/encrypt/a/j [C
iload 5
iload 10
iconst_2
ishl
ior
caload
castore
aload 13
iload 3
getstatic com/alipay/sdk/encrypt/a/j [C
iload 9
bipush 63
iand
caload
castore
iload 2
iconst_1
iadd
istore 2
iload 3
iconst_1
iadd
istore 1
iload 8
iconst_1
iadd
istore 3
goto L4
L2:
iload 6
istore 1
goto L3
L6:
iload 3
iconst_2
ishr
sipush 192
ixor
i2b
istore 3
goto L7
L8:
iload 4
iconst_4
ishr
sipush 240
ixor
i2b
istore 4
goto L9
L10:
iload 9
bipush 6
ishr
sipush 252
ixor
i2b
istore 5
goto L11
L5:
iload 7
bipush 8
if_icmpne L12
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
ifne L13
iload 2
iconst_2
ishr
i2b
istore 2
L14:
iload 1
iconst_1
iadd
istore 4
aload 13
iload 1
getstatic com/alipay/sdk/encrypt/a/j [C
iload 2
caload
castore
iload 4
iconst_1
iadd
istore 1
aload 13
iload 4
getstatic com/alipay/sdk/encrypt/a/j [C
iload 3
iconst_4
ishl
caload
castore
aload 13
iload 1
bipush 61
castore
aload 13
iload 1
iconst_1
iadd
bipush 61
castore
L15:
new java/lang/String
dup
aload 13
invokespecial java/lang/String/<init>([C)V
areturn
L13:
iload 2
iconst_2
ishr
sipush 192
ixor
i2b
istore 2
goto L14
L12:
iload 7
bipush 16
if_icmpne L15
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
ifne L16
iload 2
iconst_2
ishr
i2b
istore 2
L17:
iload 3
bipush -128
iand
ifne L18
iload 3
iconst_4
ishr
i2b
istore 3
L19:
iload 1
iconst_1
iadd
istore 6
aload 13
iload 1
getstatic com/alipay/sdk/encrypt/a/j [C
iload 2
caload
castore
iload 6
iconst_1
iadd
istore 1
aload 13
iload 6
getstatic com/alipay/sdk/encrypt/a/j [C
iload 3
iload 5
iconst_4
ishl
ior
caload
castore
aload 13
iload 1
getstatic com/alipay/sdk/encrypt/a/j [C
iload 4
iconst_2
ishl
caload
castore
aload 13
iload 1
iconst_1
iadd
bipush 61
castore
goto L15
L16:
iload 2
iconst_2
ishr
sipush 192
ixor
i2b
istore 2
goto L17
L18:
iload 3
iconst_4
ishr
sipush 240
ixor
i2b
istore 3
goto L19
.limit locals 14
.limit stack 6
.end method

.method private static a(C)Z
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
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static a(Ljava/lang/String;)[B
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/String/toCharArray()[C
astore 14
aload 14
ifnonnull L1
iconst_0
istore 7
L2:
iload 7
iconst_4
irem
ifeq L3
aconst_null
areturn
L1:
aload 14
arraylength
istore 8
iconst_0
istore 6
iconst_0
istore 5
L4:
iload 5
istore 7
iload 6
iload 8
if_icmpge L2
aload 14
iload 6
caload
istore 7
iload 7
bipush 32
if_icmpeq L5
iload 7
bipush 13
if_icmpeq L5
iload 7
bipush 10
if_icmpeq L5
iload 7
bipush 9
if_icmpne L6
L5:
iconst_1
istore 7
L7:
iload 7
ifne L8
iload 5
iconst_1
iadd
istore 7
aload 14
iload 5
aload 14
iload 6
caload
castore
iload 7
istore 5
L9:
iload 6
iconst_1
iadd
istore 6
goto L4
L6:
iconst_0
istore 7
goto L7
L3:
iload 7
iconst_4
idiv
istore 8
iload 8
ifne L10
iconst_0
newarray byte
areturn
L10:
iload 8
iconst_3
imul
newarray byte
astore 0
iconst_0
istore 7
iconst_0
istore 5
iconst_0
istore 6
L11:
iload 6
iload 8
iconst_1
isub
if_icmpge L12
iload 7
iconst_1
iadd
istore 9
aload 14
iload 7
caload
istore 1
iload 1
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifeq L13
iload 9
iconst_1
iadd
istore 7
aload 14
iload 9
caload
istore 2
iload 2
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifeq L13
iload 7
iconst_1
iadd
istore 9
aload 14
iload 7
caload
istore 3
iload 3
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifeq L13
iload 9
iconst_1
iadd
istore 7
aload 14
iload 9
caload
istore 4
iload 4
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifne L14
L13:
aconst_null
areturn
L14:
getstatic com/alipay/sdk/encrypt/a/i [B
iload 1
baload
istore 13
getstatic com/alipay/sdk/encrypt/a/i [B
iload 2
baload
istore 11
getstatic com/alipay/sdk/encrypt/a/i [B
iload 3
baload
istore 9
getstatic com/alipay/sdk/encrypt/a/i [B
iload 4
baload
istore 10
iload 5
iconst_1
iadd
istore 12
aload 0
iload 5
iload 13
iconst_2
ishl
iload 11
iconst_4
ishr
ior
i2b
bastore
iload 12
iconst_1
iadd
istore 13
aload 0
iload 12
iload 11
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
iload 13
iconst_1
iadd
istore 5
aload 0
iload 13
iload 9
bipush 6
ishl
iload 10
ior
i2b
bastore
iload 6
iconst_1
iadd
istore 6
goto L11
L12:
iload 7
iconst_1
iadd
istore 8
aload 14
iload 7
caload
istore 1
iload 1
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifeq L15
iload 8
iconst_1
iadd
istore 9
aload 14
iload 8
caload
istore 2
iload 2
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifne L16
L15:
aconst_null
areturn
L16:
getstatic com/alipay/sdk/encrypt/a/i [B
iload 1
baload
istore 7
getstatic com/alipay/sdk/encrypt/a/i [B
iload 2
baload
istore 8
aload 14
iload 9
caload
istore 1
aload 14
iload 9
iconst_1
iadd
caload
istore 2
iload 1
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifeq L17
iload 2
invokestatic com/alipay/sdk/encrypt/a/c(C)Z
ifne L18
L17:
iload 1
invokestatic com/alipay/sdk/encrypt/a/b(C)Z
ifeq L19
iload 2
invokestatic com/alipay/sdk/encrypt/a/b(C)Z
ifeq L19
iload 8
bipush 15
iand
ifeq L20
aconst_null
areturn
L20:
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
iload 7
iconst_2
ishl
iload 8
iconst_4
ishr
ior
i2b
bastore
aload 14
areturn
L19:
iload 1
invokestatic com/alipay/sdk/encrypt/a/b(C)Z
ifne L21
iload 2
invokestatic com/alipay/sdk/encrypt/a/b(C)Z
ifeq L21
getstatic com/alipay/sdk/encrypt/a/i [B
iload 1
baload
istore 9
iload 9
iconst_3
iand
ifeq L22
aconst_null
areturn
L22:
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
iload 7
iconst_2
ishl
iload 8
iconst_4
ishr
ior
i2b
bastore
aload 14
iload 5
iconst_1
iadd
iload 8
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
L21:
aconst_null
areturn
L18:
getstatic com/alipay/sdk/encrypt/a/i [B
iload 1
baload
istore 6
getstatic com/alipay/sdk/encrypt/a/i [B
iload 2
baload
istore 9
iload 5
iconst_1
iadd
istore 10
aload 0
iload 5
iload 7
iconst_2
ishl
iload 8
iconst_4
ishr
ior
i2b
bastore
aload 0
iload 10
iload 8
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
iload 10
iconst_1
iadd
iload 9
iload 6
bipush 6
ishl
ior
i2b
bastore
aload 0
areturn
L8:
goto L9
.limit locals 15
.limit stack 6
.end method

.method private static b(C)Z
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

.method private static c(C)Z
iload 0
sipush 128
if_icmpge L0
getstatic com/alipay/sdk/encrypt/a/i [B
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
