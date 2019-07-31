.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/cache/MemorySizeCalculator
.super java/lang/Object
.inner class private static DisplayMetricsScreenDimensions inner com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions outer com/bumptech/glide/load/engine/cache/MemorySizeCalculator
.inner class static abstract interface ScreenDimensions inner com/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions outer com/bumptech/glide/load/engine/cache/MemorySizeCalculator

.field static final 'BITMAP_POOL_TARGET_SCREENS' I = 4


.field static final 'BYTES_PER_ARGB_8888_PIXEL' I = 4


.field static final 'LOW_MEMORY_MAX_SIZE_MULTIPLIER' F = 0.33F


.field static final 'MAX_SIZE_MULTIPLIER' F = 0.4F


.field static final 'MEMORY_CACHE_TARGET_SCREENS' I = 2


.field private static final 'TAG' Ljava/lang/String; = "MemorySizeCalculator"

.field private final 'bitmapPoolSize' I

.field private final 'context' Landroid/content/Context;

.field private final 'memoryCacheSize' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aload 1
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
new com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions
dup
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions/<init>(Landroid/util/DisplayMetrics;)V
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator/<init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
return
.limit locals 2
.limit stack 6
.end method

.method <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/context Landroid/content/Context;
aload 2
invokestatic com/bumptech/glide/load/engine/cache/MemorySizeCalculator/getMaxSize(Landroid/app/ActivityManager;)I
istore 4
aload 3
invokeinterface com/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions/getWidthPixels()I 0
aload 3
invokeinterface com/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions/getHeightPixels()I 0
imul
iconst_4
imul
istore 6
iload 6
iconst_4
imul
istore 5
iload 6
iconst_2
imul
istore 6
iload 6
iload 5
iadd
iload 4
if_icmpgt L0
aload 0
iload 6
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/memoryCacheSize I
aload 0
iload 5
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/bitmapPoolSize I
L1:
ldc "MemorySizeCalculator"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Calculated memory cache size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/memoryCacheSize I
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator/toMb(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " pool size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/bitmapPoolSize I
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator/toMb(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " memory class limited? "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
iload 6
iload 5
iadd
iload 4
if_icmple L3
iconst_1
istore 8
L4:
ldc "MemorySizeCalculator"
aload 1
iload 8
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc " max size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iload 4
invokespecial com/bumptech/glide/load/engine/cache/MemorySizeCalculator/toMb(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " memoryClass: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual android/app/ActivityManager/getMemoryClass()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " isLowMemoryDevice: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokestatic com/bumptech/glide/load/engine/cache/MemorySizeCalculator/isLowMemoryDevice(Landroid/app/ActivityManager;)Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
return
L0:
iload 4
i2f
ldc_w 6.0F
fdiv
invokestatic java/lang/Math/round(F)I
istore 7
aload 0
iload 7
iconst_2
imul
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/memoryCacheSize I
aload 0
iload 7
iconst_4
imul
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/bitmapPoolSize I
goto L1
L3:
iconst_0
istore 8
goto L4
.limit locals 9
.limit stack 4
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
aload 0
invokevirtual android/app/ActivityManager/getMemoryClass()I
istore 3
aload 0
invokestatic com/bumptech/glide/load/engine/cache/MemorySizeCalculator/isLowMemoryDevice(Landroid/app/ActivityManager;)Z
istore 4
iload 3
sipush 1024
imul
sipush 1024
imul
i2f
fstore 2
iload 4
ifeq L0
ldc_w 0.33F
fstore 1
L1:
fload 1
fload 2
fmul
invokestatic java/lang/Math/round(F)I
ireturn
L0:
ldc_w 0.4F
fstore 1
goto L1
.limit locals 5
.limit stack 2
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
.annotation invisible Landroid/annotation/TargetApi;
value I = 19
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
istore 1
iload 1
bipush 11
if_icmplt L0
iload 1
bipush 19
if_icmplt L1
aload 0
invokevirtual android/app/ActivityManager/isLowRamDevice()Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private toMb(I)Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/context Landroid/content/Context;
iload 1
i2l
invokestatic android/text/format/Formatter/formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getBitmapPoolSize()I
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/bitmapPoolSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMemoryCacheSize()I
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator/memoryCacheSize I
ireturn
.limit locals 1
.limit stack 1
.end method
