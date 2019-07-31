.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory
.super com/bumptech/glide/load/engine/cache/DiskLruCacheFactory
.inner class inner com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc "image_manager_disk_cache"
ldc_w 262144000
invokespecial com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
ldc "image_manager_disk_cache"
iload 2
invokespecial com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
new com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1/<init>(Landroid/content/Context;Ljava/lang/String;)V
iload 3
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheFactory/<init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
return
.limit locals 4
.limit stack 5
.end method
