.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/CacheLoader
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "CacheLoader"

.field private final 'diskCache' Lcom/bumptech/glide/load/engine/cache/DiskCache;

.method public <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/CacheLoader/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
return
.limit locals 2
.limit stack 2
.end method

.method public load(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "<Z:Ljava/lang/Object;>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;II)Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/engine/CacheLoader/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/get(Lcom/bumptech/glide/load/Key;)Ljava/io/File; 1
astore 6
aload 6
ifnonnull L3
aconst_null
astore 5
L4:
aload 5
areturn
L3:
aconst_null
astore 5
L0:
aload 2
aload 6
iload 3
iload 4
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 2
L1:
aload 2
astore 5
aload 2
ifnonnull L4
ldc "CacheLoader"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "CacheLoader"
ldc "Failed to decode image from cache or not present in cache"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 0
getfield com/bumptech/glide/load/engine/CacheLoader/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/delete(Lcom/bumptech/glide/load/Key;)V 1
aload 2
areturn
L2:
astore 6
aload 5
astore 2
ldc "CacheLoader"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "CacheLoader"
ldc "Exception decoding image from cache"
aload 6
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 5
astore 2
goto L1
.limit locals 7
.limit stack 4
.end method
