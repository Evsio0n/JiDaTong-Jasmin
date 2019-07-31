.bytecode 50.0
.class synchronized com/product/android/ui/widget/WbflowTaskOverView$2
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/product/android/ui/widget/WbflowTaskOverView/beginAnimate(Z)V
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$2

.field final synthetic 'this$0' Lcom/product/android/ui/widget/WbflowTaskOverView;

.field final synthetic 'val$bShow' Z

.method <init>(Lcom/product/android/ui/widget/WbflowTaskOverView;Z)V
aload 0
aload 1
putfield com/product/android/ui/widget/WbflowTaskOverView$2/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
aload 0
iload 2
putfield com/product/android/ui/widget/WbflowTaskOverView$2/val$bShow Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/val$bShow Z
ifne L0
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
bipush 8
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/setVisibility(I)V
L0:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/clearAnimation()V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/val$bShow Z
ifeq L1
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
getfield com/product/android/ui/widget/WbflowTaskOverView/handler Landroid/os/Handler;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$2/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
getfield com/product/android/ui/widget/WbflowTaskOverView/handler Landroid/os/Handler;
sipush 2013
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
ldc2_w 4000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
L1:
return
.limit locals 2
.limit stack 4
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method
