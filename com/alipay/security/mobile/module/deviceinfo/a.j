.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/deviceinfo/a
.super java/lang/Object

.field private static 'a' Lcom/alipay/security/mobile/module/deviceinfo/a;

.method static <clinit>()V
new com/alipay/security/mobile/module/deviceinfo/a
dup
invokespecial com/alipay/security/mobile/module/deviceinfo/a/<init>()V
putstatic com/alipay/security/mobile/module/deviceinfo/a/a Lcom/alipay/security/mobile/module/deviceinfo/a;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a()Lcom/alipay/security/mobile/module/deviceinfo/a;
getstatic com/alipay/security/mobile/module/deviceinfo/a/a Lcom/alipay/security/mobile/module/deviceinfo/a;
areturn
.limit locals 0
.limit stack 1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
bipush 64
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/PackageInfo
astore 2
aload 2
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
iconst_0
aaload
invokevirtual android/content/pm/Signature/toByteArray()[B
astore 0
L3:
aload 0
areturn
L2:
astore 0
L4:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)[B
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
invokestatic com/alipay/security/mobile/module/deviceinfo/a/a(Landroid/content/Context;Ljava/lang/String;)[B
astore 0
ldc "X.509"
invokestatic java/security/cert/CertificateFactory/getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
new java/io/ByteArrayInputStream
dup
aload 0
invokespecial java/io/ByteArrayInputStream/<init>([B)V
invokevirtual java/security/cert/CertificateFactory/generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
checkcast java/security/cert/X509Certificate
invokevirtual java/security/cert/X509Certificate/getPublicKey()Ljava/security/PublicKey;
invokeinterface java/security/PublicKey/getEncoded()[B 0
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method
