.bytecode 50.0
.class final synchronized com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner
.super java/lang/Object
.implements java/lang/Runnable
.inner class static synthetic inner com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1
.inner class static Clock inner com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock outer com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner
.inner class private static UniqueKey inner com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey outer com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner

.field static final 'BACKOFF_RATIO' I = 4


.field private static final 'DEFAULT_CLOCK' Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final 'INITIAL_BACKOFF_MS' J = 40L


.field static final 'MAX_BACKOFF_MS' J

.field static final 'MAX_DURATION_MS' J = 32L


.field private static final 'TAG' Ljava/lang/String; = "PreFillRunner"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'clock' Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private 'currentDelay' J

.field private final 'handler' Landroid/os/Handler;

.field private 'isCancelled' Z

.field private final 'memoryCache' Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final 'seenTypes' Ljava/util/Set; signature "Ljava/util/Set<Lcom/bumptech/glide/load/engine/prefill/PreFillType;>;"

.field private final 'toPrefill' Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

.method static <clinit>()V
new com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock
dup
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock/<init>()V
putstatic com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/DEFAULT_CLOCK Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
lconst_1
invokevirtual java/util/concurrent/TimeUnit/toMillis(J)J
putstatic com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/MAX_BACKOFF_MS J
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
aload 0
aload 1
aload 2
aload 3
getstatic com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/DEFAULT_CLOCK Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
return
.limit locals 4
.limit stack 8
.end method

.method <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/seenTypes Ljava/util/Set;
aload 0
ldc2_w 40L
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/currentDelay J
aload 0
aload 1
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/toPrefill Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
aload 0
aload 4
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/clock Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
aload 0
aload 5
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/handler Landroid/os/Handler;
return
.limit locals 6
.limit stack 3
.end method

.method private addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/seenTypes Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWidth()I
aload 1
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getHeight()I
aload 1
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getConfig()Landroid/graphics/Bitmap$Config;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 1
aload 1
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
pop
L0:
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 2
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
pop
return
.limit locals 3
.limit stack 4
.end method

.method private allocate()Z
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/clock Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
invokevirtual com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock/now()J
lstore 1
L0:
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/toPrefill Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillQueue/isEmpty()Z
ifne L1
aload 0
lload 1
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/isGcDetected(J)Z
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/toPrefill Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillQueue/remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
astore 3
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWidth()I
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getHeight()I
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getConfig()Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 4
aload 0
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/getFreeMemoryCacheBytes()I
aload 4
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
if_icmplt L2
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
new com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey/<init>(Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;)V
aload 4
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/bitmap/BitmapResource/obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource; 2
pop
L3:
ldc "PreFillRunner"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "PreFillRunner"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "allocated ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "] "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getConfig()Landroid/graphics/Bitmap$Config;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L0
L2:
aload 0
aload 3
aload 4
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V
goto L3
L1:
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/isCancelled Z
ifne L4
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/toPrefill Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillQueue/isEmpty()Z
ifne L4
iconst_1
ireturn
L4:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method private getFreeMemoryCacheBytes()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/getMaxSize()I 0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/getCurrentSize()I 0
isub
ireturn
.limit locals 1
.limit stack 2
.end method

.method private getNextDelay()J
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/currentDelay J
lstore 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/currentDelay J
ldc2_w 4L
lmul
getstatic com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/MAX_BACKOFF_MS J
invokestatic java/lang/Math/min(JJ)J
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/currentDelay J
lload 1
lreturn
.limit locals 3
.limit stack 5
.end method

.method private isGcDetected(J)Z
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/clock Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
invokevirtual com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock/now()J
lload 1
lsub
ldc2_w 32L
lcmp
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public cancel()V
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/isCancelled Z
return
.limit locals 1
.limit stack 2
.end method

.method public run()V
aload 0
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/allocate()Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/handler Landroid/os/Handler;
aload 0
aload 0
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/getNextDelay()J
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
