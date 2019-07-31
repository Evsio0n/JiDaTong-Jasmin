.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/manager/CheckinImgManager
.super java/lang/Object
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$1
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2$1

.field public static final 'SIGN_CODE' I = 1000


.field private 'activity' Landroid/app/Activity;

.field private 'floatView' Lcom/nd/android/u/cloud/view/widge/FloatView;

.field private 'mWindowManager' Landroid/view/WindowManager;

.field private 'onclick' Landroid/view/View$OnClickListener;

.field private 'windowManagerParams' Landroid/view/WindowManager$LayoutParams;

.method public <init>(Landroid/view/WindowManager;Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/manager/CheckinImgManager/mWindowManager Landroid/view/WindowManager;
aload 0
aconst_null
putfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 0
aconst_null
putfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/manager/CheckinImgManager/activity Landroid/app/Activity;
aload 0
new com/nd/android/u/cloud/manager/CheckinImgManager$1
dup
aload 0
invokespecial com/nd/android/u/cloud/manager/CheckinImgManager$1/<init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)V
putfield com/nd/android/u/cloud/manager/CheckinImgManager/onclick Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/cloud/manager/CheckinImgManager/mWindowManager Landroid/view/WindowManager;
aload 0
aload 2
putfield com/nd/android/u/cloud/manager/CheckinImgManager/activity Landroid/app/Activity;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/activity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addFloatView()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/remove()V
L0:
aload 0
new android/view/WindowManager$LayoutParams
dup
invokespecial android/view/WindowManager$LayoutParams/<init>()V
putfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
iconst_3
putfield android/view/WindowManager$LayoutParams/type I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
iconst_1
putfield android/view/WindowManager$LayoutParams/format I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
bipush 40
putfield android/view/WindowManager$LayoutParams/flags I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
bipush 51
putfield android/view/WindowManager$LayoutParams/gravity I
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/widthPixels I
ifle L1
aload 1
getfield android/util/DisplayMetrics/heightPixels I
ifle L1
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 1
getfield android/util/DisplayMetrics/widthPixels I
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 1
getfield android/util/DisplayMetrics/heightPixels I
iconst_2
idiv
putfield android/view/WindowManager$LayoutParams/y I
L2:
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/width I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/height I
aload 0
new com/nd/android/u/cloud/view/widge/FloatView
dup
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/activity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
invokespecial com/nd/android/u/cloud/view/widge/FloatView/<init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
putfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
iconst_1
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setId(I)V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/onclick Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
ldc_w 2130838744
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setImageResource(I)V
aload 0
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/hidden()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/mWindowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
return
L1:
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
iconst_0
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/windowManagerParams Landroid/view/WindowManager$LayoutParams;
iconst_0
putfield android/view/WindowManager$LayoutParams/y I
goto L2
.limit locals 2
.limit stack 5
.end method

.method public checkAndShow()V
new java/lang/Thread
dup
new com/nd/android/u/cloud/manager/CheckinImgManager$2
dup
aload 0
invokespecial com/nd/android/u/cloud/manager/CheckinImgManager$2/<init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method public hidden()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
bipush 8
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onPause()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
bipush 8
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public remove()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/mWindowManager Landroid/view/WindowManager;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/mWindowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
invokeinterface android/view/WindowManager/removeViewImmediate(Landroid/view/View;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public show()V
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager/floatView Lcom/nd/android/u/cloud/view/widge/FloatView;
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
