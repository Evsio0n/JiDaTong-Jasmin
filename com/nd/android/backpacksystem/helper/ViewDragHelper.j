.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/helper/ViewDragHelper
.super java/lang/Object
.inner class static final inner com/nd/android/backpacksystem/helper/ViewDragHelper$1
.inner class inner com/nd/android/backpacksystem/helper/ViewDragHelper$2
.inner class public static abstract Callback inner com/nd/android/backpacksystem/helper/ViewDragHelper$Callback outer com/nd/android/backpacksystem/helper/ViewDragHelper

.field private static final 'BASE_SETTLE_DURATION' I = 256


.field public static final 'DIRECTION_ALL' I = 3


.field public static final 'DIRECTION_HORIZONTAL' I = 1


.field public static final 'DIRECTION_VERTICAL' I = 2


.field public static final 'EDGE_ALL' I = 15


.field public static final 'EDGE_BOTTOM' I = 8


.field public static final 'EDGE_LEFT' I = 1


.field public static final 'EDGE_RIGHT' I = 2


.field public static final 'EDGE_SIZE' I = 20


.field public static final 'EDGE_TOP' I = 4


.field public static final 'INVALID_POINTER' I = -1


.field private static final 'MAX_SETTLE_DURATION' I = 600


.field public static final 'STATE_DRAGGING' I = 1


.field public static final 'STATE_IDLE' I = 0


.field public static final 'STATE_SETTLING' I = 2


.field private static final 'TAG' Ljava/lang/String; = "ViewDragHelper"

.field private static final 'sInterpolator' Landroid/view/animation/Interpolator;

.field private 'mActivePointerId' I

.field private final 'mCallback' Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;

.field private 'mCapturedView' Landroid/view/View;

.field private 'mDragState' I

