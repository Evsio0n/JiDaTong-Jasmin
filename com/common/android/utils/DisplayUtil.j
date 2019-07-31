.bytecode 50.0
.class public synchronized com/common/android/utils/DisplayUtil
.super java/lang/Object

.field private static final 'VALUE' F = 0.5F


.method public <init>()V
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
invokestatic com/common/android/utils/DisplayUtil/dip2px(FF)I
ireturn
.limit locals 2
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
invokestatic com/common/android/utils/DisplayUtil/px2dip(FF)I
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
