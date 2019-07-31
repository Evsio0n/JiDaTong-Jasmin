.bytecode 50.0
.class synchronized com/product/android/ui/widget/WbflowTaskOverView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/widget/WbflowTaskOverView
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/WbflowTaskOverView;

.method <init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/WbflowTaskOverView$1/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/allcommon/R$id/layout_task_over I
if_icmpne L0
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$1/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
invokestatic com/product/android/ui/widget/WbflowTaskOverView/access$000(Lcom/product/android/ui/widget/WbflowTaskOverView;)Landroid/content/Context;
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/toReceivePoint(Landroid/content/Context;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
