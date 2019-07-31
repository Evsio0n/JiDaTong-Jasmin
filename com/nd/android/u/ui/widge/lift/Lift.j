.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/Lift
.super java/lang/Object
.inner class inner com/nd/android/u/ui/widge/lift/Lift$1
.inner class inner com/nd/android/u/ui/widge/lift/Lift$2
.inner class BirthThread inner com/nd/android/u/ui/widge/lift/Lift$BirthThread outer com/nd/android/u/ui/widge/lift/Lift
.inner class RemoveThread inner com/nd/android/u/ui/widge/lift/Lift$RemoveThread outer com/nd/android/u/ui/widge/lift/Lift
.inner class WaitDrawThread inner com/nd/android/u/ui/widge/lift/Lift$WaitDrawThread outer com/nd/android/u/ui/widge/lift/Lift

.field private static final 'SLEEP_TIME' I = 4000


.field private static final 'WAIT_VIEW' I = 3


.field private final 'REMOVE_VIEW' I

.field private final 'VIEW_DISAPPER' I

.field private 'handler' Landroid/os/Handler;

.field private 'hasMeasured' Z

.field private 'isFall' Z

.field private 'mBirthThread' Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;

.field private 'mContext' Landroid/content/Context;

.field private 'mFlag' I

.field private 'mHeight' I

.field private 'mPetalView' Lcom/nd/android/u/ui/widge/lift/PetalView;

.field private 'mRelativeLayout' Landroid/widget/RelativeLayout;

.field private 'mRemoveThread' Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;

.field private 'mWidth' I

.field 'tempView' Landroid/view/SurfaceView;

.method public <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/lift/Lift/mFlag I
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/lift/Lift/VIEW_DISAPPER I
aload 0
iconst_2
putfield com/nd/android/u/ui/widge/lift/Lift/REMOVE_VIEW I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/lift/Lift/hasMeasured Z
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/Lift/mRemoveThread Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/Lift/tempView Landroid/view/SurfaceView;
aload 0
new com/nd/android/u/ui/widge/lift/Lift$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/lift/Lift$1/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
putfield com/nd/android/u/ui/widge/lift/Lift/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/nd/android/u/ui/widge/lift/Lift$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/lift/Lift$2/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
invokevirtual android/view/ViewTreeObserver/addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
aload 0
new android/view/SurfaceView
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mContext Landroid/content/Context;
invokespecial android/view/SurfaceView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/lift/Lift/tempView Landroid/view/SurfaceView;
new android/widget/RelativeLayout$LayoutParams
dup
iconst_0
iconst_0
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/tempView Landroid/view/SurfaceView;
aload 1
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRemoveThread Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/ui/widge/lift/Lift;Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;)Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift/mRemoveThread Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Lift/mFlag I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/lift/Lift;)Z
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/isFall Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/lift/Lift;)Z
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/hasMeasured Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/ui/widge/lift/Lift;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Lift/hasMeasured Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$602(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Lift/mWidth I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$702(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Lift/mHeight I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public fallLift(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Lift/isFall Z
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mWidth I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mHeight I
ifne L0
new com/nd/android/u/ui/widge/lift/Lift$WaitDrawThread
dup
aload 0
invokespecial com/nd/android/u/ui/widge/lift/Lift$WaitDrawThread/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
invokevirtual com/nd/android/u/ui/widge/lift/Lift$WaitDrawThread/start()V
return
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/isFall Z
invokevirtual com/nd/android/u/ui/widge/lift/Lift/getLift(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public getLift(Z)V
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
ifnonnull L0
aload 0
new com/nd/android/u/ui/widge/lift/PetalView
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mWidth I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mHeight I
iload 1
invokespecial com/nd/android/u/ui/widge/lift/PetalView/<init>(Landroid/content/Context;IIZ)V
putfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
L0:
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mFlag I
iconst_1
if_icmpne L1
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/lift/Lift/mFlag I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/tempView Landroid/view/SurfaceView;
invokevirtual android/widget/RelativeLayout/removeView(Landroid/view/View;)V
aload 0
new com/nd/android/u/ui/widge/lift/PetalView
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mWidth I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mHeight I
iload 1
invokespecial com/nd/android/u/ui/widge/lift/PetalView/<init>(Landroid/content/Context;IIZ)V
putfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 0
new com/nd/android/u/ui/widge/lift/Lift$BirthThread
dup
aload 0
sipush 4000
invokespecial com/nd/android/u/ui/widge/lift/Lift$BirthThread/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;I)V
putfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
invokevirtual com/nd/android/u/ui/widge/lift/Lift$BirthThread/start()V
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
ifnull L2
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
invokevirtual com/nd/android/u/ui/widge/lift/Lift$BirthThread/interrupt()V
L2:
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRemoveThread Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
ifnull L3
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRemoveThread Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
invokevirtual com/nd/android/u/ui/widge/lift/Lift$RemoveThread/interrupt()V
L3:
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
invokevirtual android/widget/RelativeLayout/removeView(Landroid/view/View;)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/lift/Lift/mFlag I
aload 0
new com/nd/android/u/ui/widge/lift/PetalView
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mWidth I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mHeight I
iload 1
invokespecial com/nd/android/u/ui/widge/lift/PetalView/<init>(Landroid/content/Context;IIZ)V
putfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 0
new com/nd/android/u/ui/widge/lift/Lift$BirthThread
dup
aload 0
sipush 4000
invokespecial com/nd/android/u/ui/widge/lift/Lift$BirthThread/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;I)V
putfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift/mBirthThread Lcom/nd/android/u/ui/widge/lift/Lift$BirthThread;
invokevirtual com/nd/android/u/ui/widge/lift/Lift$BirthThread/start()V
return
.limit locals 2
.limit stack 7
.end method
