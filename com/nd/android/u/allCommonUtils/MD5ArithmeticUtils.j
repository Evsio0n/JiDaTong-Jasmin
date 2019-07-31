.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
.super java/lang/Object

.field private static 'messageDigestMD5' Ljava/security/MessageDigest;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
putstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
L1:
return
L2:
astore 1
new java/lang/RuntimeException
dup
ldc "No MD5 algorithm."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public static getFileEncryptString(Ljava/io/File;)Ljava/lang/String;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L4 to L6 using L2
.catch all from L7 to L2 using L2
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorenter
L0:
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
astore 1
L1:
aload 1
ifnonnull L4
L3:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
putstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
L4:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 1
aload 1
invokevirtual java/io/FileInputStream/getChannel()Ljava/nio/channels/FileChannel;
getstatic java/nio/channels/FileChannel$MapMode/READ_ONLY Ljava/nio/channels/FileChannel$MapMode;
lconst_0
aload 0
invokevirtual java/io/File/length()J
invokevirtual java/nio/channels/FileChannel/map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
astore 0
aload 1
invokevirtual java/io/FileInputStream/close()V
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
aload 0
invokevirtual java/security/MessageDigest/update(Ljava/nio/ByteBuffer;)V
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
astore 0
L6:
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorexit
aload 0
areturn
L5:
astore 0
L7:
new java/lang/RuntimeException
dup
ldc "No MD5 algorithm."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 6
.end method

.method private static getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 0
invokevirtual java/security/MessageDigest/digest()[B
astore 0
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 0
iload 1
baload
istore 3
aload 4
iload 3
iconst_4
ishr
bipush 15
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 3
bipush 15
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 5
.limit stack 3
.end method

.method public static getMD5OfBytes([B)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
ldc ""
astore 3
aload 3
astore 2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
aload 0
invokevirtual java/security/MessageDigest/digest([B)[B
astore 4
L1:
iconst_0
istore 1
aload 3
astore 0
L7:
aload 0
astore 2
L3:
iload 1
aload 4
arraylength
if_icmplt L8
L4:
aload 0
areturn
L8:
aload 0
astore 2
L5:
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
iload 1
baload
sipush 255
iand
sipush 256
iadd
bipush 16
invokestatic java/lang/Integer/toString(II)Ljava/lang/String;
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L6:
iload 1
iconst_1
iadd
istore 1
goto L7
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L4 to L6 using L2
.catch all from L7 to L2 using L2
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorenter
aload 0
astore 1
aload 0
ifnonnull L0
ldc ""
astore 1
L0:
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
astore 0
L1:
aload 0
ifnonnull L4
L3:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
putstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
L4:
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
aload 1
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
getstatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/messageDigestMD5 Ljava/security/MessageDigest;
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
astore 0
L6:
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorexit
aload 0
areturn
L5:
astore 0
L7:
new java/lang/RuntimeException
dup
ldc "No MD5 algorithm."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
ldc com/nd/android/u/allCommonUtils/MD5ArithmeticUtils
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 3
.end method

.method public static md5Sum(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/FileNotFoundException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/io/FileNotFoundException from L5 to L6 using L3
.catch java/io/IOException from L5 to L6 using L4
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L2
.catch java/io/FileNotFoundException from L7 to L8 using L3
.catch java/io/IOException from L7 to L8 using L4
.catch java/security/NoSuchAlgorithmException from L9 to L10 using L2
.catch java/io/FileNotFoundException from L9 to L10 using L3
.catch java/io/IOException from L9 to L10 using L4
.catch java/security/NoSuchAlgorithmException from L11 to L12 using L2
.catch java/io/FileNotFoundException from L11 to L12 using L3
.catch java/io/IOException from L11 to L12 using L4
.catch java/security/NoSuchAlgorithmException from L13 to L14 using L2
.catch java/io/FileNotFoundException from L13 to L14 using L3
.catch java/io/IOException from L13 to L14 using L4
.catch java/security/NoSuchAlgorithmException from L15 to L16 using L2
.catch java/io/FileNotFoundException from L15 to L16 using L3
.catch java/io/IOException from L15 to L16 using L4
ldc ""
astore 4
aload 4
astore 1
aload 4
astore 2
aload 4
astore 3
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 5
L1:
aload 4
astore 1
aload 4
astore 2
aload 4
astore 3
L5:
new java/security/DigestInputStream
dup
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
aload 5
invokespecial java/security/DigestInputStream/<init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
astore 0
L6:
aload 4
astore 1
aload 4
astore 2
aload 4
astore 3
L7:
aload 0
invokevirtual java/security/DigestInputStream/read()I
iconst_m1
if_icmpne L6
L8:
aload 4
astore 1
aload 4
astore 2
aload 4
astore 3
L9:
aload 0
invokevirtual java/security/DigestInputStream/close()V
L10:
aload 4
astore 1
aload 4
astore 2
aload 4
astore 3
L11:
new java/math/BigInteger
dup
iconst_1
aload 5
invokevirtual java/security/MessageDigest/digest()[B
invokespecial java/math/BigInteger/<init>(I[B)V
bipush 16
invokevirtual java/math/BigInteger/toString(I)Ljava/lang/String;
astore 0
L12:
aload 0
astore 1
aload 0
astore 2
aload 0
astore 3
L13:
aload 0
invokevirtual java/lang/String/length()I
bipush 31
if_icmpne L17
L14:
aload 0
astore 1
aload 0
astore 2
aload 0
astore 3
L15:
new java/lang/StringBuilder
dup
ldc "0"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L16:
aload 0
areturn
L17:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L18:
aload 1
areturn
L3:
astore 0
aload 0
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 2
astore 1
goto L18
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 3
astore 1
goto L18
.limit locals 6
.limit stack 5
.end method
