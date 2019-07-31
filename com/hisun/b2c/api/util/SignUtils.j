.bytecode 50.0
.class public synchronized com/hisun/b2c/api/util/SignUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static MD5SignData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc ""
invokestatic com/hisun/b2c/api/util/SignUtils/cryptMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
invokestatic com/hisun/b2c/api/util/SignUtils/cryptMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static cryptMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L5
bipush 64
newarray byte
astore 6
bipush 64
newarray byte
astore 5
L0:
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 3
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 4
L1:
aload 4
astore 0
aload 3
astore 1
L6:
aload 6
aload 1
arraylength
bipush 64
new java/lang/Integer
dup
bipush 54
invokespecial java/lang/Integer/<init>(I)V
invokevirtual java/lang/Integer/byteValue()B
invokestatic java/util/Arrays/fill([BIIB)V
aload 5
aload 1
arraylength
bipush 64
new java/lang/Integer
dup
bipush 92
invokespecial java/lang/Integer/<init>(I)V
invokevirtual java/lang/Integer/byteValue()B
invokestatic java/util/Arrays/fill([BIIB)V
iconst_0
istore 2
L7:
iload 2
aload 1
arraylength
if_icmplt L8
L3:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
L4:
aload 1
aload 6
invokevirtual java/security/MessageDigest/update([B)V
aload 1
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
astore 0
aload 1
invokevirtual java/security/MessageDigest/reset()V
aload 1
aload 5
invokevirtual java/security/MessageDigest/update([B)V
aload 1
aload 0
iconst_0
bipush 16
invokevirtual java/security/MessageDigest/update([BII)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
invokestatic com/hisun/b2c/api/util/SignUtils/toHex([B)Ljava/lang/String;
areturn
L2:
astore 3
aload 1
invokevirtual java/lang/String/getBytes()[B
astore 1
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
goto L6
L8:
aload 6
iload 2
aload 1
iload 2
baload
bipush 54
ixor
i2b
bastore
aload 5
iload 2
aload 1
iload 2
baload
bipush 92
ixor
i2b
bastore
iload 2
iconst_1
iadd
istore 2
goto L7
L5:
astore 0
aconst_null
areturn
.limit locals 7
.limit stack 6
.end method

.method private static toHex([B)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
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
if_icmplt L2
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L2:
aload 0
iload 1
baload
sipush 255
iand
istore 2
iload 2
bipush 16
if_icmpge L3
aload 3
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 3
iload 2
bipush 16
invokestatic java/lang/Integer/toString(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 4
.limit stack 4
.end method
