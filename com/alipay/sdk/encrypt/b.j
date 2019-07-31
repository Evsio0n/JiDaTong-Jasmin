.bytecode 50.0
.class public final synchronized com/alipay/sdk/encrypt/b
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
L0:
new javax/crypto/spec/SecretKeySpec
dup
aload 2
invokevirtual java/lang/String/getBytes()[B
ldc "DES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 3
ldc "DES"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iload 0
aload 3
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
L1:
iload 0
iconst_2
if_icmpne L7
L3:
aload 1
invokestatic com/alipay/sdk/encrypt/a/a(Ljava/lang/String;)[B
astore 1
L4:
aload 2
aload 1
invokevirtual javax/crypto/Cipher/doFinal([B)[B
astore 1
L5:
iload 0
iconst_2
if_icmpne L9
L6:
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>([B)V
areturn
L7:
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 1
L8:
goto L4
L9:
aload 1
invokestatic com/alipay/sdk/encrypt/a/a([B)Ljava/lang/String;
astore 1
L10:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iconst_1
aload 0
aload 1
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iconst_2
aload 0
aload 1
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
