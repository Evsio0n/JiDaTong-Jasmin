.bytecode 50.0
.class synchronized com/product/android/ui/widget/WbflowTaskOverView$3
.super android/os/Handler
.enclosing method com/product/android/ui/widget/WbflowTaskOverView
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$3

.field final synthetic 'this$0' Lcom/product/android/ui/widget/WbflowTaskOverView;

.method <init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/WbflowTaskOverView$3/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
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
tableswitch 2013
L0
default : L1
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$3/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
iconst_0
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/beginAnimate(Z)V
return
.limit locals 2
.limit stack 2
.end method
