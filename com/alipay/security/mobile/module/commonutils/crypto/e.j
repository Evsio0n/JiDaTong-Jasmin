.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/e
.super java/lang/Object

.field private static final 'a' Lcom/alipay/security/mobile/module/commonutils/crypto/f;

.method static <clinit>()V
new com/alipay/security/mobile/module/commonutils/crypto/f
dup
invokespecial com/alipay/security/mobile/module/commonutils/crypto/f/<init>()V
putstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)I
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
aload 1
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a(Ljava/lang/String;Ljava/io/OutputStream;)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method private static a([BIILjava/io/OutputStream;)I
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
iload 1
iload 2
aload 3
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a([BIILjava/io/OutputStream;)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method private static a([BLjava/io/OutputStream;)I
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
iconst_0
aload 0
arraylength
aload 1
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a([BIILjava/io/OutputStream;)I
ireturn
.limit locals 2
.limit stack 5
.end method

.method public static a(Ljava/lang/String;)[B
.catch java/io/IOException from L0 to L1 using L2
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
L0:
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
aload 1
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a(Ljava/lang/String;Ljava/io/OutputStream;)I
pop
L1:
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L2:
astore 0
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
ldc "exception decoding Hex string: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method private static a([B)[B
aload 0
aload 0
arraylength
invokestatic com/alipay/security/mobile/module/commonutils/crypto/e/a([BI)[B
areturn
.limit locals 1
.limit stack 2
.end method

.method private static a([BI)[B
.catch java/io/IOException from L0 to L1 using L2
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
L0:
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
iconst_0
iload 1
aload 2
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a([BIILjava/io/OutputStream;)I
pop
L1:
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L2:
astore 0
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
ldc "exception encoding Hex string: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 5
.end method

.method private static b([B)[B
.catch java/io/IOException from L0 to L1 using L2
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
L0:
getstatic com/alipay/security/mobile/module/commonutils/crypto/e/a Lcom/alipay/security/mobile/module/commonutils/crypto/f;
aload 0
aload 0
arraylength
aload 1
invokevirtual com/alipay/security/mobile/module/commonutils/crypto/f/a([BILjava/io/OutputStream;)I
pop
L1:
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L2:
astore 0
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
ldc "exception decoding Hex string: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method
