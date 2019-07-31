.bytecode 50.0
.class synchronized android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase
.super java/lang/Object
.implements android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl
.inner class static GestureDetectorCompatImplBase inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase outer android/support/v4/view/GestureDetectorCompat
.inner class private GestureHandler inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler outer android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase

.field private static final 'DOUBLE_TAP_TIMEOUT' I

.field private static final 'LONGPRESS_TIMEOUT' I

.field private static final 'LONG_PRESS' I = 2


.field private static final 'SHOW_PRESS' I = 1


.field private static final 'TAP' I = 3


.field private static final 'TAP_TIMEOUT' I

.field private 'mAlwaysInBiggerTapRegion' Z

.field private 'mAlwaysInTapRegion' Z

.field private 'mCurrentDownEvent' Landroid/view/MotionEvent;

.field private 'mDoubleTapListener' Landroid/view/GestureDetector$OnDoubleTapListener;

.field private 'mDoubleTapSlopSquare' I

.field private 'mDownFocusX' F

.field private 'mDownFocusY' F

.field private final 'mHandler' Landroid/os/Handler;

.field private 'mInLongPress' Z

.field private 'mIsDoubleTapping' Z

.field private 'mIsLongpressEnabled' Z

.field private 'mLastFocusX' F

.field private 'mLastFocusY' F

.field private final 'mListener' Landroid/view/GestureDetector$OnGestureListener;

.field private 'mMaximumFlingVelocity' I

.field private 'mMinimumFlingVelocity' I

.field private 'mPreviousUpEvent' Landroid/view/MotionEvent;

.field private 'mStillDown' Z

.field private 'mTouchSlopSquare' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.method static <clinit>()V
invokestatic android/view/ViewConfiguration/getLongPressTimeout()I
putstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/LONGPRESS_TIMEOUT I
invokestatic android/view/ViewConfiguration/getTapTimeout()I
putstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/TAP_TIMEOUT I
invokestatic android/view/ViewConfiguration/getDoubleTapTimeout()I
putstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/DOUBLE_TAP_TIMEOUT I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 3
ifnull L0
aload 0
new android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler
dup
aload 0
aload 3
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/<init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
L1:
aload 0
aload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 2
instanceof android/view/GestureDetector$OnDoubleTapListener
ifeq L2
aload 0
aload 2
checkcast android/view/GestureDetector$OnDoubleTapListener
invokevirtual android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
L2:
aload 0
aload 1
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/init(Landroid/content/Context;)V
return
L0:
aload 0
new android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler
dup
aload 0
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/<init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
goto L1
.limit locals 4
.limit stack 5
.end method

