.bytecode 50.0
.class public synchronized com/bumptech/glide/GlideBuilder
.super java/lang/Object
.inner class inner com/bumptech/glide/GlideBuilder$1

.field private 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'context' Landroid/content/Context;

.field private 'decodeFormat' Lcom/bumptech/glide/load/DecodeFormat;

.field private 'diskCacheFactory' Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private 'diskCacheService' Ljava/util/concurrent/ExecutorService;

.field private 'engine' Lcom/bumptech/glide/load/engine/Engine;

.field private 'memoryCache' Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private 'sourceService' Ljava/util/concurrent/ExecutorService;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/GlideBuilder/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method createGlide()Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/GlideBuilder/sourceService Ljava/util/concurrent/ExecutorService;
ifnonnull L0
aload 0
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
dup
iconst_1
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/availableProcessors()I
invokestatic java/lang/Math/max(II)I
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/<init>(I)V
putfield com/bumptech/glide/GlideBuilder/sourceService Ljava/util/concurrent/ExecutorService;
L0:
aload 0
getfield com/bumptech/glide/GlideBuilder/diskCacheService Ljava/util/concurrent/ExecutorService;
ifnonnull L1
aload 0
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
dup
iconst_1
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/<init>(I)V
putfield com/bumptech/glide/GlideBuilder/diskCacheService Ljava/util/concurrent/ExecutorService;
L1:
new com/bumptech/glide/load/engine/cache/MemorySizeCalculator
dup
aload 0
getfield com/bumptech/glide/GlideBuilder/context Landroid/content/Context;
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator/<init>(Landroid/content/Context;)V
astore 1
aload 0
getfield com/bumptech/glide/GlideBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
ifnonnull L2
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L3
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool
dup
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/MemorySizeCalculator/getBitmapPoolSize()I
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/<init>(I)V
putfield com/bumptech/glide/GlideBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
L2:
aload 0
getfield com/bumptech/glide/GlideBuilder/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
ifnonnull L4
aload 0
new com/bumptech/glide/load/engine/cache/LruResourceCache
dup
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/MemorySizeCalculator/getMemoryCacheSize()I
invokespecial com/bumptech/glide/load/engine/cache/LruResourceCache/<init>(I)V
putfield com/bumptech/glide/GlideBuilder/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
L4:
aload 0
getfield com/bumptech/glide/GlideBuilder/diskCacheFactory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
ifnonnull L5
aload 0
new com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory
dup
aload 0
getfield com/bumptech/glide/GlideBuilder/context Landroid/content/Context;
invokespecial com/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory/<init>(Landroid/content/Context;)V
putfield com/bumptech/glide/GlideBuilder/diskCacheFactory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
L5:
aload 0
getfield com/bumptech/glide/GlideBuilder/engine Lcom/bumptech/glide/load/engine/Engine;
ifnonnull L6
aload 0
new com/bumptech/glide/load/engine/Engine
dup
aload 0
getfield com/bumptech/glide/GlideBuilder/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
getfield com/bumptech/glide/GlideBuilder/diskCacheFactory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
aload 0
getfield com/bumptech/glide/GlideBuilder/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/bumptech/glide/GlideBuilder/sourceService Ljava/util/concurrent/ExecutorService;
invokespecial com/bumptech/glide/load/engine/Engine/<init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
putfield com/bumptech/glide/GlideBuilder/engine Lcom/bumptech/glide/load/engine/Engine;
L6:
aload 0
getfield com/bumptech/glide/GlideBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
ifnonnull L7
aload 0
getstatic com/bumptech/glide/load/DecodeFormat/DEFAULT Lcom/bumptech/glide/load/DecodeFormat;
putfield com/bumptech/glide/GlideBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
L7:
new com/bumptech/glide/Glide
dup
aload 0
getfield com/bumptech/glide/GlideBuilder/engine Lcom/bumptech/glide/load/engine/Engine;
aload 0
getfield com/bumptech/glide/GlideBuilder/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
getfield com/bumptech/glide/GlideBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/GlideBuilder/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/GlideBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/Glide/<init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
areturn
L3:
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter/<init>()V
putfield com/bumptech/glide/GlideBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
goto L2
.limit locals 2
.limit stack 7
.end method

.method public setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/diskCacheFactory Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
new com/bumptech/glide/GlideBuilder$1
dup
aload 0
aload 1
invokespecial com/bumptech/glide/GlideBuilder$1/<init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
invokevirtual com/bumptech/glide/GlideBuilder/setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;
areturn
.limit locals 2
.limit stack 5
.end method

.method public setDiskCacheService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method setEngine(Lcom/bumptech/glide/load/engine/Engine;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/engine Lcom/bumptech/glide/load/engine/Engine;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setResizeService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder/sourceService Ljava/util/concurrent/ExecutorService;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
