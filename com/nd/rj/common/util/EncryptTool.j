.bytecode 50.0
.class public synchronized com/nd/rj/common/util/EncryptTool
.super java/lang/Object

.field public static final 'TYPE_NORMAL' Ljava/lang/String; = "UTF-8"

.field public static final 'TYPE_PSW' Ljava/lang/String; = "GB2312"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
iload 1
newarray byte
astore 4
iconst_0
istore 3
L0:
iload 3
iconst_4
if_icmpge L1
iload 3
iload 1
if_icmpge L1
aload 4
iload 3
iload 0
iload 3
bipush 8
imul
ishr
sipush 255
iand
i2b
bastore
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 2
aload 4
iconst_0
aload 4
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public static appendLongToByteArrayBuffer(JILorg/apache/http/util/ByteArrayBuffer;)[B
iload 2
newarray byte
astore 5
iconst_0
istore 4
L0:
iload 4
bipush 8
if_icmpge L1
iload 4
iload 2
if_icmpge L1
aload 5
iload 4
lload 0
iload 4
bipush 8
imul
lshr
ldc2_w 255L
land
l2i
i2b
bastore
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
aload 3
aload 5
iconst_0
aload 5
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 5
areturn
.limit locals 6
.limit stack 6
.end method

.method public static byte2Hex([B)Ljava/lang/String;
ldc ""
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmpge L1
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
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L3
L1:
aload 2
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 2
.end method

.method public static byteArrayToInt([B)I
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmpge L1
iload 2
aload 0
iload 1
baload
sipush 255
iand
iload 1
bipush 8
imul
ishl
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iload 2
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static byteArrayToLong([B)J
lconst_0
lstore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmpge L1
lload 2
aload 0
iload 1
baload
sipush 255
iand
iload 1
bipush 8
imul
ishl
i2l
ladd
lstore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
lload 2
lreturn
.limit locals 4
.limit stack 5
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc ""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 0
ifnull L0
aload 0
arraylength
ifgt L1
L0:
aconst_null
areturn
L1:
iconst_0
istore 1
L2:
iload 1
aload 0
arraylength
if_icmpge L3
aload 0
iload 1
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
astore 3
aload 3
invokevirtual java/lang/String/length()I
iconst_2
if_icmpge L4
aload 2
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L4:
aload 2
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static desDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
new javax/crypto/spec/DESKeySpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokespecial javax/crypto/spec/DESKeySpec/<init>([B)V
astore 2
ldc "DES"
invokestatic javax/crypto/SecretKeyFactory/getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
aload 2
invokevirtual javax/crypto/SecretKeyFactory/generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
astore 2
ldc "DES/CBC/PKCS7Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_2
aload 2
new javax/crypto/spec/IvParameterSpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
new java/lang/String
dup
aload 3
aload 0
invokestatic com/nd/rj/common/util/EncryptTool/hex2Byte(Ljava/lang/String;)[B
invokevirtual javax/crypto/Cipher/doFinal([B)[B
ldc "GB2312"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
areturn
.limit locals 4
.limit stack 7
.end method

.method public static desEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
.throws java/lang/Exception
new javax/crypto/spec/DESKeySpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokespecial javax/crypto/spec/DESKeySpec/<init>([B)V
astore 2
ldc "DES"
invokestatic javax/crypto/SecretKeyFactory/getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
aload 2
invokevirtual javax/crypto/SecretKeyFactory/generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
astore 2
ldc "DES/CBC/PKCS7Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_1
aload 2
new javax/crypto/spec/IvParameterSpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
aload 3
aload 0
ldc "GB2312"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual javax/crypto/Cipher/doFinal([B)[B
areturn
.limit locals 4
.limit stack 7
.end method

.method public static getMD5Byte(Ljava/lang/String;Ljava/lang/String;)[B
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/security/NoSuchAlgorithmException from L4 to L5 using L2
.catch java/io/UnsupportedEncodingException from L4 to L5 using L3
.catch java/security/NoSuchAlgorithmException from L6 to L7 using L2
.catch java/io/UnsupportedEncodingException from L6 to L7 using L3
.catch java/security/NoSuchAlgorithmException from L8 to L9 using L2
.catch java/io/UnsupportedEncodingException from L8 to L9 using L3
.catch java/security/NoSuchAlgorithmException from L10 to L11 using L2
.catch java/io/UnsupportedEncodingException from L10 to L11 using L3
.catch java/security/NoSuchAlgorithmException from L12 to L13 using L2
.catch java/io/UnsupportedEncodingException from L12 to L13 using L3
.catch java/security/NoSuchAlgorithmException from L14 to L15 using L2
.catch java/io/UnsupportedEncodingException from L14 to L15 using L3
.catch java/security/NoSuchAlgorithmException from L16 to L17 using L2
.catch java/io/UnsupportedEncodingException from L16 to L17 using L3
.catch java/security/NoSuchAlgorithmException from L18 to L19 using L2
.catch java/io/UnsupportedEncodingException from L18 to L19 using L3
.catch java/security/NoSuchAlgorithmException from L20 to L21 using L2
.catch java/io/UnsupportedEncodingException from L20 to L21 using L3
.catch java/security/NoSuchAlgorithmException from L22 to L23 using L2
.catch java/io/UnsupportedEncodingException from L22 to L23 using L3
.catch java/security/NoSuchAlgorithmException from L24 to L25 using L2
.catch java/io/UnsupportedEncodingException from L24 to L25 using L3
.catch java/security/NoSuchAlgorithmException from L26 to L27 using L2
.catch java/io/UnsupportedEncodingException from L26 to L27 using L3
aconst_null
astore 3
aconst_null
astore 2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 4
L1:
aload 4
astore 2
aload 4
astore 3
L4:
aload 4
invokevirtual java/security/MessageDigest/reset()V
L5:
aload 4
astore 2
aload 4
astore 3
L6:
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 5
L7:
aload 4
astore 2
aload 4
astore 3
L8:
new org/apache/http/util/ByteArrayBuffer
dup
iconst_1
invokespecial org/apache/http/util/ByteArrayBuffer/<init>(I)V
astore 0
L9:
aload 4
astore 2
aload 4
astore 3
L10:
aload 0
aload 5
iconst_0
aload 5
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
L11:
aload 4
astore 2
aload 4
astore 3
L12:
ldc "GB2312"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L25
L13:
aload 4
astore 2
aload 4
astore 3
L14:
aload 0
bipush -93
invokevirtual org/apache/http/util/ByteArrayBuffer/append(I)V
L15:
aload 4
astore 2
aload 4
astore 3
L16:
aload 0
bipush -84
invokevirtual org/apache/http/util/ByteArrayBuffer/append(I)V
L17:
aload 4
astore 2
aload 4
astore 3
L18:
aload 0
bipush -95
invokevirtual org/apache/http/util/ByteArrayBuffer/append(I)V
L19:
aload 4
astore 2
aload 4
astore 3
L20:
aload 0
bipush -93
invokevirtual org/apache/http/util/ByteArrayBuffer/append(I)V
L21:
aload 4
astore 2
aload 4
astore 3
L22:
ldc "fdjf,jkgfkl"
aload 1
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 1
L23:
aload 4
astore 2
aload 4
astore 3
L24:
aload 0
aload 1
iconst_0
aload 1
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
L25:
aload 4
astore 2
aload 4
astore 3
L26:
aload 4
aload 0
invokevirtual org/apache/http/util/ByteArrayBuffer/toByteArray()[B
invokevirtual java/security/MessageDigest/update([B)V
L27:
aload 4
astore 2
L28:
aload 2
invokevirtual java/security/MessageDigest/digest()[B
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "NoSuchAlgorithmException caught!"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
iconst_m1
invokestatic java/lang/System/exit(I)V
goto L28
L3:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "UnsupportedEncodingException caught!"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
iconst_m1
invokestatic java/lang/System/exit(I)V
aload 3
astore 2
goto L28
.limit locals 6
.limit stack 4
.end method

.method public static getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokestatic com/nd/rj/common/util/EncryptTool/getMD5Byte(Ljava/lang/String;Ljava/lang/String;)[B
invokestatic com/nd/rj/common/util/EncryptTool/byte2Hex([B)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static hex2Byte(Ljava/lang/String;)[B
aload 0
invokevirtual java/lang/String/length()I
iconst_2
irem
iconst_1
if_icmpne L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 0
invokevirtual java/lang/String/length()I
iconst_2
idiv
newarray byte
astore 3
iconst_0
istore 1
L2:
aload 3
astore 2
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L1
aload 3
iload 1
iconst_2
idiv
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iload 1
iload 1
iconst_2
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/Integer/decode(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/byteValue()B
bastore
iload 1
iconst_2
iadd
istore 1
goto L2
.limit locals 4
.limit stack 7
.end method

.method public static stringToByte(Ljava/lang/String;[B)I
.throws java/lang/Exception
aload 1
arraylength
aload 0
invokevirtual java/lang/String/length()I
iconst_2
idiv
if_icmpge L0
new java/lang/Exception
dup
ldc "byte array too small"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L0:
iconst_0
istore 2
new java/lang/StringBuffer
dup
iconst_2
invokespecial java/lang/StringBuffer/<init>(I)V
astore 5
iconst_0
istore 3
L1:
iload 3
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L2
aload 5
iconst_0
aload 0
iload 3
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/insert(IC)Ljava/lang/StringBuffer;
pop
aload 5
iconst_1
aload 0
iload 3
iconst_1
iadd
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuffer/insert(IC)Ljava/lang/StringBuffer;
pop
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
bipush 16
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;I)I
istore 4
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "byte hex value:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 1
iload 2
iload 4
i2b
bastore
aload 5
iconst_0
iconst_2
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
iload 3
iconst_1
iadd
iconst_1
iadd
istore 3
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
iload 2
ireturn
.limit locals 6
.limit stack 5
.end method
