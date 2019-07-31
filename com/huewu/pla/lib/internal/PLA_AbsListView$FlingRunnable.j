.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable
.super java/lang/Object
.implements java/lang/Runnable
.inner class private FlingRunnable inner com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable outer com/huewu/pla/lib/internal/PLA_AbsListView

.field private 'mLastFlingY' I

.field private final 'mScroller' Landroid/widget/Scroller;

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/widget/Scroller
dup
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getContext()Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mScroller Landroid/widget/Scroller;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;)V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/endFling()V
return
.limit locals 1
.limit stack 1
.end method

.method private endFling()V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mLastFlingY I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$2(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeCallbacks(Ljava/lang/Runnable;)Z
pop
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
tableswitch 4
L0
default : L1
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
ifeq L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifne L3
L2:
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/endFling()V
return
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mScroller Landroid/widget/Scroller;
astore 6
aload 6
invokevirtual android/widget/Scroller/computeScrollOffset()Z
istore 4
aload 6
invokevirtual android/widget/Scroller/getCurrY()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mLastFlingY I
iload 2
isub
istore 1
iload 1
ifle L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollChildTop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
isub
iconst_1
isub
iload 1
invokestatic java/lang/Math/min(II)I
istore 1
L5:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 1
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/trackMotionScroll(II)Z
istore 5
iload 4
ifeq L6
iload 5
ifne L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mLastFlingY I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L4:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 3
iconst_1
isub
iadd
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollChildBottom()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
isub
iconst_1
isub
ineg
iload 1
invokestatic java/lang/Math/max(II)I
istore 1
goto L5
L6:
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/endFling()V
return
.limit locals 7
.limit stack 4
.end method

.method start(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/modifyFlingInitialVelocity(I)I
istore 2
iload 2
ifge L0
ldc_w 2147483647
istore 1
L1:
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mLastFlingY I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_0
iload 1
iconst_0
iload 2
iconst_0
ldc_w 2147483647
iconst_0
ldc_w 2147483647
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 9
.end method

.method startScroll(II)V
iload 1
ifge L0
ldc_w 2147483647
istore 3
L1:
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mLastFlingY I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_0
iload 3
iconst_0
iload 1
iload 2
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L0:
iconst_0
istore 3
goto L1
.limit locals 4
.limit stack 6
.end method
