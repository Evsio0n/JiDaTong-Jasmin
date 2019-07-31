.bytecode 50.0
.class final synchronized com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable
.super java/lang/Object
.implements java/lang/Runnable
.inner class final SmoothScrollRunnable inner com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field private 'mContinueRunning' Z

.field private 'mCurrentY' I

.field private final 'mDuration' J

.field private final 'mInterpolator' Landroid/view/animation/Interpolator;

.field private 'mListener' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final 'mScrollFromY' I

.field private final 'mScrollToY' I

.field private 'mStartTime' J

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mContinueRunning Z
aload 0
ldc2_w -1L
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mStartTime J
aload 0
iconst_m1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mCurrentY I
aload 0
iload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollFromY I
aload 0
iload 3
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollToY I
aload 0
aload 1
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/access$0(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mInterpolator Landroid/view/animation/Interpolator;
aload 0
lload 4
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mDuration J
aload 0
aload 6
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
return
.limit locals 7
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mStartTime J
ldc2_w -1L
lcmp
ifne L0
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mStartTime J
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mContinueRunning Z
ifeq L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollToY I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mCurrentY I
if_icmpeq L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
invokestatic com/handmark/pulltorefresh/library/internal/ViewCompat/postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
L3:
return
L0:
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mStartTime J
lsub
ldc2_w 1000L
lmul
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mDuration J
ldiv
ldc2_w 1000L
invokestatic java/lang/Math/min(JJ)J
lconst_0
invokestatic java/lang/Math/max(JJ)J
lstore 2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollFromY I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollToY I
isub
i2f
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mInterpolator Landroid/view/animation/Interpolator;
lload 2
l2f
ldc_w 1000.0F
fdiv
invokeinterface android/view/animation/Interpolator/getInterpolation(F)F 1
fmul
invokestatic java/lang/Math/round(F)I
istore 1
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mScrollFromY I
iload 1
isub
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mCurrentY I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mCurrentY I
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setHeaderScroll(I)V
goto L1
L2:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
ifnull L3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener/onSmoothScrollFinished()V 0
return
.limit locals 4
.limit stack 4
.end method

.method public stop()V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/mContinueRunning Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/removeCallbacks(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 2
.end method
