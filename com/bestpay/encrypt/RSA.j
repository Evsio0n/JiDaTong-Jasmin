.bytecode 50.0
.class public synchronized com/bestpay/encrypt/RSA
.super java/lang/Object

.field public static final 'KEY_ALGORITHM' Ljava/lang/String; = "RSA"

.field public static final 'KEY_ALGORITHM_RSA_NONE' Ljava/lang/String; = "RSA/None/PKCS1Padding"

.field private static final 'KEY_SIZE' I = 1024


.field private static final 'MAX_DECRYPT_BLOCK' I = 128


.field private static final 'MAX_ENCRYPT_BLOCK' I = 117


.field private static final 'PRIVATE_KEY' Ljava/lang/String; = "RSAPrivateKey"

.field private static final 'PUBLIC_KEY' Ljava/lang/String; = "RSAPublicKey"

.field public static final 'PUB_KEY' Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCx2zk90WzGIzGjl7opxIFdoinxyp+pjvN1wC0OTrGk6o/c0RyrmQstu690IJPXu/6urLmB7/T2Iy/UUvSkqwzL7oX6D7llTjyR4MQjwvPVy7JZR2WYu1dvPgQn++/DVBuFDtfYW6pRlIi27iPxXyQ3ozAfHo5biR5nNelhu0lnVQIDAQAB"

