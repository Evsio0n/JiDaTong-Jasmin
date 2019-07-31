.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/engine/prefill/BitmapPreFiller
.super java/lang/Object

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private 'current' Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final 'defaultFormat' Lcom/bumptech/glide/load/DecodeFormat;

.field private final 'handler' Landroid/os/Handler;

.field private final 'memoryCache' Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.method public <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/defaultFormat Lcom/bumptech/glide/load/DecodeFormat;
return
.limit locals 4
.limit stack 4
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
aload 0
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWidth()I
aload 0
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getHeight()I
aload 0
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getConfig()Landroid/graphics/Bitmap$Config;
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/getMaxSize()I 0
istore 5
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/getCurrentSize()I 0
istore 6
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/getMaxSize()I 0
istore 7
iconst_0
istore 4
aload 1
arraylength
istore 8
iconst_0
istore 3
L0:
iload 3
iload 8
if_icmpge L1
iload 4
aload 1
iload 3
aaload
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWeight()I
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iload 5
iload 6
isub
iload 7
iadd
i2f
iload 4
i2f
fdiv
fstore 2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 9
aload 1
arraylength
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 1
iload 3
aaload
astore 10
aload 9
aload 10
aload 10
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType/getWeight()I
i2f
fload 2
fmul
invokestatic java/lang/Math/round(F)I
aload 10
invokestatic com/bumptech/glide/load/engine/prefill/BitmapPreFiller/getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
idiv
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
new com/bumptech/glide/load/engine/prefill/PreFillQueue
dup
aload 9
invokespecial com/bumptech/glide/load/engine/prefill/PreFillQueue/<init>(Ljava/util/Map;)V
areturn
.limit locals 11
.limit stack 4
.end method

.method public transient preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/current Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/current Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
invokevirtual com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/cancel()V
L0:
aload 1
arraylength
anewarray com/bumptech/glide/load/engine/prefill/PreFillType
astore 4
iconst_0
istore 2
L1:
iload 2
aload 1
arraylength
if_icmpge L2
aload 1
iload 2
aaload
astore 5
aload 5
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType$Builder/getConfig()Landroid/graphics/Bitmap$Config;
ifnonnull L3
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/defaultFormat Lcom/bumptech/glide/load/DecodeFormat;
getstatic com/bumptech/glide/load/DecodeFormat/ALWAYS_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
if_acmpeq L4
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/defaultFormat Lcom/bumptech/glide/load/DecodeFormat;
getstatic com/bumptech/glide/load/DecodeFormat/PREFER_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
if_acmpne L5
L4:
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
astore 3
L6:
aload 5
aload 3
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType$Builder/setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
pop
L3:
aload 4
iload 2
aload 5
invokevirtual com/bumptech/glide/load/engine/prefill/PreFillType$Builder/build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
aastore
iload 2
iconst_1
iadd
istore 2
goto L1
L5:
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
astore 3
goto L6
L2:
aload 0
aload 4
invokevirtual com/bumptech/glide/load/engine/prefill/BitmapPreFiller/generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
astore 1
aload 0
new com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner
dup
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 1
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
putfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/current Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/handler Landroid/os/Handler;
aload 0
getfield com/bumptech/glide/load/engine/prefill/BitmapPreFiller/current Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 6
.limit stack 6
.end method
