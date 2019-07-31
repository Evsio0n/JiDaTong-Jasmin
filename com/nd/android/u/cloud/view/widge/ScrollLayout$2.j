.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/ScrollLayout$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/view/widge/ScrollLayout
.inner class inner com/nd/android/u/cloud/view/widge/ScrollLayout$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/ScrollLayout;

.method <init>(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/isShown()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$200(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$200(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$300(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Ljava/lang/Runnable;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$2/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$400(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 1
.limit stack 4
.end method
