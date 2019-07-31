.bytecode 50.0
.class public synchronized com/hisun/b2c/api/cipher/RSA
.super java/lang/Object

.field private static final 'ALGORITHM' Ljava/lang/String; = "RSA"

.field public static final 'SIGN_ALGORITHMS' Ljava/lang/String; = "SHA1WithRSA"

.field public static final 'charset' Ljava/lang/String; = "UTF-8"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static byte2hex([B)Ljava/lang/String;
ldc ""
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmplt L1
aload 2
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
areturn
L1:
aload 0
iload 1
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
astore 3
aload 3
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L2
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L3
.limit locals 4
.limit stack 3
.end method

.method public static createPairKey(Lcom/hisun/b2c/api/cipher/SaveKeys;)Lcom/hisun/b2c/api/cipher/SaveKeys;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L2
.catch java/security/NoSuchAlgorithmException from L9 to L10 using L2
.catch java/security/NoSuchAlgorithmException from L11 to L12 using L2
.catch java/security/NoSuchAlgorithmException from L13 to L14 using L2
.catch java/security/NoSuchAlgorithmException from L15 to L16 using L2
.catch java/security/NoSuchAlgorithmException from L17 to L18 using L2
.catch java/security/NoSuchAlgorithmException from L19 to L20 using L2
.catch java/security/NoSuchAlgorithmException from L21 to L22 using L2
.catch java/security/NoSuchAlgorithmException from L23 to L24 using L2
aload 0
astore 1
aload 0
ifnonnull L1
L0:
new com/hisun/b2c/api/cipher/SaveKeys
dup
invokespecial com/hisun/b2c/api/cipher/SaveKeys/<init>()V
astore 1
L1:
aload 1
astore 0
L3:
ldc "RSA"
invokestatic java/security/KeyPairGenerator/getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
astore 2
L4:
aload 1
astore 0
L5:
new java/security/SecureRandom
dup
invokespecial java/security/SecureRandom/<init>()V
astore 3
L6:
aload 1
astore 0
L7:
aload 3
ldc2_w 1000L
invokevirtual java/security/SecureRandom/setSeed(J)V
L8:
aload 1
astore 0
L9:
aload 2
sipush 1024
aload 3
invokevirtual java/security/KeyPairGenerator/initialize(ILjava/security/SecureRandom;)V
L10:
aload 1
astore 0
L11:
aload 2
invokevirtual java/security/KeyPairGenerator/generateKeyPair()Ljava/security/KeyPair;
astore 2
L12:
aload 1
astore 0
L13:
aload 2
invokevirtual java/security/KeyPair/getPublic()Ljava/security/PublicKey;
checkcast java/security/interfaces/RSAPublicKey
astore 3
L14:
aload 1
astore 0
L15:
aload 1
aload 3
invokevirtual com/hisun/b2c/api/cipher/SaveKeys/setPublicKey(Ljava/security/PublicKey;)V
L16:
aload 1
astore 0
L17:
aload 1
aload 3
invokeinterface java/security/interfaces/RSAPublicKey/getEncoded()[B 0
invokestatic com/hisun/b2c/api/cipher/Base64/encode([B)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/cipher/SaveKeys/setPublicKeyText(Ljava/lang/String;)V
L18:
aload 1
astore 0
L19:
aload 2
invokevirtual java/security/KeyPair/getPrivate()Ljava/security/PrivateKey;
checkcast java/security/interfaces/RSAPrivateKey
astore 2
L20:
aload 1
astore 0
L21:
aload 1
aload 2
invokevirtual com/hisun/b2c/api/cipher/SaveKeys/setPrivateKey(Ljava/security/PrivateKey;)V
L22:
aload 1
astore 0
L23:
aload 1
aload 2
invokeinterface java/security/interfaces/RSAPrivateKey/getEncoded()[B 0
invokestatic com/hisun/b2c/api/cipher/Base64/encode([B)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/cipher/SaveKeys/setPrivateKeyText(Ljava/lang/String;)V
L24:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
aload 0
areturn
.limit locals 4
.limit stack 3
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
new java/security/spec/X509EncodedKeySpec
dup
aload 2
invokestatic com/hisun/b2c/api/cipher/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
astore 2
ldc "SHA1WithRSA"
invokestatic java/security/Signature/getInstance(Ljava/lang/String;)Ljava/security/Signature;
astore 4
aload 4
aload 2
invokevirtual java/security/Signature/initVerify(Ljava/security/PublicKey;)V
aload 4
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/Signature/update([B)V
aload 4
aload 1
invokestatic com/hisun/b2c/api/cipher/Base64/decode(Ljava/lang/String;)[B
invokevirtual java/security/Signature/verify([B)Z
istore 3
L1:
iload 3
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
invokestatic com/hisun/b2c/api/cipher/RSA/getPublicKeyFromX509(Ljava/lang/String;)Ljava/security/PublicKey;
astore 1
ldc "RSA/ECB/PKCS1Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_1
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
new java/lang/String
dup
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokestatic com/hisun/b2c/api/cipher/Base64/encode([B)Ljava/lang/String;
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 5
.end method

.method public static genMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
aload 1
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
aload 1
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
invokestatic com/hisun/b2c/api/cipher/RSA/byte2hex([B)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getPrivateKeyFromX509(Ljava/lang/String;)Ljava/security/PrivateKey;
.throws java/security/NoSuchAlgorithmException
.throws java/lang/Exception
ldc "RSA"
aload 0
iconst_1
invokestatic com/hisun/b2c/api/cipher/RSA/getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;Z)Ljava/security/Key;
checkcast java/security/PrivateKey
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;Z)Ljava/security/Key;
.throws java/security/NoSuchAlgorithmException
.throws java/lang/Exception
new java/security/spec/X509EncodedKeySpec
dup
aload 1
invokestatic com/hisun/b2c/api/cipher/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
astore 1
aload 0
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
astore 0
iload 2
ifeq L0
aload 0
aload 1
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
areturn
L0:
aload 0
aload 1
invokevirtual java/security/KeyFactory/generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getPublicKeyFromX509(Ljava/lang/String;)Ljava/security/PublicKey;
.throws java/security/NoSuchAlgorithmException
.throws java/lang/Exception
ldc "RSA"
aload 0
iconst_1
invokestatic com/hisun/b2c/api/cipher/RSA/getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;Z)Ljava/security/Key;
checkcast java/security/PublicKey
areturn
.limit locals 1
.limit stack 3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/security/spec/PKCS8EncodedKeySpec
dup
aload 1
invokestatic com/hisun/b2c/api/cipher/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/PKCS8EncodedKeySpec/<init>([B)V
astore 1
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 1
invokevirtual java/security/KeyFactory/generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
astore 1
ldc "SHA1WithRSA"
invokestatic java/security/Signature/getInstance(Ljava/lang/String;)Ljava/security/Signature;
astore 2
aload 2
aload 1
invokevirtual java/security/Signature/initSign(Ljava/security/PrivateKey;)V
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/Signature/update([B)V
aload 2
invokevirtual java/security/Signature/sign()[B
invokestatic com/hisun/b2c/api/cipher/Base64/encode([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public decrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnonnull L3
L4:
aconst_null
areturn
L3:
aload 2
ifnull L4
aload 1
invokestatic com/hisun/b2c/api/cipher/Base64/decode(Ljava/lang/String;)[B
astore 1
L0:
ldc "RSA"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_2
aload 2
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
new java/lang/String
dup
aload 3
aload 1
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokespecial java/lang/String/<init>([B)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 1
athrow
.limit locals 4
.limit stack 4
.end method

.method public encrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnonnull L3
aconst_null
areturn
L3:
aload 1
invokevirtual java/lang/String/getBytes()[B
astore 1
L0:
ldc "RSA"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_1
aload 2
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
aload 3
aload 1
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokestatic com/hisun/b2c/api/cipher/Base64/encode([B)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 1
athrow
.limit locals 4
.limit stack 3
.end method
