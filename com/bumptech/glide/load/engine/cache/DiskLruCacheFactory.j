.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/cache/DiskLruCacheFactory
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskCache$Factory
.inner class inner com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1
.inner class inner com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2
.inner class public static abstract interface CacheDirectoryGetter inner com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter outer com/bumptech/glide/load/engine/cache/DiskLruCacheFactory

.field private final 'cacheDirectoryGetter' Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

.field private final 'diskCacheSize' I

.method public <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 2
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/diskCacheSize I
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/cacheDirectoryGetter Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
new com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1
dup
aload 1
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1/<init>(Ljava/lang/String;)V
iload 2
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/<init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;I)V
aload 0
new com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2/<init>(Ljava/lang/String;Ljava/lang/String;)V
iload 3
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/<init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/cacheDirectoryGetter Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
invokeinterface com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter/getCacheDirectory()Ljava/io/File; 0
astore 1
aload 1
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 1
invokevirtual java/io/File/mkdirs()Z
ifne L2
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
aload 1
invokevirtual java/io/File/isDirectory()Z
ifeq L1
L2:
aload 1
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/diskCacheSize I
invokestatic com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;
areturn
.limit locals 2
.limit stack 2
.end method
