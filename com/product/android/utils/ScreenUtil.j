.bytecode 50.0
.class public synchronized com/product/android/utils/ScreenUtil
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
.catch java/lang/Exception from L0 to L1 using L2
L0:
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 0
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 2
getfield android/util/DisplayMetrics/density F
fstore 1
L1:
fload 1
freturn
L2:
astore 0
ldc_w 160.0F
freturn
.limit locals 3
.limit stack 2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getScreenTopHeight(Landroid/app/Activity;)I
aload 0
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
ldc_w 16908290
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 1
aload 0
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
aload 1
invokevirtual android/view/View/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 1
getfield android/graphics/Rect/top I
ireturn
.limit locals 2
.limit stack 2
.end method
