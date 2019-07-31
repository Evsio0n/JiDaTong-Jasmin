.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions
.inner class private static DisplayMetricsScreenDimensions inner com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions outer com/bumptech/glide/load/engine/cache/MemorySizeCalculator

.field private final 'displayMetrics' Landroid/util/DisplayMetrics;

.method public <init>(Landroid/util/DisplayMetrics;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions/displayMetrics Landroid/util/DisplayMetrics;
return
.limit locals 2
.limit stack 2
.end method

.method public getHeightPixels()I
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWidthPixels()I
aload 0
getfield com/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 1
.limit stack 1
.end method
