.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil
.super java/lang/Object

.field private static 'currentDensity' F = 0.0F


.field private static final 'notification_height' I = 25


.field private static 'scaledDensity' F

.method static <clinit>()V
fconst_0
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/currentDensity F
fconst_0
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/scaledDensity F
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static dip2px(Landroid/content/Context;F)I
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/currentDensity F
fconst_0
fcmpl
ifle L0
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/currentDensity F
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/currentDensity F
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/currentDensity F
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getCurrentScreenHeight(Landroid/content/Context;)I
aload 0
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
astore 1
aload 0
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/isOrientationLandscape(Landroid/content/Context;)Z
ifeq L0
aload 1
getfield android/util/DisplayMetrics/widthPixels I
ireturn
L0:
aload 1
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static getCurrentScreenWidth(Landroid/content/Context;)I
aload 0
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
astore 1
aload 0
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/isOrientationLandscape(Landroid/content/Context;)Z
ifeq L0
aload 1
getfield android/util/DisplayMetrics/heightPixels I
ireturn
L0:
aload 1
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getNotificationHeight()I
bipush 25
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
invokevirtual android/view/View/clearFocus()V
aload 0
iconst_0
invokevirtual android/view/View/setPressed(Z)V
aload 0
invokevirtual android/view/View/willNotCacheDrawing()Z
istore 2
aload 0
iconst_0
invokevirtual android/view/View/setWillNotCacheDrawing(Z)V
aload 0
invokevirtual android/view/View/getDrawingCacheBackgroundColor()I
istore 1
aload 0
iconst_0
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
iload 1
ifeq L3
aload 0
invokevirtual android/view/View/destroyDrawingCache()V
L3:
aload 0
invokevirtual android/view/View/buildDrawingCache()V
aload 0
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
astore 4
aload 4
ifnonnull L4
aconst_null
areturn
L4:
aconst_null
astore 3
L0:
aload 4
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 4
L1:
aload 4
astore 3
L5:
aload 0
invokevirtual android/view/View/destroyDrawingCache()V
aload 0
iload 2
invokevirtual android/view/View/setWillNotCacheDrawing(Z)V
aload 0
iload 1
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/Throwable/printStackTrace()V
goto L5
.limit locals 5
.limit stack 2
.end method

.method public static getViewCache(Landroid/view/View;)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
aload 0
invokevirtual android/view/View/clearFocus()V
aload 0
iconst_0
invokevirtual android/view/View/setPressed(Z)V
aload 0
iconst_0
invokevirtual android/view/View/setWillNotCacheDrawing(Z)V
aload 0
iconst_1
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
aload 0
invokevirtual android/view/View/getDrawingCacheBackgroundColor()I
ifeq L1
aload 0
invokevirtual android/view/View/destroyDrawingCache()V
aload 0
iconst_0
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
L1:
aload 0
invokevirtual android/view/View/buildDrawingCache()V
aload 0
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
astore 0
aload 0
ifnonnull L2
aconst_null
areturn
L2:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public static isOrientationLandscape(Landroid/content/Context;)Z
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static sp2px(Landroid/content/Context;F)I
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/scaledDensity F
fconst_0
fcmpl
ifle L0
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/scaledDensity F
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/scaledDensity F
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/scaledDensity F
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/scaledDensity F
fload 1
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method
