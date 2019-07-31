.bytecode 50.0
.class public synchronized com/hisun/b2c/api/util/MD5Util
.super java/lang/Object

.field public 'str' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static final md5([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
bipush 16
newarray char
astore 6
aload 6
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 49
castore
dup
iconst_2
ldc_w 50
castore
dup
iconst_3
ldc_w 51
castore
dup
iconst_4
ldc_w 52
castore
dup
iconst_5
ldc_w 53
castore
dup
bipush 6
ldc_w 54
castore
dup
bipush 7
ldc_w 55
castore
dup
bipush 8
ldc_w 56
castore
dup
bipush 9
ldc_w 57
castore
dup
bipush 10
ldc_w 97
castore
dup
bipush 11
ldc_w 98
castore
dup
bipush 12
ldc_w 99
castore
dup
bipush 13
ldc_w 100
castore
dup
bipush 14
ldc_w 101
castore
dup
bipush 15
ldc_w 102
castore
pop
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 7
aload 7
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
aload 0
arraylength
istore 3
iload 3
iconst_2
imul
newarray char
astore 7
L1:
iconst_0
istore 1
iconst_0
istore 2
L5:
iload 1
iload 3
if_icmplt L4
L3:
new java/lang/String
dup
aload 7
invokespecial java/lang/String/<init>([C)V
areturn
L4:
aload 0
iload 1
baload
istore 4
iload 2
iconst_1
iadd
istore 5
aload 7
iload 2
aload 6
iload 4
iconst_4
iushr
bipush 15
iand
caload
castore
iload 5
iconst_1
iadd
istore 2
aload 7
iload 5
aload 6
iload 4
bipush 15
iand
caload
castore
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
astore 0
aconst_null
areturn
.limit locals 8
.limit stack 5
.end method

.method public static readByteArrayFromFile(Ljava/io/File;)[B
.throws java/lang/Exception
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
sipush 1024
newarray byte
astore 3
L0:
aload 0
aload 3
invokevirtual java/io/FileInputStream/read([B)I
istore 1
iload 1
ifgt L1
aload 2
invokevirtual java/io/ByteArrayOutputStream/flush()V
aload 0
invokevirtual java/io/FileInputStream/close()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 0
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 0
areturn
L1:
aload 2
aload 3
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
goto L0
.limit locals 4
.limit stack 4
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
.throws java/security/NoSuchAlgorithmException
ldc "SHA1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 4
aload 4
aload 0
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 0
aload 4
invokevirtual java/security/MessageDigest/digest()[B
astore 4
iconst_0
istore 1
L0:
iload 1
aload 4
arraylength
if_icmplt L1
aload 0
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L1:
aload 4
iload 1
baload
istore 3
iload 3
istore 2
iload 3
ifge L2
iload 3
sipush 256
iadd
istore 2
L2:
iload 2
bipush 16
if_icmpge L3
aload 0
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 0
iload 2
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 5
.limit stack 2
.end method

.method public static final sha1([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
bipush 16
newarray char
astore 6
aload 6
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 49
castore
dup
iconst_2
ldc_w 50
castore
dup
iconst_3
ldc_w 51
castore
dup
iconst_4
ldc_w 52
castore
dup
iconst_5
ldc_w 53
castore
dup
bipush 6
ldc_w 54
castore
dup
bipush 7
ldc_w 55
castore
dup
bipush 8
ldc_w 56
castore
dup
bipush 9
ldc_w 57
castore
dup
bipush 10
ldc_w 97
castore
dup
bipush 11
ldc_w 98
castore
dup
bipush 12
ldc_w 99
castore
dup
bipush 13
ldc_w 100
castore
dup
bipush 14
ldc_w 101
castore
dup
bipush 15
ldc_w 102
castore
pop
L0:
ldc "SHA1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 7
aload 7
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
aload 0
arraylength
istore 3
iload 3
iconst_2
imul
newarray char
astore 7
L1:
iconst_0
istore 1
iconst_0
istore 2
L5:
iload 1
iload 3
if_icmplt L4
L3:
new java/lang/String
dup
aload 7
invokespecial java/lang/String/<init>([C)V
areturn
L4:
aload 0
iload 1
baload
istore 4
iload 2
iconst_1
iadd
istore 5
aload 7
iload 2
aload 6
iload 4
iconst_4
iushr
bipush 15
iand
caload
castore
iload 5
iconst_1
iadd
istore 2
aload 7
iload 5
aload 6
iload 4
bipush 15
iand
caload
castore
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
astore 0
aconst_null
areturn
.limit locals 8
.limit stack 5
.end method

.method public md5s(Ljava/lang/String;)V
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/NoSuchAlgorithmException from L6 to L7 using L2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 5
aload 5
aload 1
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
aload 5
invokevirtual java/security/MessageDigest/digest()[B
astore 1
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
L1:
iconst_0
istore 2
L3:
iload 2
aload 1
arraylength
if_icmplt L8
aload 0
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
putfield com/hisun/b2c/api/util/MD5Util/str Ljava/lang/String;
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "result: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "result: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
bipush 8
bipush 24
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
L4:
return
L9:
iload 3
bipush 16
if_icmpge L6
L5:
aload 5
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
aload 5
iload 3
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
astore 1
aload 1
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
return
L8:
aload 1
iload 2
baload
istore 4
iload 4
istore 3
iload 4
ifge L9
iload 4
sipush 256
iadd
istore 3
goto L9
.limit locals 6
.limit stack 5
.end method