.field private 'mEdgeDragsInProgress' [I

.field private 'mEdgeDragsLocked' [I

.field private 'mEdgeSize' I

.field private 'mInitialEdgesTouched' [I

.field private 'mInitialMotionX' [F

.field private 'mInitialMotionY' [F

.field private 'mLastMotionX' [F

.field private 'mLastMotionY' [F

.field private 'mMaxVelocity' F

.field private 'mMinVelocity' F

.field private final 'mParentView' Landroid/view/ViewGroup;

.field private 'mPointersDown' I

.field private 'mReleaseInProgress' Z

.field private 'mScroller' Lcom/nd/android/backpacksystem/helper/ScrollerCompat;

.field private final 'mSetIdleRunnable' Ljava/lang/Runnable;

.field private 'mTouchSlop' I

.field private 'mTrackingEdges' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.method static <clinit>()V
new com/nd/android/backpacksystem/helper/ViewDragHelper$1
dup
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper$1/<init>()V
putstatic com/nd/android/backpacksystem/helper/ViewDragHelper/sInterpolator Landroid/view/animation/Interpolator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
aload 0
new com/nd/android/backpacksystem/helper/ViewDragHelper$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper$2/<init>(Lcom/nd/android/backpacksystem/helper/ViewDragHelper;)V
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mSetIdleRunnable Ljava/lang/Runnable;
aload 2
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "Parent view may not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "Callback may not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 2
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
aload 0
aload 3
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 2
aload 0
ldc_w 20.0F
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
ldc_w 0.5F
fadd
f2i
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
aload 0
aload 2
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
aload 0
aload 2
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
i2f
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
aload 0
aload 2
invokevirtual android/view/ViewConfiguration/getScaledMinimumFlingVelocity()I
i2f
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/helper/ViewDragHelper/sInterpolator Landroid/view/animation/Interpolator;
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompat/create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
return
.limit locals 4
.limit stack 4
.end method

.method private checkNewEdgeDrag(FFII)Z
fload 1
invokestatic java/lang/Math/abs(F)F
fstore 1
fload 2
invokestatic java/lang/Math/abs(F)F
fstore 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 3
iaload
iload 4
iand
iload 4
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 4
iand
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
iload 3
iaload
iload 4
iand
iload 4
if_icmpeq L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
iload 3
iaload
iload 4
iand
iload 4
if_icmpeq L0
fload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpg
ifgt L1
fload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpg
ifgt L1
L0:
iconst_0
ireturn
L1:
fload 1
ldc_w 0.5F
fload 2
fmul
fcmpg
ifge L2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
iload 4
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeLock(I)Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
astore 5
aload 5
iload 3
aload 5
iload 3
iaload
iload 4
ior
iastore
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
iload 3
iaload
iload 4
iand
ifne L0
fload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpl
ifle L0
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
iconst_1
istore 6
aload 1
ifnonnull L0
iconst_0
istore 6
L1:
iload 6
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/getViewHorizontalDragRange(Landroid/view/View;)I
ifle L2
iconst_1
istore 4
L3:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/getViewVerticalDragRange(Landroid/view/View;)I
ifle L4
iconst_1
istore 5
L5:
iload 4
ifeq L6
iload 5
ifeq L6
fload 2
fload 2
fmul
fload 3
fload 3
fmul
fadd
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
imul
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L2:
iconst_0
istore 4
goto L3
L4:
iconst_0
istore 5
goto L5
L6:
iload 4
ifeq L7
fload 2
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L7:
iload 5
ifeq L8
fload 3
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L8:
iconst_0
ireturn
.limit locals 7
.limit stack 3
.end method

.method private clampMag(FFF)F
fload 1
invokestatic java/lang/Math/abs(F)F
fstore 4
fload 4
fload 2
fcmpg
ifge L0
fconst_0
fstore 2
L1:
fload 2
freturn
L0:
fload 4
fload 3
fcmpl
ifle L2
fload 3
fstore 2
fload 1
fconst_0
fcmpl
ifgt L1
fload 3
fneg
freturn
L2:
fload 1
freturn
.limit locals 5
.limit stack 2
.end method

.method private clampMag(III)I
iload 1
invokestatic java/lang/Math/abs(I)I
istore 4
iload 4
iload 2
if_icmpge L0
iconst_0
istore 2
L1:
iload 2
ireturn
L0:
iload 4
iload 3
if_icmple L2
iload 3
istore 2
iload 1
ifgt L1
iload 3
ineg
ireturn
L2:
iload 1
ireturn
.limit locals 5
.limit stack 2
.end method

.method private clearMotionHistory()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
fconst_0
invokestatic java/util/Arrays/fill([FF)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
fconst_0
invokestatic java/util/Arrays/fill([FF)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
fconst_0
invokestatic java/util/Arrays/fill([FF)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
fconst_0
invokestatic java/util/Arrays/fill([FF)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iconst_0
invokestatic java/util/Arrays/fill([II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
iconst_0
invokestatic java/util/Arrays/fill([II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
iconst_0
invokestatic java/util/Arrays/fill([II)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
return
.limit locals 1
.limit stack 2
.end method

.method private clearMotionHistory(I)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iload 1
fconst_0
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iload 1
fconst_0
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iload 1
fconst_0
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iload 1
fconst_0
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 1
iconst_0
iastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
iload 1
iconst_0
iastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
iload 1
iconst_0
iastore
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
iconst_1
iload 1
ishl
iconst_m1
ixor
iand
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
return
.limit locals 2
.limit stack 4
.end method

.method private computeAxisDuration(III)I
iload 1
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getWidth()I
istore 7
iload 7
iconst_2
idiv
istore 8
fconst_1
iload 1
invokestatic java/lang/Math/abs(I)I
i2f
iload 7
i2f
fdiv
invokestatic java/lang/Math/min(FF)F
fstore 6
iload 8
i2f
fstore 4
iload 8
i2f
fstore 5
aload 0
fload 6
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/distanceInfluenceForSnapDuration(F)F
fstore 6
iload 2
invokestatic java/lang/Math/abs(I)I
istore 2
iload 2
ifle L1
ldc_w 1000.0F
fload 4
fload 5
fload 6
fmul
fadd
iload 2
i2f
fdiv
invokestatic java/lang/Math/abs(F)F
fmul
invokestatic java/lang/Math/round(F)I
iconst_4
imul
istore 1
L2:
iload 1
sipush 600
invokestatic java/lang/Math/min(II)I
ireturn
L1:
iload 1
invokestatic java/lang/Math/abs(I)I
i2f
iload 3
i2f
fdiv
fconst_1
fadd
ldc_w 256.0F
fmul
f2i
istore 1
goto L2
.limit locals 9
.limit stack 4
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
aload 0
iload 4
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
f2i
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
f2i
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clampMag(III)I
istore 4
aload 0
iload 5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
f2i
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
f2i
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clampMag(III)I
istore 5
iload 2
invokestatic java/lang/Math/abs(I)I
istore 8
iload 3
invokestatic java/lang/Math/abs(I)I
istore 9
iload 4
invokestatic java/lang/Math/abs(I)I
istore 10
iload 5
invokestatic java/lang/Math/abs(I)I
istore 11
iload 10
iload 11
iadd
istore 12
iload 8
iload 9
iadd
istore 13
iload 4
ifeq L0
iload 10
i2f
iload 12
i2f
fdiv
fstore 6
L1:
iload 5
ifeq L2
iload 11
i2f
iload 12
i2f
fdiv
fstore 7
L3:
aload 0
iload 2
iload 4
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/getViewHorizontalDragRange(Landroid/view/View;)I
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/computeAxisDuration(III)I
istore 2
aload 0
iload 3
iload 5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/getViewVerticalDragRange(Landroid/view/View;)I
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/computeAxisDuration(III)I
istore 3
iload 2
i2f
fload 6
fmul
iload 3
i2f
fload 7
fmul
fadd
f2i
ireturn
L0:
iload 8
i2f
iload 13
i2f
fdiv
fstore 6
goto L1
L2:
iload 9
i2f
iload 13
i2f
fdiv
fstore 7
goto L3
.limit locals 14
.limit stack 5
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 0
aload 2
invokestatic com/nd/android/backpacksystem/helper/ViewDragHelper/create(Landroid/view/ViewGroup;Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
astore 0
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fconst_1
fload 1
fdiv
fmul
f2i
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
new com/nd/android/backpacksystem/helper/ViewDragHelper
dup
aload 0
invokevirtual android/view/ViewGroup/getContext()Landroid/content/Context;
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/<init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)V
areturn
.limit locals 2
.limit stack 5
.end method

.method private dispatchViewReleased(FF)V
aload 0
iconst_1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mReleaseInProgress Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
fload 1
fload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewReleased(Landroid/view/View;FF)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mReleaseInProgress Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L0
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method private distanceInfluenceForSnapDuration(F)F
fload 1
ldc_w 0.5F
fsub
f2d
ldc2_w 0.4712389167638204D
dmul
d2f
f2d
invokestatic java/lang/Math/sin(D)D
d2f
freturn
.limit locals 2
.limit stack 4
.end method

.method private dragTo(IIII)V
iload 1
istore 6
iload 2
istore 5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getLeft()I
istore 7
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
istore 8
iload 3
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 1
iload 3
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/clampViewPositionHorizontal(Landroid/view/View;II)I
istore 6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 6
iload 7
isub
invokevirtual android/view/View/offsetLeftAndRight(I)V
L0:
iload 4
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 2
iload 4
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/clampViewPositionVertical(Landroid/view/View;II)I
istore 5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 5
iload 8
isub
invokevirtual android/view/View/offsetTopAndBottom(I)V
L1:
iload 3
ifne L2
iload 4
ifeq L3
L2:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 6
iload 5
iload 6
iload 7
isub
iload 5
iload 8
isub
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewPositionChanged(Landroid/view/View;IIII)V
L3:
return
.limit locals 9
.limit stack 7
.end method

.method private ensureMotionHistorySizeForId(I)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
arraylength
iload 1
if_icmpgt L1
L0:
iload 1
iconst_1
iadd
newarray float
astore 2
iload 1
iconst_1
iadd
newarray float
astore 3
iload 1
iconst_1
iadd
newarray float
astore 4
iload 1
iconst_1
iadd
newarray float
astore 5
iload 1
iconst_1
iadd
newarray int
astore 6
iload 1
iconst_1
iadd
newarray int
astore 7
iload 1
iconst_1
iadd
newarray int
astore 8
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iconst_0
aload 2
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iconst_0
aload 3
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iconst_0
aload 4
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iconst_0
aload 5
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iconst_0
aload 6
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
iconst_0
aload 7
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
iconst_0
aload 8
iconst_0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L2:
aload 0
aload 2
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
aload 0
aload 3
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
aload 0
aload 4
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
aload 0
aload 5
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
aload 0
aload 6
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
aload 0
aload 7
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
aload 0
aload 8
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsLocked [I
L1:
return
.limit locals 9
.limit stack 5
.end method

.method private forceSettleCapturedViewAt(IIII)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getLeft()I
istore 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
istore 4
iload 1
iload 3
isub
istore 1
iload 2
iload 4
isub
istore 2
iload 1
ifne L0
iload 2
ifne L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/abortAnimation()V
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
iload 3
iload 4
iload 1
iload 2
bipush 50
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/startScroll(IIIII)V
aload 0
iconst_2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
iconst_1
ireturn
.limit locals 5
.limit stack 6
.end method

.method private getEdgesTouched(II)I
iconst_0
istore 4
iload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getLeft()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
iadd
if_icmpge L0
iconst_0
iconst_1
ior
istore 4
L0:
iload 4
istore 3
iload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getTop()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
iadd
if_icmpge L1
iload 4
iconst_4
ior
istore 3
L1:
iload 3
istore 4
iload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getRight()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
isub
if_icmple L2
iload 3
iconst_2
ior
istore 4
L2:
iload 4
istore 1
iload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getBottom()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
isub
if_icmple L3
iload 4
bipush 8
ior
istore 1
L3:
iload 1
ireturn
.limit locals 5
.limit stack 3
.end method

.method private releaseViewForPointerUp()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
sipush 1000
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 0
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clampMag(FFF)F
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMaxVelocity F
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clampMag(FFF)F
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/dispatchViewReleased(FF)V
return
.limit locals 1
.limit stack 6
.end method

.method private reportNewEdgeDrags(FFI)V
iconst_0
istore 5
aload 0
fload 1
fload 2
iload 3
iconst_1
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkNewEdgeDrag(FFII)Z
ifeq L0
iconst_0
iconst_1
ior
istore 5
L0:
iload 5
istore 4
aload 0
fload 2
fload 1
iload 3
iconst_4
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkNewEdgeDrag(FFII)Z
ifeq L1
iload 5
iconst_4
ior
istore 4
L1:
iload 4
istore 5
aload 0
fload 1
fload 2
iload 3
iconst_2
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkNewEdgeDrag(FFII)Z
ifeq L2
iload 4
iconst_2
ior
istore 5
L2:
iload 5
istore 4
aload 0
fload 2
fload 1
iload 3
bipush 8
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkNewEdgeDrag(FFII)Z
ifeq L3
iload 5
bipush 8
ior
istore 4
L3:
iload 4
ifeq L4
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeDragsInProgress [I
astore 6
aload 6
iload 3
aload 6
iload 3
iaload
iload 4
ior
iastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
iload 4
iload 3
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeDragStarted(II)V
L4:
return
.limit locals 7
.limit stack 5
.end method

.method private saveInitialMotion(FFI)V
aload 0
iload 3
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/ensureMotionHistorySizeForId(I)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iload 3
fload 1
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iload 3
faload
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iload 3
fload 2
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iload 3
faload
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 3
aload 0
fload 1
f2i
fload 2
f2i
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/getEdgesTouched(II)I
iastore
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
iconst_1
iload 3
ishl
ior
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
return
.limit locals 4
.limit stack 5
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getPointerCount(Landroid/view/MotionEvent;)I
istore 5
iconst_0
istore 4
L0:
iload 4
iload 5
if_icmpge L1
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 6
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iload 6
fload 2
fastore
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iload 6
fload 3
fastore
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
return
.limit locals 7
.limit stack 3
.end method

.method public abort()V
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_2
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrX()I
istore 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrY()I
istore 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/abortAnimation()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrX()I
istore 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrY()I
istore 4
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 3
iload 4
iload 3
iload 1
isub
iload 4
iload 2
isub
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewPositionChanged(Landroid/view/View;IIII)V
L0:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
return
.limit locals 5
.limit stack 7
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
aload 1
instanceof android/view/ViewGroup
ifeq L0
aload 1
checkcast android/view/ViewGroup
astore 10
aload 1
invokevirtual android/view/View/getScrollX()I
istore 8
aload 1
invokevirtual android/view/View/getScrollY()I
istore 9
aload 10
invokevirtual android/view/ViewGroup/getChildCount()I
iconst_1
isub
istore 7
L1:
iload 7
iflt L0
aload 10
iload 7
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 11
iload 5
iload 8
iadd
aload 11
invokevirtual android/view/View/getLeft()I
if_icmplt L2
iload 5
iload 8
iadd
aload 11
invokevirtual android/view/View/getRight()I
if_icmpge L2
iload 6
iload 9
iadd
aload 11
invokevirtual android/view/View/getTop()I
if_icmplt L2
iload 6
iload 9
iadd
aload 11
invokevirtual android/view/View/getBottom()I
if_icmpge L2
aload 0
aload 11
iconst_1
iload 3
iload 4
iload 5
iload 8
iadd
aload 11
invokevirtual android/view/View/getLeft()I
isub
iload 6
iload 9
iadd
aload 11
invokevirtual android/view/View/getTop()I
isub
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/canScroll(Landroid/view/View;ZIIII)Z
ifeq L2
iconst_1
ireturn
L2:
iload 7
iconst_1
isub
istore 7
goto L1
L0:
iload 2
ifeq L3
aload 1
iload 3
ineg
invokestatic android/support/v4/view/ViewCompat/canScrollHorizontally(Landroid/view/View;I)Z
ifne L4
aload 1
iload 4
ineg
invokestatic android/support/v4/view/ViewCompat/canScrollVertically(Landroid/view/View;I)Z
ifeq L3
L4:
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 12
.limit stack 8
.end method

.method public cancel()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
aload 0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clearMotionHistory()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public captureChildView(Landroid/view/View;I)V
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
if_acmpeq L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
aload 0
iload 2
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewCaptured(Landroid/view/View;I)V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
return
.limit locals 3
.limit stack 4
.end method

.method public checkTouchSlop(I)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/checkTouchSlop(II)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public checkTouchSlop(II)Z
iconst_1
istore 6
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isPointerDown(I)Z
ifne L0
iconst_0
istore 6
L1:
iload 6
ireturn
L0:
iload 1
iconst_1
iand
iconst_1
if_icmpne L2
iconst_1
istore 5
L3:
iload 1
iconst_2
iand
iconst_2
if_icmpne L4
iconst_1
istore 1
L5:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
iload 2
faload
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iload 2
faload
fsub
fstore 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
iload 2
faload
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iload 2
faload
fsub
fstore 4
iload 5
ifeq L6
iload 1
ifeq L6
fload 3
fload 3
fmul
fload 4
fload 4
fmul
fadd
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
imul
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L2:
iconst_0
istore 5
goto L3
L4:
iconst_0
istore 1
goto L5
L6:
iload 5
ifeq L7
fload 3
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L7:
iload 1
ifeq L8
fload 4
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
i2f
fcmpl
ifgt L1
iconst_0
ireturn
L8:
iconst_0
ireturn
.limit locals 7
.limit stack 3
.end method

.method public continueSettling(Z)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_2
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/computeScrollOffset()Z
istore 7
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrX()I
istore 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getCurrY()I
istore 3
iload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getLeft()I
isub
istore 4
iload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
isub
istore 5
iload 4
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 4
invokevirtual android/view/View/offsetLeftAndRight(I)V
L1:
iload 5
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 5
invokevirtual android/view/View/offsetTopAndBottom(I)V
L2:
iload 4
ifne L3
iload 5
ifeq L4
L3:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 2
iload 3
iload 4
iload 5
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewPositionChanged(Landroid/view/View;IIII)V
L4:
iload 7
istore 6
iload 7
ifeq L5
iload 7
istore 6
iload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getFinalX()I
if_icmpne L5
iload 7
istore 6
iload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/getFinalY()I
if_icmpne L5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/abortAnimation()V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/isFinished()Z
istore 6
L5:
iload 6
ifne L0
iload 1
ifeq L6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mSetIdleRunnable Ljava/lang/Runnable;
invokevirtual android/view/ViewGroup/post(Ljava/lang/Runnable;)Z
pop
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_2
if_icmpne L7
iconst_1
ireturn
L6:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
goto L0
L7:
iconst_0
ireturn
.limit locals 8
.limit stack 6
.end method

.method public findTopChildUnder(II)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getChildCount()I
iconst_1
isub
istore 3
L0:
iload 3
iflt L1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mParentView Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
iload 3
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/getOrderedChildIndex(I)I
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 4
iload 1
aload 4
invokevirtual android/view/View/getLeft()I
if_icmplt L2
iload 1
aload 4
invokevirtual android/view/View/getRight()I
if_icmpge L2
iload 2
aload 4
invokevirtual android/view/View/getTop()I
if_icmplt L2
iload 2
aload 4
invokevirtual android/view/View/getBottom()I
if_icmpge L2
aload 4
areturn
L2:
iload 3
iconst_1
isub
istore 3
goto L0
L1:
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public flingCapturedView(IIII)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mReleaseInProgress Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "Cannot flingCapturedView outside of a call to Callback#onViewReleased"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mScroller Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
f2i
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
f2i
iload 1
iload 3
iload 2
iload 4
invokevirtual com/nd/android/backpacksystem/helper/ScrollerCompat/fling(IIIIIIII)V
aload 0
iconst_2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/setDragState(I)V
return
.limit locals 5
.limit stack 9
.end method

.method public getActivePointerId()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCapturedView()Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEdgeSize()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMinVelocity()F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getTouchSlop()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getViewDragState()I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCapturedViewUnder(II)Z
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isViewUnder(Landroid/view/View;II)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public isEdgeTouched(I)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isEdgeTouched(II)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public isEdgeTouched(II)Z
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isPointerDown(I)Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 2
iaload
iload 1
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public isPointerDown(I)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mPointersDown I
iconst_1
iload 1
ishl
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public isViewUnder(Landroid/view/View;II)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmplt L1
iload 2
aload 1
invokevirtual android/view/View/getRight()I
if_icmpge L1
iload 3
aload 1
invokevirtual android/view/View/getTop()I
if_icmplt L1
iload 3
aload 1
invokevirtual android/view/View/getBottom()I
if_icmpge L1
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionMasked(Landroid/view/MotionEvent;)I
istore 7
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 6
iload 7
ifne L0
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L1
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
L1:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
iload 7
tableswitch 0
L2
L3
L4
L5
L6
L7
L8
default : L6
L6:
return
L2:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 6
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
astore 1
aload 0
fload 2
fload 3
iload 6
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveInitialMotion(FFI)V
aload 0
aload 1
iload 6
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
pop
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 6
iaload
istore 7
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 7
iand
ifeq L6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 7
iand
iload 6
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeTouched(II)V
return
L7:
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 7
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
aload 0
fload 2
fload 3
iload 7
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveInitialMotion(FFI)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
ifne L9
aload 0
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
pop
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 7
iaload
istore 6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 6
iand
ifeq L6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 6
iand
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeTouched(II)V
return
L9:
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isCapturedViewUnder(II)Z
ifeq L6
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
pop
return
L4:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L10
aload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
istore 6
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
fload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionX [F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
faload
fsub
f2i
istore 6
fload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mLastMotionY [F
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
faload
fsub
f2i
istore 7
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getLeft()I
iload 6
iadd
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
iload 7
iadd
iload 6
iload 7
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/dragTo(IIII)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveLastMotion(Landroid/view/MotionEvent;)V
return
L10:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getPointerCount(Landroid/view/MotionEvent;)I
istore 7
iconst_0
istore 6
L11:
iload 6
iload 7
if_icmpge L12
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 8
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
fload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iload 8
faload
fsub
fstore 4
fload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iload 8
faload
fsub
fstore 5
aload 0
fload 4
fload 5
iload 8
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/reportNewEdgeDrags(FFI)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L13
L12:
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveLastMotion(Landroid/view/MotionEvent;)V
return
L13:
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
astore 11
aload 0
aload 11
fload 4
fload 5
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkTouchSlop(Landroid/view/View;FF)Z
ifeq L14
aload 0
aload 11
iload 8
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
ifne L12
L14:
iload 6
iconst_1
iadd
istore 6
goto L11
L8:
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 9
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L15
iload 9
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
if_icmpne L15
iconst_m1
istore 8
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getPointerCount(Landroid/view/MotionEvent;)I
istore 10
iconst_0
istore 6
L16:
iload 8
istore 7
iload 6
iload 10
if_icmpge L17
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 7
iload 7
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
if_icmpne L18
L19:
iload 6
iconst_1
iadd
istore 6
goto L16
L18:
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
if_acmpne L19
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
ifeq L19
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
istore 7
L17:
iload 7
iconst_m1
if_icmpne L15
aload 0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/releaseViewForPointerUp()V
L15:
aload 0
iload 9
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clearMotionHistory(I)V
return
L3:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L20
aload 0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/releaseViewForPointerUp()V
L20:
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
return
L5:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L21
aload 0
fconst_0
fconst_0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/dispatchViewReleased(FF)V
L21:
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
return
.limit locals 12
.limit stack 5
.end method

.method setDragState(I)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iload 1
if_icmpeq L0
aload 0
iload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
iload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onViewDragStateChanged(I)V
iload 1
ifne L0
aload 0
aconst_null
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setEdgeSize(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mEdgeSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setEdgeTrackingEnabled(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
return
.limit locals 2
.limit stack 2
.end method

.method public setMinVelocity(F)V
aload 0
fload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mMinVelocity F
return
.limit locals 2
.limit stack 2
.end method

.method public setSensitivity(Landroid/content/Context;F)V
fconst_0
fconst_1
fload 2
invokestatic java/lang/Math/min(FF)F
invokestatic java/lang/Math/max(FF)F
fstore 2
aload 0
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
i2f
fconst_1
fload 2
fdiv
fmul
f2i
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTouchSlop I
return
.limit locals 3
.limit stack 4
.end method

.method public settleCapturedViewAt(II)Z
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mReleaseInProgress Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
iload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
f2i
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
f2i
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/forceSettleCapturedViewAt(IIII)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionMasked(Landroid/view/MotionEvent;)I
istore 7
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 6
iload 7
ifne L0
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
L0:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L1
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
L1:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
iload 7
tableswitch 0
L2
L3
L4
L3
L5
L6
L7
default : L5
L5:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L8
iconst_1
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 6
aload 0
fload 2
fload 3
iload 6
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveInitialMotion(FFI)V
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
astore 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
if_acmpne L9
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_2
if_icmpne L9
aload 0
aload 1
iload 6
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
pop
L9:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 6
iaload
istore 7
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 7
iand
ifeq L5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 7
iand
iload 6
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeTouched(II)V
goto L5
L6:
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 7
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
aload 0
fload 2
fload 3
iload 7
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveInitialMotion(FFI)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
ifne L10
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialEdgesTouched [I
iload 7
iaload
istore 6
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 6
iand
ifeq L5
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mTrackingEdges I
iload 6
iand
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/onEdgeTouched(II)V
goto L5
L10:
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_2
if_icmpne L5
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
astore 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
if_acmpne L5
aload 0
aload 1
iload 7
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
pop
goto L5
L4:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getPointerCount(Landroid/view/MotionEvent;)I
istore 7
iconst_0
istore 6
L11:
iload 6
iload 7
if_icmpge L12
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 8
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
fload 2
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionX [F
iload 8
faload
fsub
fstore 4
fload 3
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mInitialMotionY [F
iload 8
faload
fsub
fstore 5
aload 0
fload 4
fload 5
iload 8
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/reportNewEdgeDrags(FFI)V
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mDragState I
iconst_1
if_icmpne L13
L12:
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/saveLastMotion(Landroid/view/MotionEvent;)V
goto L5
L13:
aload 0
fload 2
f2i
fload 3
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/findTopChildUnder(II)Landroid/view/View;
astore 9
aload 9
ifnull L14
aload 0
aload 9
fload 4
fload 5
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/checkTouchSlop(Landroid/view/View;FF)Z
ifeq L14
aload 0
aload 9
iload 8
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/tryCaptureViewForDrag(Landroid/view/View;I)Z
ifne L12
L14:
iload 6
iconst_1
iadd
istore 6
goto L11
L7:
aload 0
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/clearMotionHistory(I)V
goto L5
L3:
aload 0
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
goto L5
L8:
iconst_0
ireturn
.limit locals 10
.limit stack 4
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
aload 0
aload 1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
aload 0
iload 2
iload 3
iconst_0
iconst_0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper/forceSettleCapturedViewAt(IIII)Z
ireturn
.limit locals 4
.limit stack 5
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
aload 1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCapturedView Landroid/view/View;
if_acmpne L0
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
iload 2
if_icmpne L0
iconst_1
ireturn
L0:
aload 1
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/helper/ViewDragHelper/mCallback Lcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;
aload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/tryCaptureView(Landroid/view/View;I)Z
ifeq L1
aload 0
iload 2
putfield com/nd/android/backpacksystem/helper/ViewDragHelper/mActivePointerId I
aload 0
aload 1
iload 2
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/captureChildView(Landroid/view/View;I)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
