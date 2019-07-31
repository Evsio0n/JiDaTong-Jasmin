.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter
.enclosing method com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory/<init>(Landroid/content/Context;Ljava/lang/String;I)V
.inner class inner com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$diskCacheName' Ljava/lang/String;

.method <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1/val$context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1/val$diskCacheName Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public getCacheDirectory()Ljava/io/File;
aload 0
getfield com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1/val$context Landroid/content/Context;
invokevirtual android/content/Context/getExternalCacheDir()Ljava/io/File;
astore 2
aload 2
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 2
astore 1
aload 0
getfield com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1/val$diskCacheName Ljava/lang/String;
ifnull L1
new java/io/File
dup
aload 2
aload 0
getfield com/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1/val$diskCacheName Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 3
.limit stack 4
.end method
