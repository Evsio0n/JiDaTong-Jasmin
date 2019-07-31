.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/i
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "SecurityUtils"

.field private static 'b' Ljava/lang/String;

.method static <clinit>()V
new java/lang/String
dup
ldc "idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#"
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
putstatic com/alipay/security/mobile/module/commonutils/crypto/i/b Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a()Ljava/lang/String;
new java/lang/String
dup
invokespecial java/lang/String/<init>()V
astore 1
iconst_0
istore 0
L0:
iload 0
getstatic com/alipay/security/mobile/module/commonutils/crypto/i/b Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/alipay/security/mobile/module/commonutils/crypto/i/b Ljava/lang/String;
iload 0
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
iload 0
iconst_4
iadd
istore 0
goto L0
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b([B)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 2
L0:
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a([B)[B
astore 3
aload 1
invokevirtual java/lang/String/getBytes()[B
astore 0
new javax/crypto/spec/SecretKeySpec
dup
aload 3
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 1
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_1
aload 1
new javax/crypto/spec/IvParameterSpec
dup
aload 3
invokevirtual javax/crypto/Cipher/getBlockSize()I
newarray byte
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
aload 3
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
astore 0
L1:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b([B)Ljava/lang/String;
areturn
L2:
astore 0
aload 2
astore 0
goto L1
.limit locals 4
.limit stack 6
.end method

.method private static a([B)[B
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "TrulyRandom" 
.end annotation
ldc "AES"
invokestatic javax/crypto/KeyGenerator/getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
astore 1
ldc "SHA1PRNG"
ldc "Crypto"
invokestatic java/security/SecureRandom/getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
astore 2
aload 2
new java/lang/String
dup
ldc "c2VlZA=="
invokestatic com/alipay/security/mobile/module/commonutils/crypto/a/a(Ljava/lang/String;)[B
invokespecial java/lang/String/<init>([B)V
ldc java/security/SecureRandom
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic com/alipay/security/mobile/module/commonutils/crypto/h/a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
invokestatic com/alipay/security/mobile/module/commonutils/crypto/h/a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
sipush 128
aload 2
invokevirtual javax/crypto/KeyGenerator/init(ILjava/security/SecureRandom;)V
aload 1
invokevirtual javax/crypto/KeyGenerator/generateKey()Ljavax/crypto/SecretKey;
invokeinterface javax/crypto/SecretKey/getEncoded()[B 0
areturn
.limit locals 3
.limit stack 6
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
new java/lang/String
dup
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/c(Ljava/lang/String;)[B
invokespecial java/lang/String/<init>([B)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a([B)[B
astore 2
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/c(Ljava/lang/String;)[B
astore 0
new javax/crypto/spec/SecretKeySpec
dup
aload 2
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 1
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_2
aload 1
new javax/crypto/spec/IvParameterSpec
dup
aload 2
invokevirtual javax/crypto/Cipher/getBlockSize()I
newarray byte
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
new java/lang/String
dup
aload 2
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokespecial java/lang/String/<init>([B)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 6
.end method

.method private static b([B)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
areturn
L0:
new java/lang/StringBuffer
dup
aload 0
arraylength
iconst_2
imul
invokespecial java/lang/StringBuffer/<init>(I)V
astore 3
iconst_0
istore 1
L1:
iload 1
aload 0
arraylength
if_icmpge L2
aload 0
iload 1
baload
istore 2
aload 3
ldc "0123456789ABCDEF"
iload 2
iconst_4
ishr
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
ldc "0123456789ABCDEF"
iload 2
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private static c(Ljava/lang/String;)[B
aload 0
invokevirtual java/lang/String/length()I
iconst_2
idiv
istore 2
iload 2
newarray byte
astore 3
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aload 0
iload 1
iconst_2
imul
iload 1
iconst_2
imul
iconst_2
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
bipush 16
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
invokevirtual java/lang/Integer/byteValue()B
bastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 3
areturn
.limit locals 4
.limit stack 6
.end method
