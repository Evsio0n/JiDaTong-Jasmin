.bytecode 50.0
.class synchronized com/common/android/ui/widget/PullUpLoadMoreListView$1
.super java/lang/Object
.implements com/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener
.enclosing method com/common/android/ui/widget/PullUpLoadMoreListView
.inner class inner com/common/android/ui/widget/PullUpLoadMoreListView$1

.field final synthetic 'this$0' Lcom/common/android/ui/widget/PullUpLoadMoreListView;

.method <init>(Lcom/common/android/ui/widget/PullUpLoadMoreListView;)V
aload 0
aload 1
putfield com/common/android/ui/widget/PullUpLoadMoreListView$1/this$0 Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public checkIsFillFull(Landroid/widget/AbsListView;)Z
aload 1
checkcast android/widget/ListView
astore 1
aload 1
invokevirtual android/widget/ListView/getLastVisiblePosition()I
istore 2
iload 2
aload 1
invokevirtual android/widget/ListView/getChildCount()I
if_icmplt L0
L1:
iconst_1
ireturn
L0:
aload 1
iload 2
aload 1
invokevirtual android/widget/ListView/getFooterViewsCount()I
isub
aload 1
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
isub
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual android/view/View/getBottom()I
aload 1
invokevirtual android/widget/ListView/getHeight()I
if_icmpge L1
L2:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method
