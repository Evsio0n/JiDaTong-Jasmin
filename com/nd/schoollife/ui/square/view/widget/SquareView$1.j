.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/widget/SquareView$1
.super android/os/Handler
.enclosing method com/nd/schoollife/ui/square/view/widget/SquareView
.inner class inner com/nd/schoollife/ui/square/view/widget/SquareView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/widget/SquareView;

.method <init>(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SquareView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SquareView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
256 : L0
2048 : L1
default : L2
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokestatic com/nd/schoollife/ui/square/view/widget/SquareView/access$000(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)Lcom/nd/schoollife/ui/square/view/BannerView;
invokevirtual com/nd/schoollife/ui/square/view/BannerView/moveToNextPage()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokestatic com/nd/schoollife/ui/square/view/widget/SquareView/access$100(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/setRefreshing()V
return
.limit locals 2
.limit stack 1
.end method
