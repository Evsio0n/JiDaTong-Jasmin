.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/SafeKeyGenerator
.super java/lang/Object

.field private final 'loadIdToSafeHash' Lcom/bumptech/glide/util/LruCache; signature "Lcom/bumptech/glide/util/LruCache<Lcom/bumptech/glide/load/Key;Ljava/lang/String;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/util/LruCache
dup
sipush 1000
invokespecial com/bumptech/glide/util/LruCache/<init>(I)V
putfield com/bumptech/glide/load/engine/cache/SafeKeyGenerator/loadIdToSafeHash Lcom/bumptech/glide/util/LruCache;
return
.limit locals 1
.limit stack 4
.end method

.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L3 to L4 using L5
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L6
.catch all from L7 to L8 using L9
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L9
aload 0
getfield com/bumptech/glide/load/engine/cache/SafeKeyGenerator/loadIdToSafeHash Lcom/bumptech/glide/util/LruCache;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/SafeKeyGenerator/loadIdToSafeHash Lcom/bumptech/glide/util/LruCache;
aload 1
invokevirtual com/bumptech/glide/util/LruCache/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 2
aload 3
monitorexit
L1:
aload 2
astore 3
aload 2
ifnonnull L14
L3:
ldc "SHA-256"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 3
aload 1
aload 3
invokeinterface com/bumptech/glide/load/Key/updateDiskCacheKey(Ljava/security/MessageDigest;)V 1
aload 3
invokevirtual java/security/MessageDigest/digest()[B
invokestatic com/bumptech/glide/util/Util/sha256BytesToHex([B)Ljava/lang/String;
astore 3
L4:
aload 3
astore 2
L15:
aload 0
getfield com/bumptech/glide/load/engine/cache/SafeKeyGenerator/loadIdToSafeHash Lcom/bumptech/glide/util/LruCache;
astore 3
aload 3
monitorenter
L7:
aload 0
getfield com/bumptech/glide/load/engine/cache/SafeKeyGenerator/loadIdToSafeHash Lcom/bumptech/glide/util/LruCache;
aload 1
aload 2
invokevirtual com/bumptech/glide/util/LruCache/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
monitorexit
L8:
aload 2
astore 3
L14:
aload 3
areturn
L2:
astore 1
L10:
aload 3
monitorexit
L11:
aload 1
athrow
L5:
astore 3
aload 3
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L15
L6:
astore 3
aload 3
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
goto L15
L9:
astore 1
L12:
aload 3
monitorexit
L13:
aload 1
athrow
.limit locals 4
.limit stack 3
.end method
