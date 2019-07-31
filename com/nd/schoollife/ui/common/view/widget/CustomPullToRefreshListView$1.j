.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<Landroid/widget/ListView;>;"
.enclosing method com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/registerActionListener()V
.inner class inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.method <init>(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$000(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$100(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$200(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Landroid/widget/TextView;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$200(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Landroid/widget/TextView;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L2:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$300(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$300(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
bipush 99
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/setAction(I)V 1
L3:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$402(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;Z)Z
pop
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$100(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
aload 1
invokeinterface com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener/onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$000(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L1
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$000(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$100(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "ActionListerner is null\uff01"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$300(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$300(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
bipush 98
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/setAction(I)V 1
L2:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/this$0 Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokestatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/access$100(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
aload 1
invokeinterface com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener/onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
return
.limit locals 2
.limit stack 3
.end method
