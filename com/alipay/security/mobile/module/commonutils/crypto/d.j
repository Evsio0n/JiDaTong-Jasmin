.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/d
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
iconst_0
istore 1
L0:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L3
L1:
aconst_null
areturn
L3:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 2
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 2
invokevirtual java/security/MessageDigest/digest()[B
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L4:
iload 1
aload 0
arraylength
if_icmpge L6
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
L5:
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 7
.end method

.method private static a([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
iconst_0
istore 1
aload 0
ifnull L6
aload 0
arraylength
ifne L0
L6:
ldc ""
areturn
L0:
ldc "SHA1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 2
aload 2
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 2
invokevirtual java/security/MessageDigest/digest()[B
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L1:
iload 1
aload 0
arraylength
if_icmpge L4
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
L3:
iload 1
iconst_1
iadd
istore 1
goto L1
L4:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L5:
aload 0
areturn
L2:
astore 0
new java/lang/RuntimeException
dup
aload 0
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 7
.end method

.method private static b(Ljava/lang/String;)[B
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L3
L1:
aconst_null
areturn
L3:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
aload 1
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
astore 0
L4:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
iconst_0
istore 1
L0:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L3
L1:
aconst_null
areturn
L3:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 2
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 2
invokevirtual java/security/MessageDigest/digest()[B
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L4:
iload 1
bipush 16
if_icmpge L7
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
goto L4
L7:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L8:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 7
.end method
