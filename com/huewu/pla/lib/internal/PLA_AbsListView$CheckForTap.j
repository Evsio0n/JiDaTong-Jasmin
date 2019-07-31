.bytecode 50.0
.class final synchronized com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap
.super java/lang/Object
.implements java/lang/Runnable
.inner class final CheckForTap inner com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap outer com/huewu/pla/lib/internal/PLA_AbsListView

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/view/View/hasFocusable()Z
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
ifne L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/layoutChildren()V
aload 3
iconst_1
invokevirtual android/view/View/setPressed(Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 3
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/positionSelector(Landroid/view/View;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setPressed(Z)V
invokestatic android/view/ViewConfiguration/getLongPressTimeout()I
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isLongClickable()Z
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
ifnull L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getCurrent()Landroid/graphics/drawable/Drawable;
astore 3
aload 3
ifnull L2
aload 3
instanceof android/graphics/drawable/TransitionDrawable
ifeq L2
iload 2
ifeq L3
aload 3
checkcast android/graphics/drawable/TransitionDrawable
iload 1
invokevirtual android/graphics/drawable/TransitionDrawable/startTransition(I)V
L2:
iload 2
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
L0:
return
L3:
aload 3
checkcast android/graphics/drawable/TransitionDrawable
invokevirtual android/graphics/drawable/TransitionDrawable/resetTransition()V
goto L2
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
return
.limit locals 4
.limit stack 3
.end method
