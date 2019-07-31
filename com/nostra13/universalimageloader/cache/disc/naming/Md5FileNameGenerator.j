.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator

.field private static final 'HASH_ALGORITHM' Ljava/lang/String; = "MD5"

.field private static final 'RADIX' I = 36


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getMD5([B)[B
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 2
aload 2
aload 1
invokevirtual java/security/MessageDigest/update([B)V
aload 2
invokevirtual java/security/MessageDigest/digest()[B
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public generate(Ljava/lang/String;)Ljava/lang/String;
new java/math/BigInteger
dup
aload 0
aload 1
invokevirtual java/lang/String/getBytes()[B
invokespecial com/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator/getMD5([B)[B
invokespecial java/math/BigInteger/<init>([B)V
invokevirtual java/math/BigInteger/abs()Ljava/math/BigInteger;
bipush 36
invokevirtual java/math/BigInteger/toString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
