.bytecode 50.0
.class public final synchronized com/alipay/sdk/encrypt/d
.super java/lang/Object

.field private static final 'a' Ljava/lang/String; = "RSA"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/lang/Exception from L5 to L8 using L6
.catch all from L5 to L8 using L7
.catch java/lang/Exception from L9 to L10 using L6
.catch all from L9 to L10 using L7
.catch java/io/IOException from L10 to L11 using L12
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/IOException from L16 to L17 using L18
aconst_null
astore 5
L0:
new java/security/spec/X509EncodedKeySpec
dup
aload 1
invokestatic com/alipay/sdk/encrypt/a/a(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
astore 1
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 1
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
astore 6
ldc "RSA/ECB/PKCS1Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 1
aload 1
iconst_1
aload 6
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 6
aload 1
invokevirtual javax/crypto/Cipher/getBlockSize()I
istore 4
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 0
L1:
iconst_0
istore 2
L4:
iload 2
aload 6
arraylength
if_icmpge L9
aload 6
arraylength
iload 2
isub
iload 4
if_icmpge L19
aload 6
arraylength
iload 2
isub
istore 3
L5:
aload 0
aload 1
aload 6
iload 2
iload 3
invokevirtual javax/crypto/Cipher/doFinal([BII)[B
invokevirtual java/io/ByteArrayOutputStream/write([B)V
L8:
iload 2
iload 4
iadd
istore 2
goto L4
L9:
aload 0
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 1
L10:
aload 0
invokevirtual java/io/ByteArrayOutputStream/close()V
L11:
aload 1
areturn
L2:
astore 0
aconst_null
astore 0
L20:
aload 5
astore 1
aload 0
ifnull L11
L13:
aload 0
invokevirtual java/io/ByteArrayOutputStream/close()V
L14:
aconst_null
areturn
L15:
astore 0
aconst_null
areturn
L3:
astore 1
aconst_null
astore 0
L21:
aload 0
ifnull L17
L16:
aload 0
invokevirtual java/io/ByteArrayOutputStream/close()V
L17:
aload 1
athrow
L12:
astore 0
aload 1
areturn
L18:
astore 0
goto L17
L7:
astore 1
goto L21
L6:
astore 1
goto L20
L19:
iload 4
istore 3
goto L5
.limit locals 7
.limit stack 5
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
.throws java/security/NoSuchAlgorithmException
.throws java/lang/Exception
new java/security/spec/X509EncodedKeySpec
dup
aload 1
invokestatic com/alipay/sdk/encrypt/a/a(Ljava/lang/String;)[B
invokespecial java/security/spec/X509EncodedKeySpec/<init>([B)V
astore 1
aload 0
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 1
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
areturn
.limit locals 2
.limit stack 3
.end method
