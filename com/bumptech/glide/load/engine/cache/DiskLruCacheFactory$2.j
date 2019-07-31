.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter
.enclosing method com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/<init>(Ljava/lang/String;Ljava/lang/String;I)V
.inner class inner com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2

.field final synthetic 'val$diskCacheFolder' Ljava/lang/String;

.field final synthetic 'val$diskCacheName' Ljava/lang/String;

.method <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2/val$diskCacheFolder Ljava/lang/String;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2/val$diskCacheName Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public getCacheDirectory()Ljava/io/File;
new java/io/File
dup
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2/val$diskCacheFolder Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2/val$diskCacheName Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method
