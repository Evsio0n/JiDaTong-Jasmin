.bytecode 50.0
.class synchronized com/product/android/ui/widget/WbflowTaskOverView$4
.super android/content/BroadcastReceiver
.enclosing method com/product/android/ui/widget/WbflowTaskOverView
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$4

.field final synthetic 'this$0' Lcom/product/android/ui/widget/WbflowTaskOverView;

.method <init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 2
ldc "activity_context"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
invokestatic com/product/android/ui/widget/WbflowTaskOverView/access$000(Lcom/product/android/ui/widget/WbflowTaskOverView;)Landroid/content/Context;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L0
aload 2
ldc "task_over_type"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 3
iload 3
ifne L1
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
invokestatic com/product/android/ui/widget/WbflowTaskOverView/access$100(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
iconst_1
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/beginAnimate(Z)V
L0:
return
L1:
iconst_1
iload 3
if_icmpne L0
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
aload 2
ldc "flower_task_over_msg"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/ui/widget/WbflowTaskOverView/access$200(Lcom/product/android/ui/widget/WbflowTaskOverView;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView$4/this$0 Lcom/product/android/ui/widget/WbflowTaskOverView;
iconst_1
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/beginAnimate(Z)V
return
.limit locals 4
.limit stack 3
.end method
