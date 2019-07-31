.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider
.super java/lang/Object
.implements com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider
.inner class private static LazyDiskCacheProvider inner com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider outer com/bumptech/glide/load/engine/Engine

.field private volatile 'diskCache' Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private final 'factory' Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.method public <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/factory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
return
.limit locals 2
.limit stack 2
.end method

.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
ifnonnull L4
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
ifnonnull L1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/factory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache$Factory/build()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
putfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
L1:
aload 0
getfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
ifnonnull L3
aload 0
new com/bumptech/glide/load/engine/cache/DiskCacheAdapter
dup
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheAdapter/<init>()V
putfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
L3:
aload 0
monitorexit
L4:
aload 0
getfield com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
areturn
L2:
astore 1
L5:
aload 0
monitorexit
L6:
aload 1
athrow
.limit locals 2
.limit stack 3
.end method
