.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/DisplayUtils
.super java/lang/Object

.field private static 'mMetrics' Landroid/util/DisplayMetrics;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCurrentScreenHeight()I
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/getMetrics()Landroid/util/DisplayMetrics;
astore 0
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/isOrientationLandscape()Z
ifeq L0
aload 0
getfield android/util/DisplayMetrics/widthPixels I
ireturn
L0:
aload 0
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getCurrentScreenWidth()I
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/getMetrics()Landroid/util/DisplayMetrics;
astore 0
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/isOrientationLandscape()Z
ifeq L0
aload 0
getfield android/util/DisplayMetrics/heightPixels I
ireturn
L0:
aload 0
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getMetrics()Landroid/util/DisplayMetrics;
getstatic com/nd/android/u/allCommonUtils/DisplayUtils/mMetrics Landroid/util/DisplayMetrics;
ifnonnull L0
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putstatic com/nd/android/u/allCommonUtils/DisplayUtils/mMetrics Landroid/util/DisplayMetrics;
L0:
getstatic com/nd/android/u/allCommonUtils/DisplayUtils/mMetrics Landroid/util/DisplayMetrics;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static isOrientationLandscape()Z
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
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
.limit locals 0
.limit stack 2
.end method
