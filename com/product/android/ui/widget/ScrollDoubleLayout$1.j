.bytecode 50.0
.class synchronized com/product/android/ui/widget/ScrollDoubleLayout$1
.super java/util/TimerTask
.enclosing method com/product/android/ui/widget/ScrollDoubleLayout/update()V
.inner class inner com/product/android/ui/widget/ScrollDoubleLayout$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/ScrollDoubleLayout;

.method <init>(Lcom/product/android/ui/widget/ScrollDoubleLayout;)V
aload 0
aload 1
putfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$000(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpne L0
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_0
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$002(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
pop
L0:
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$100(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpne L1
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_0
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$102(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
pop
L1:
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/isShown()Z
ifeq L2
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$200(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
ifne L3
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_0
putfield android/os/Message/what I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
getfield com/product/android/ui/widget/ScrollDoubleLayout/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_1
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$202(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
pop
L2:
return
L3:
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$200(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
iconst_1
if_icmpne L4
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
getfield com/product/android/ui/widget/ScrollDoubleLayout/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_2
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$202(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
pop
return
L4:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
getfield com/product/android/ui/widget/ScrollDoubleLayout/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout$1/this$0 Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_1
invokestatic com/product/android/ui/widget/ScrollDoubleLayout/access$202(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
pop
return
.limit locals 2
.limit stack 2
.end method