.field public static final 'SIGN_ALGORITHMS' Ljava/lang/String; = "SHAWithRSA"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
aload 1
invokestatic com/bestpay/encrypt/RSA/getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
astore 1
ldc "RSA"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 6
aload 6
iconst_2
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
new java/io/ByteArrayInputStream
dup
aload 0
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 7
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 8
sipush 128
newarray byte
astore 1
L0:
aload 7
aload 1
invokevirtual java/io/InputStream/read([B)I
istore 4
iload 4
iconst_m1
if_icmpne L1
new java/lang/String
dup
aload 8
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 2
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
areturn
L1:
aload 1
arraylength
iload 4
if_icmpne L2
aload 1
astore 0
L3:
aload 8
aload 6
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokevirtual java/io/ByteArrayOutputStream/write([B)V
goto L0
L2:
iload 4
newarray byte
astore 5
iconst_0
istore 3
L4:
aload 5
astore 0
iload 3
iload 4
if_icmpge L3
aload 5
iload 3
aload 1
iload 3
baload
bastore
iload 3
iconst_1
iadd
istore 3
goto L4
.limit locals 9
.limit stack 4
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L4
.catch all from L6 to L7 using L4
.catch java/io/IOException from L8 to L9 using L10
.catch all from L11 to L12 using L4
.catch all from L13 to L14 using L4
.catch java/io/IOException from L15 to L16 using L17
.catch all from L18 to L19 using L4
aconst_null
astore 5
L0:
aload 1
invokestatic com/bestpay/encrypt/RSA/getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
astore 1
ldc "RSA/None/PKCS1Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 6
aload 6
iconst_1
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
new java/io/ByteArrayInputStream
dup
aload 0
aload 2
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 7
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
L1:
sipush 128
newarray byte
astore 2
L3:
aload 7
aload 2
invokevirtual java/io/InputStream/read([B)I
istore 4
L5:
iload 4
iconst_m1
if_icmpne L11
L6:
new java/lang/String
dup
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 0
L7:
aload 1
ifnull L20
L8:
aload 1
invokevirtual java/io/ByteArrayOutputStream/close()V
L9:
aload 0
areturn
L11:
aload 2
arraylength
iload 4
if_icmpne L18
L12:
aload 2
astore 0
L13:
aload 1
aload 6
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokevirtual java/io/ByteArrayOutputStream/write([B)V
L14:
goto L3
L4:
astore 0
L21:
aload 1
ifnull L16
L15:
aload 1
invokevirtual java/io/ByteArrayOutputStream/close()V
L16:
aload 0
athrow
L18:
iload 4
newarray byte
astore 5
L19:
iconst_0
istore 3
L22:
aload 5
astore 0
iload 3
iload 4
if_icmpge L13
aload 5
iload 3
aload 2
iload 3
baload
bastore
iload 3
iconst_1
iadd
istore 3
goto L22
L17:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L16
L10:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L9
L2:
astore 0
aload 5
astore 1
goto L21
L20:
aload 0
areturn
.limit locals 8
.limit stack 4
.end method

.method public static generateKeyPair()Ljava/security/KeyPair;
.throws java/lang/Exception
ldc "RSA"
invokestatic java/security/KeyPairGenerator/getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
astore 0
aload 0
sipush 1024
new java/security/SecureRandom
dup
invokespecial java/security/SecureRandom/<init>()V
invokevirtual java/security/KeyPairGenerator/initialize(ILjava/security/SecureRandom;)V
aload 0
invokevirtual java/security/KeyPairGenerator/generateKeyPair()Ljava/security/KeyPair;
areturn
.limit locals 1
.limit stack 4
.end method

.method public static generateRSAKey()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
.throws java/lang/Exception
invokestatic com/bestpay/encrypt/RSA/generateKeyPair()Ljava/security/KeyPair;
astore 0
new java/util/HashMap
dup
iconst_2
invokespecial java/util/HashMap/<init>(I)V
astore 1
aload 1
ldc "RSAPublicKey"
aload 0
invokestatic com/bestpay/encrypt/RSA/generateRSAPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ldc "RSAPrivateKey"
aload 0
invokestatic com/bestpay/encrypt/RSA/generateRSAPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static generateRSAPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
invokevirtual java/security/KeyPair/getPrivate()Ljava/security/PrivateKey;
checkcast java/security/interfaces/RSAPrivateKey
invokeinterface java/security/interfaces/RSAPrivateKey/getEncoded()[B 0
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static generateRSAPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
invokevirtual java/security/KeyPair/getPublic()Ljava/security/PublicKey;
checkcast java/security/interfaces/RSAPublicKey
invokeinterface java/security/interfaces/RSAPublicKey/getEncoded()[B 0
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
.throws java/lang/Exception
new java/security/spec/PKCS8EncodedKeySpec
dup
aload 0
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/PKCS8EncodedKeySpec/<init>([B)V
astore 0
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 0
invokevirtual java/security/KeyFactory/generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
.throws java/lang/Exception
new java/security/spec/X509EncodedKeySpec
dup
aload 0
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
astore 0
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 0
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static main([Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "VxhK8Ku73TltoujAl0mE9J8O2tgsFvDQc3CuSJWv/L9MtLBom3XgPd8KngJMlaV7wKafK5JsR9g0zSYCjKOpi26FaBEGPI8yfXvR7s+MDZ0dEvdcuvqYcSccS7jwLm1H5ZFZT1f/Vytxw4/cjGafcZm+BAV6BzeJz6sskMRT2S4="
ldc "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALHbOT3RbMYjMaOXuinEgV2iKfHKn6mO83XALQ5OsaTqj9zRHKuZCy27r3Qgk9e7/q6suYHv9PYjL9RS9KSrDMvuhfoPuWVOPJHgxCPC89XLsllHZZi7V28+BCf778NUG4UO19hbqlGUiLbuI/FfJDejMB8ejluJHmc16WG7SWdVAgMBAAECgYEAmfYICzdrTenRYqhJgzaUNhXW8XRR2lng7yG43xXIOdbDSofKpdEKGEDMlV5OHQakZVkoDQ9Honq7QLW/CXz4yW71iAK8SFn22LGKxzdSgPZkGmVZ+ZKDPjmKg9QyzI8VbHWKuIHCD0iJgaN7SF5B1CtsGRs66f+aNTLyLLr2QAECQQDWtXfjJi0keQ13mLpAYfc7e7dX0zna5zqkUbA2q1JYPG8j9GIJ/j3NrUUJbhFiBEJUX5BYtP7zXOXA8/QNqvtVAkEA1A9vRllNQNEiAG3ZlvVSh3RXWPsVDQkerzWKBlMvQZIa+eQ/Q9o+b0tOvvt1IIvwaSXpqBEcpC09vzfjoNy8AQJBAMNUmFr4Uj1KO6xAL8F+3pMo/CVULuAtWLZA8tTpi6JmaJ4HKGH7AHLrXVE052+KfGWSAxoQn5j7PLILvk3o7XkCQDcG4ksQ9Tjyi64s0x+W/RllGR1f2fCOA0ZX0D8f6s1LCnD5x2jmAvmCQybPvW76oSHH0r/n4NTBYJpz+D9PyAECQG+WZ/QoXpyHiRr1JUdjq2BX7+EA8hsC6+pmBzOnRzbOxWxmlfMNC5gzhhOyAVMdQM8UaRgKBOSsqsWz6artj1Y="
ldc "UTF-8"
invokestatic com/bestpay/encrypt/RSA/decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "\u89e3\u5bc6\u7ed3\u679c\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 1
.limit stack 4
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
new java/security/spec/PKCS8EncodedKeySpec
dup
aload 1
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/PKCS8EncodedKeySpec/<init>([B)V
astore 1
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 1
invokevirtual java/security/KeyFactory/generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
astore 1
ldc "SHAWithRSA"
invokestatic java/security/Signature/getInstance(Ljava/lang/String;)Ljava/security/Signature;
astore 3
aload 3
aload 1
invokevirtual java/security/Signature/initSign(Ljava/security/PrivateKey;)V
aload 3
aload 0
aload 2
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/Signature/update([B)V
aload 3
invokevirtual java/security/Signature/sign()[B
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.throws java/lang/Exception
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
new java/security/spec/X509EncodedKeySpec
dup
aload 2
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
astore 2
ldc "SHAWithRSA"
invokestatic java/security/Signature/getInstance(Ljava/lang/String;)Ljava/security/Signature;
astore 4
aload 4
aload 2
invokevirtual java/security/Signature/initVerify(Ljava/security/PublicKey;)V
aload 4
aload 0
aload 3
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/Signature/update([B)V
aload 4
aload 1
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
invokevirtual java/security/Signature/verify([B)Z
ireturn
.limit locals 5
.limit stack 4
.end method
