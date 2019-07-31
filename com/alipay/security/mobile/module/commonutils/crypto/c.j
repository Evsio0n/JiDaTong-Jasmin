.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/c
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "HmacSHA1"

.field public static final 'b' Ljava/lang/String; = "HMAC-SHA-1"

.field public static final 'c' Ljava/lang/String; = "RAW"

.field public static final 'd' [B

.method static <clinit>()V
ldc "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/e/a(Ljava/lang/String;)[B
putstatic com/alipay/security/mobile/module/commonutils/crypto/c/d [B
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

.method private static a(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L9
.catch java/lang/Exception from L10 to L11 using L4
iconst_0
istore 1
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
aconst_null
areturn
L0:
ldc "HmacSHA1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 2
L1:
aload 2
new javax/crypto/spec/SecretKeySpec
dup
getstatic com/alipay/security/mobile/module/commonutils/crypto/c/d [B
ldc "RAW"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
invokevirtual javax/crypto/Mac/init(Ljava/security/Key;)V
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual javax/crypto/Mac/doFinal([B)[B
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L3:
iload 1
bipush 16
if_icmpge L10
L5:
aload 2
ldc "%02x"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
iload 1
baload
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L6:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 2
L7:
ldc "HMAC-SHA-1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 2
L8:
goto L1
L10:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L11:
aload 0
areturn
L4:
astore 0
aconst_null
areturn
L9:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 7
.end method

.method public static a([B[B)[B
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
L0:
ldc "HmacSHA1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 2
L1:
aload 2
new javax/crypto/spec/SecretKeySpec
dup
aload 1
ldc "RAW"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
invokevirtual javax/crypto/Mac/init(Ljava/security/Key;)V
aload 2
aload 0
invokevirtual javax/crypto/Mac/doFinal([B)[B
areturn
L2:
astore 2
ldc "HMAC-SHA-1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 2
goto L1
.limit locals 3
.limit stack 5
.end method
