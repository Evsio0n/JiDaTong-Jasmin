.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/DisplayUtil
.super java/lang/Object

.field private static 'mDisplayMetrics' Landroid/util/DisplayMetrics;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static dip2px(FF)I
fload 0
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static dip2px(Landroid/content/Context;F)I
fload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(FF)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
getstatic com/nd/schoollife/common/utils/ui/DisplayUtil/mDisplayMetrics Landroid/util/DisplayMetrics;
ifnonnull L0
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putstatic com/nd/schoollife/common/utils/ui/DisplayUtil/mDisplayMetrics Landroid/util/DisplayMetrics;
L0:
getstatic com/nd/schoollife/common/utils/ui/DisplayUtil/mDisplayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getTextLength(Ljava/lang/String;F)I
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 2
aload 2
fload 1
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 2
aload 0
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static px2dip(FF)I
fload 0
fload 1
fdiv
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static px2dip(Landroid/content/Context;F)I
fload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/px2dip(FF)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static px2sp(FF)I
fload 0
fload 1
fdiv
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static sp2px(FF)I
fload 0
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static sp2px(Landroid/content/Context;F)I
fload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/scaledDensity F
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method
