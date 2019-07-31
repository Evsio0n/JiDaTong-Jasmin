.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$6
.super android/os/Handler
.enclosing method com/product/android/ui/widget/TopRankView
.inner class inner com/product/android/ui/widget/TopRankView$6

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$6/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 100
L0
default : L1
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView$6/this$0 Lcom/product/android/ui/widget/TopRankView;
invokevirtual com/product/android/ui/widget/TopRankView/hideTimeTip()V
return
.limit locals 2
.limit stack 2
.end method
