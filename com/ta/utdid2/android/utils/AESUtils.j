.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/AESUtils
.super java/lang/Object

.field public static final 'TAG' Ljava/lang/String; = "AESUtils"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
aload 0
ldc "0123456789ABCDEF"
iload 1
iconst_4
ishr
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
ldc "0123456789ABCDEF"
iload 1
bipush 15
iand
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/lang/String
dup
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/ta/utdid2/android/utils/AESUtils/getRawKey([B)[B
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/toByte(Ljava/lang/String;)[B
invokestatic com/ta/utdid2/android/utils/AESUtils/decrypt([B[B)[B
invokespecial java/lang/String/<init>([B)V
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

.method private static decrypt([B[B)[B
.throws java/lang/Exception
new javax/crypto/spec/SecretKeySpec
dup
aload 0
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 0
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_2
aload 0
new javax/crypto/spec/IvParameterSpec
dup
aload 2
invokevirtual javax/crypto/Cipher/getBlockSize()I
newarray byte
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
aload 2
aload 1
invokevirtual javax/crypto/Cipher/doFinal([B)[B
areturn
.limit locals 3
.limit stack 6
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 2
L0:
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/ta/utdid2/android/utils/AESUtils/getRawKey([B)[B
aload 1
invokevirtual java/lang/String/getBytes()[B
invokestatic com/ta/utdid2/android/utils/AESUtils/encrypt([B[B)[B
astore 0
L1:
aload 2
astore 1
aload 0
ifnull L3
aload 0
invokestatic com/ta/utdid2/android/utils/AESUtils/toHex([B)Ljava/lang/String;
astore 1
L3:
aload 1
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
astore 0
goto L1
.limit locals 3
.limit stack 2
.end method

.method private static encrypt([B[B)[B
.throws java/lang/Exception
new javax/crypto/spec/SecretKeySpec
dup
aload 0
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 0
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_1
aload 0
new javax/crypto/spec/IvParameterSpec
dup
aload 2
invokevirtual javax/crypto/Cipher/getBlockSize()I
newarray byte
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
aload 2
aload 1
invokevirtual javax/crypto/Cipher/doFinal([B)[B
areturn
.limit locals 3
.limit stack 6
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
new java/lang/String
dup
aload 0
invokestatic com/ta/utdid2/android/utils/AESUtils/toByte(Ljava/lang/String;)[B
invokespecial java/lang/String/<init>([B)V
areturn
.limit locals 1
.limit stack 3
.end method

.method private static getRawKey([B)[B
.throws java/lang/Exception
ldc "AES"
invokestatic javax/crypto/KeyGenerator/getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
astore 1
ldc "SHA1PRNG"
ldc "Crypto"
invokestatic java/security/SecureRandom/getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
astore 2
aload 2
aload 0
invokevirtual java/security/SecureRandom/setSeed([B)V
aload 1
sipush 128
aload 2
invokevirtual javax/crypto/KeyGenerator/init(ILjava/security/SecureRandom;)V
aload 1
invokevirtual javax/crypto/KeyGenerator/generateKey()Ljavax/crypto/SecretKey;
invokeinterface javax/crypto/SecretKey/getEncoded()[B 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public static toByte(Ljava/lang/String;)[B
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

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/ta/utdid2/android/utils/AESUtils/toHex([B)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static toHex([B)Ljava/lang/String;
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
astore 2
iconst_0
istore 1
L1:
iload 1
aload 0
arraylength
if_icmpge L2
aload 2
aload 0
iload 1
baload
invokestatic com/ta/utdid2/android/utils/AESUtils/appendHex(Ljava/lang/StringBuffer;B)V
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method
