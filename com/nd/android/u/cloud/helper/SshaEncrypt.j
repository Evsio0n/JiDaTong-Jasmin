.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/SshaEncrypt
.super java/lang/Object

.field private static 'SecretKey' Ljava/lang/String;

.field private static 'inst' Lcom/nd/android/u/cloud/helper/SshaEncrypt;

.field private 'sha' Ljava/security/MessageDigest;

.method static <clinit>()V
ldc "test_ssha_key_word"
putstatic com/nd/android/u/cloud/helper/SshaEncrypt/SecretKey Ljava/lang/String;
new com/nd/android/u/cloud/helper/SshaEncrypt
dup
ldc "SHA-1"
invokespecial com/nd/android/u/cloud/helper/SshaEncrypt/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/cloud/helper/SshaEncrypt/inst Lcom/nd/android/u/cloud/helper/SshaEncrypt;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;)V
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/helper/SshaEncrypt/sha Ljava/security/MessageDigest;
L0:
aload 0
aload 1
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
putfield com/nd/android/u/cloud/helper/SshaEncrypt/sha Ljava/security/MessageDigest;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method private static concatenate([B[B)[B
aload 0
arraylength
aload 1
arraylength
iadd
newarray byte
astore 2
aload 0
iconst_0
aload 2
iconst_0
aload 0
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 1
iconst_0
aload 2
aload 0
arraylength
aload 1
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/helper/SshaEncrypt;
getstatic com/nd/android/u/cloud/helper/SshaEncrypt/inst Lcom/nd/android/u/cloud/helper/SshaEncrypt;
areturn
.limit locals 0
.limit stack 1
.end method

.method public createDigest(Ljava/lang/String;)Ljava/lang/String;
aload 0
getstatic com/nd/android/u/cloud/helper/SshaEncrypt/SecretKey Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
aload 1
invokevirtual com/nd/android/u/cloud/helper/SshaEncrypt/createDigest([BLjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokevirtual java/lang/String/getBytes()[B
aload 2
invokevirtual com/nd/android/u/cloud/helper/SshaEncrypt/createDigest([BLjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public createDigest([BLjava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/helper/SshaEncrypt/sha Ljava/security/MessageDigest;
invokevirtual java/security/MessageDigest/reset()V
aload 0
getfield com/nd/android/u/cloud/helper/SshaEncrypt/sha Ljava/security/MessageDigest;
aload 2
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
new java/lang/String
dup
new org/bouncycastle/util/encoders/BASE64Decoder
dup
new org/bouncycastle/util/encoders/BASE64Encoder
dup
aload 0
getfield com/nd/android/u/cloud/helper/SshaEncrypt/sha Ljava/security/MessageDigest;
invokevirtual java/security/MessageDigest/digest()[B
aload 1
invokestatic com/nd/android/u/cloud/helper/SshaEncrypt/concatenate([B[B)[B
invokespecial org/bouncycastle/util/encoders/BASE64Encoder/<init>([B)V
invokevirtual org/bouncycastle/util/encoders/BASE64Encoder/encode()[C
invokespecial org/bouncycastle/util/encoders/BASE64Decoder/<init>([C)V
invokevirtual org/bouncycastle/util/encoders/BASE64Decoder/decode()[B
invokespecial java/lang/String/<init>([B)V
areturn
.limit locals 3
.limit stack 8
.end method
