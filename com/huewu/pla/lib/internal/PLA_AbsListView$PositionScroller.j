.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller
.super java/lang/Object
.implements java/lang/Runnable
.inner class PositionScroller inner com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller outer com/huewu/pla/lib/internal/PLA_AbsListView

.field private static final 'MOVE_DOWN_BOUND' I = 3


.field private static final 'MOVE_DOWN_POS' I = 1


.field private static final 'MOVE_UP_BOUND' I = 4


.field private static final 'MOVE_UP_POS' I = 2


.field private static final 'SCROLL_DURATION' I = 400


.field private 'mBoundPos' I

.field private final 'mExtraScroll' I

.field private 'mLastSeenPos' I

.field private 'mMode' I

.field private 'mScrollDuration' I

.field private 'mTargetPos' I

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getContext()Landroid/content/Context;
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledFadingEdgeLength()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
tableswitch 1
L0
L1
L2
L3
default : L4
L4:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iconst_1
isub
istore 1
iload 3
iload 1
iadd
istore 3
iload 1
iflt L4
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
if_icmpne L5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L5:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getHeight()I
istore 4
aload 6
invokevirtual android/view/View/getTop()I
istore 5
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
iconst_1
isub
if_icmpge L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
istore 1
L7:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 4
iload 2
iload 5
isub
isub
iload 1
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mTargetPos I
if_icmpge L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L6:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
istore 1
goto L7
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 1
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mBoundPos I
if_icmpeq L4
iload 1
iconst_1
if_icmple L4
iload 3
iload 1
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
if_icmpge L4
iload 3
iconst_1
iadd
istore 1
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
if_icmpne L8
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L8:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getHeight()I
istore 2
aload 6
invokevirtual android/view/View/getTop()I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
istore 4
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mBoundPos I
if_icmpge L9
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
iload 2
iload 3
iadd
iload 4
isub
invokestatic java/lang/Math/max(II)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L9:
iload 3
iload 4
if_icmple L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 3
iload 4
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
return
L1:
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
if_icmpne L10
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L10:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 6
ifnull L4
aload 6
invokevirtual android/view/View/getTop()I
istore 2
iload 3
ifle L11
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
istore 1
L12:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 2
iload 1
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mTargetPos I
if_icmple L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L11:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 1
goto L12
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iconst_2
isub
istore 4
iload 4
iflt L4
iload 3
iload 4
iadd
istore 1
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
if_icmpne L13
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L13:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getHeight()I
istore 3
aload 6
invokevirtual android/view/View/getTop()I
istore 4
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mBoundPos I
if_icmple L14
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 2
iload 4
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
isub
ineg
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L14:
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mExtraScroll I
isub
istore 1
iload 4
iload 3
iadd
istore 2
iload 1
iload 2
if_icmple L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 1
iload 2
isub
ineg
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/smoothScrollBy(II)V
return
.limit locals 7
.limit stack 4
.end method

.method start(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iload 2
iadd
iconst_1
isub
istore 3
iload 1
iload 2
if_icmpgt L0
iload 2
iload 1
isub
iconst_1
iadd
istore 2
aload 0
iconst_2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
L1:
iload 2
ifle L2
aload 0
sipush 400
iload 2
idiv
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
L3:
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mTargetPos I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mBoundPos I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
L4:
return
L0:
iload 1
iload 3
if_icmplt L4
iload 1
iload 3
isub
iconst_1
iadd
istore 2
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
goto L1
L2:
aload 0
sipush 400
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
goto L3
.limit locals 4
.limit stack 3
.end method

.method start(II)V
iload 2
iconst_m1
if_icmpne L0
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/start(I)V
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iload 3
iadd
iconst_1
isub
istore 4
iload 1
iload 3
if_icmpgt L2
iload 4
iload 2
isub
istore 4
iload 4
iconst_1
if_icmplt L1
iload 3
iload 1
isub
iconst_1
iadd
istore 3
iload 4
iconst_1
isub
istore 4
iload 4
iload 3
if_icmpge L3
iload 4
istore 3
aload 0
iconst_4
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
L4:
iload 3
ifle L5
aload 0
sipush 400
iload 3
idiv
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
L6:
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mTargetPos I
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mBoundPos I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mLastSeenPos I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
L3:
aload 0
iconst_2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
goto L4
L2:
iload 1
iload 4
if_icmplt L1
iload 2
iload 3
isub
istore 5
iload 5
iconst_1
if_icmplt L1
iload 1
iload 4
isub
iconst_1
iadd
istore 3
iload 5
iconst_1
isub
istore 4
iload 4
iload 3
if_icmpge L7
iload 4
istore 3
aload 0
iconst_3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
goto L4
L7:
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mMode I
goto L4
L5:
aload 0
sipush 400
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/mScrollDuration I
goto L6
.limit locals 6
.limit stack 3
.end method

.method stop()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeCallbacks(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 2
.end method
