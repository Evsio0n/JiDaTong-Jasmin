.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/g
.super java/lang/Object

.field public static final 'a' [B

.field public static final 'b' [B

.field public static final 'c' I = 8


.field public static final 'd' I = 20


.method static <clinit>()V
ldc "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/e/a(Ljava/lang/String;)[B
putstatic com/alipay/security/mobile/module/commonutils/crypto/g/a [B
ldc "C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/e/a(Ljava/lang/String;)[B
putstatic com/alipay/security/mobile/module/commonutils/crypto/g/b [B
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a([B)[B
bipush 20
newarray byte
astore 6
aload 6
invokestatic com/alipay/security/mobile/module/commonutils/crypto/b/a([B)Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "failed to init hash1."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
bipush 20
newarray byte
astore 7
aload 7
invokestatic com/alipay/security/mobile/module/commonutils/crypto/b/a([B)Z
ifne L1
new java/lang/IllegalStateException
dup
ldc "failed to init hash2."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getstatic com/alipay/security/mobile/module/commonutils/crypto/g/a [B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/c/a([B[B)[B
astore 8
aload 8
iconst_0
aload 6
iconst_0
aload 8
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getstatic com/alipay/security/mobile/module/commonutils/crypto/g/b [B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/c/a([B[B)[B
astore 0
aload 0
iconst_0
aload 7
iconst_0
aload 0
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 6
bipush 19
baload
bipush 15
iand
istore 5
aload 6
iload 5
baload
bipush 127
iand
i2b
istore 1
aload 6
iload 5
iconst_1
iadd
baload
sipush 255
iand
i2b
istore 2
aload 6
iload 5
iconst_2
iadd
baload
sipush 255
iand
i2b
istore 3
aload 6
iload 5
iconst_3
iadd
baload
sipush 255
iand
i2b
istore 4
aload 7
bipush 19
baload
bipush 15
iand
istore 5
bipush 8
newarray byte
dup
iconst_0
iload 4
bastore
dup
iconst_1
iload 3
bastore
dup
iconst_2
iload 2
bastore
dup
iconst_3
iload 1
bastore
dup
iconst_4
aload 7
iload 5
baload
bipush 127
iand
i2b
bastore
dup
iconst_5
aload 7
iload 5
iconst_1
iadd
baload
sipush 255
iand
i2b
bastore
dup
bipush 6
aload 7
iload 5
iconst_2
iadd
baload
sipush 255
iand
i2b
bastore
dup
bipush 7
aload 7
iload 5
iconst_3
iadd
baload
sipush 255
iand
i2b
bastore
areturn
.limit locals 9
.limit stack 6
.end method

.method private static a([BI)[B
iconst_0
istore 2
bipush 20
newarray byte
astore 5
aload 5
invokestatic com/alipay/security/mobile/module/commonutils/crypto/b/a([B)Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "failed to init hash1."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
bipush 20
newarray byte
astore 6
aload 6
invokestatic com/alipay/security/mobile/module/commonutils/crypto/b/a([B)Z
ifne L1
new java/lang/IllegalStateException
dup
ldc "failed to init hash2."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getstatic com/alipay/security/mobile/module/commonutils/crypto/g/a [B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/c/a([B[B)[B
astore 4
aload 4
iconst_0
aload 5
iconst_0
aload 4
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getstatic com/alipay/security/mobile/module/commonutils/crypto/g/b [B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/c/a([B[B)[B
astore 0
aload 0
iconst_0
aload 6
iconst_0
aload 0
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
bipush 8
newarray byte
astore 4
aload 5
bipush 19
baload
bipush 15
iand
istore 3
aload 4
iconst_3
aload 5
iload 3
baload
bipush 127
iand
i2b
bastore
aload 4
iconst_2
aload 5
iload 3
iconst_1
iadd
baload
sipush 255
iand
i2b
bastore
aload 4
iconst_1
aload 5
iload 3
iconst_2
iadd
baload
sipush 255
iand
i2b
bastore
aload 4
iconst_0
aload 5
iload 3
iconst_3
iadd
baload
sipush 255
iand
i2b
bastore
aload 6
bipush 19
baload
bipush 15
iand
istore 3
aload 4
iconst_4
aload 6
iload 3
baload
bipush 127
iand
i2b
bastore
aload 4
iconst_5
aload 6
iload 3
iconst_1
iadd
baload
sipush 255
iand
i2b
bastore
aload 4
bipush 6
aload 6
iload 3
iconst_2
iadd
baload
sipush 255
iand
i2b
bastore
aload 4
bipush 7
aload 6
iload 3
iconst_3
iadd
baload
sipush 255
iand
i2b
bastore
iload 1
ifgt L2
aconst_null
astore 0
L3:
aload 0
areturn
L2:
aload 4
astore 0
iload 1
bipush 8
if_icmpge L3
iload 1
newarray byte
astore 0
L4:
iload 2
iload 1
if_icmpge L5
aload 0
iload 2
aload 4
iload 2
baload
bastore
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 0
areturn
.limit locals 7
.limit stack 5
.end method
