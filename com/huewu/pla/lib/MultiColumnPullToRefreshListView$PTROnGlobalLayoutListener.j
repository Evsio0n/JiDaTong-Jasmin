.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.inner class private PTROnGlobalLayoutListener inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener outer com/huewu/pla/lib/MultiColumnPullToRefreshListView

.field final synthetic 'this$0' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;

.method private <init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onGlobalLayout()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$9(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
istore 1
iload 1
ifle L0
iload 1
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$10(I)V
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$2()I
ifle L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$0(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$2()I
ineg
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$4(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/requestLayout()V
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
invokevirtual android/view/ViewTreeObserver/removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return
.limit locals 2
.limit stack 2
.end method