.method static synthetic access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
aload 0
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/dispatchLongPress()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mStillDown Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private cancel()V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mStillDown Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInBiggerTapRegion Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
ifeq L0
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private cancelTaps()V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInBiggerTapRegion Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
ifeq L0
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private dispatchLongPress()V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
invokeinterface android/view/GestureDetector$OnGestureListener/onLongPress(Landroid/view/MotionEvent;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method private init(Landroid/content/Context;)V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "Context must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "OnGestureListener must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsLongpressEnabled Z
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 1
aload 1
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
istore 2
aload 1
invokevirtual android/view/ViewConfiguration/getScaledDoubleTapSlop()I
istore 3
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMinimumFlingVelocity()I
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMinimumFlingVelocity I
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMaximumFlingVelocity I
aload 0
iload 2
iload 2
imul
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mTouchSlopSquare I
aload 0
iload 3
iload 3
imul
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapSlopSquare I
return
.limit locals 4
.limit stack 3
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInBiggerTapRegion Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 3
invokevirtual android/view/MotionEvent/getEventTime()J
aload 2
invokevirtual android/view/MotionEvent/getEventTime()J
lsub
getstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/DOUBLE_TAP_TIMEOUT I
i2l
lcmp
ifgt L1
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
aload 3
invokevirtual android/view/MotionEvent/getX()F
f2i
isub
istore 4
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
aload 3
invokevirtual android/view/MotionEvent/getY()F
f2i
isub
istore 5
iload 4
iload 4
imul
iload 5
iload 5
imul
iadd
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapSlopSquare I
if_icmpge L1
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public isLongpressEnabled()Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsLongpressEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 10
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L0
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
L0:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
iload 10
sipush 255
iand
bipush 6
if_icmpne L1
iconst_1
istore 6
L2:
iload 6
ifeq L3
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 7
L4:
fconst_0
fstore 3
fconst_0
fstore 2
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getPointerCount(Landroid/view/MotionEvent;)I
istore 9
iconst_0
istore 8
L5:
iload 8
iload 9
if_icmpge L6
iload 7
iload 8
if_icmpne L7
L8:
iload 8
iconst_1
iadd
istore 8
goto L5
L1:
iconst_0
istore 6
goto L2
L3:
iconst_m1
istore 7
goto L4
L7:
fload 3
aload 1
iload 8
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fadd
fstore 3
fload 2
aload 1
iload 8
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fadd
fstore 2
goto L8
L6:
iload 6
ifeq L9
iload 9
iconst_1
isub
istore 6
L10:
fload 3
iload 6
i2f
fdiv
fstore 3
fload 2
iload 6
i2f
fdiv
fstore 2
iconst_0
istore 7
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 11
iload 11
istore 12
iload 10
sipush 255
iand
tableswitch 0
L11
L12
L13
L14
L15
L16
L17
default : L18
L18:
iload 11
istore 12
L15:
iload 12
ireturn
L9:
iload 9
istore 6
goto L10
L16:
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusX F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusY F
aload 0
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/cancelTaps()V
iconst_0
ireturn
L17:
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusX F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusY F
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
sipush 1000
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMaximumFlingVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 7
aload 1
iload 7
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 6
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
iload 6
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
fstore 2
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
iload 6
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
fstore 3
iconst_0
istore 6
L19:
iload 11
istore 12
iload 6
iload 9
if_icmpge L15
iload 6
iload 7
if_icmpne L20
L21:
iload 6
iconst_1
iadd
istore 6
goto L19
L20:
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 8
fload 2
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
iload 8
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
fmul
fload 3
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
iload 8
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
fmul
fadd
fconst_0
fcmpg
ifge L21
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/clear()V
iconst_0
ireturn
L11:
iload 7
istore 6
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
ifnull L22
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/hasMessages(I)Z
istore 11
iload 11
ifeq L23
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
L23:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
ifnull L24
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mPreviousUpEvent Landroid/view/MotionEvent;
ifnull L24
iload 11
ifeq L24
aload 0
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mPreviousUpEvent Landroid/view/MotionEvent;
aload 1
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
ifeq L24
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
iconst_0
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
invokeinterface android/view/GestureDetector$OnDoubleTapListener/onDoubleTap(Landroid/view/MotionEvent;)Z 1
ior
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
aload 1
invokeinterface android/view/GestureDetector$OnDoubleTapListener/onDoubleTapEvent(Landroid/view/MotionEvent;)Z 1
ior
istore 6
L22:
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusX F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusY F
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
ifnull L25
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
invokevirtual android/view/MotionEvent/recycle()V
L25:
aload 0
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInBiggerTapRegion Z
aload 0
iconst_1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mStillDown Z
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsLongpressEnabled Z
ifeq L26
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
invokevirtual android/view/MotionEvent/getDownTime()J
getstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/TAP_TIMEOUT I
i2l
ladd
getstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/LONGPRESS_TIMEOUT I
i2l
ladd
invokevirtual android/os/Handler/sendEmptyMessageAtTime(IJ)Z
pop
L26:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_1
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
invokevirtual android/view/MotionEvent/getDownTime()J
getstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/TAP_TIMEOUT I
i2l
ladd
invokevirtual android/os/Handler/sendEmptyMessageAtTime(IJ)Z
pop
iload 6
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 1
invokeinterface android/view/GestureDetector$OnGestureListener/onDown(Landroid/view/MotionEvent;)Z 1
ior
ireturn
L24:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
getstatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/DOUBLE_TAP_TIMEOUT I
i2l
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
iload 7
istore 6
goto L22
L13:
iload 11
istore 12
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
ifne L15
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
fload 3
fsub
fstore 4
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
fload 2
fsub
fstore 5
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
ifeq L27
iconst_0
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
aload 1
invokeinterface android/view/GestureDetector$OnDoubleTapListener/onDoubleTapEvent(Landroid/view/MotionEvent;)Z 1
ior
ireturn
L27:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
ifeq L28
fload 3
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusX F
fsub
f2i
istore 6
fload 2
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDownFocusY F
fsub
f2i
istore 7
iload 6
iload 6
imul
iload 7
iload 7
imul
iadd
istore 6
iload 13
istore 11
iload 6
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mTouchSlopSquare I
if_icmple L29
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
aload 1
fload 4
fload 5
invokeinterface android/view/GestureDetector$OnGestureListener/onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z 4
istore 11
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
L29:
iload 11
istore 12
iload 6
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mTouchSlopSquare I
if_icmple L15
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInBiggerTapRegion Z
iload 11
ireturn
L28:
fload 4
invokestatic java/lang/Math/abs(F)F
fconst_1
fcmpl
ifge L30
iload 11
istore 12
fload 5
invokestatic java/lang/Math/abs(F)F
fconst_1
fcmpl
iflt L15
L30:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
aload 1
fload 4
fload 5
invokeinterface android/view/GestureDetector$OnGestureListener/onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z 4
istore 11
aload 0
fload 3
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusX F
aload 0
fload 2
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mLastFocusY F
iload 11
ireturn
L12:
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mStillDown Z
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
astore 15
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
ifeq L31
iconst_0
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
aload 1
invokeinterface android/view/GestureDetector$OnDoubleTapListener/onDoubleTapEvent(Landroid/view/MotionEvent;)Z 1
ior
istore 11
L32:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mPreviousUpEvent Landroid/view/MotionEvent;
ifnull L33
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mPreviousUpEvent Landroid/view/MotionEvent;
invokevirtual android/view/MotionEvent/recycle()V
L33:
aload 0
aload 15
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mPreviousUpEvent Landroid/view/MotionEvent;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L34
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
L34:
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsDoubleTapping Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
iload 11
ireturn
L31:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
ifeq L35
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mHandler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
iconst_0
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mInLongPress Z
iload 14
istore 11
goto L32
L35:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mAlwaysInTapRegion Z
ifeq L36
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 1
invokeinterface android/view/GestureDetector$OnGestureListener/onSingleTapUp(Landroid/view/MotionEvent;)Z 1
istore 11
goto L32
L36:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mVelocityTracker Landroid/view/VelocityTracker;
astore 16
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
istore 6
aload 16
sipush 1000
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMaximumFlingVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 16
iload 6
invokestatic android/support/v4/view/VelocityTrackerCompat/getYVelocity(Landroid/view/VelocityTracker;I)F
fstore 2
aload 16
iload 6
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
fstore 3
fload 2
invokestatic java/lang/Math/abs(F)F
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMinimumFlingVelocity I
i2f
fcmpl
ifgt L37
iload 14
istore 11
fload 3
invokestatic java/lang/Math/abs(F)F
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mMinimumFlingVelocity I
i2f
fcmpl
ifle L32
L37:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mListener Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mCurrentDownEvent Landroid/view/MotionEvent;
aload 1
fload 3
fload 2
invokeinterface android/view/GestureDetector$OnGestureListener/onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z 4
istore 11
goto L32
L14:
aload 0
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/cancel()V
iconst_0
ireturn
.limit locals 17
.limit stack 6
.end method

.method public setIsLongpressEnabled(Z)V
aload 0
iload 1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mIsLongpressEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
aload 0
aload 1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/mDoubleTapListener Landroid/view/GestureDetector$OnDoubleTapListener;
return
.limit locals 2
.limit stack 2
.end method
