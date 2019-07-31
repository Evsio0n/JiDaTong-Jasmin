.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/ScrollLayout$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/view/widge/ScrollLayout/startScoll(I)V
.inner class inner com/nd/android/u/cloud/view/widge/ScrollLayout$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/ScrollLayout;

.method <init>(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$000(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
istore 2
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$000(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
iload 2
iconst_1
iadd
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToScreen(I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$100(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$100(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokestatic com/nd/android/u/cloud/view/widge/ScrollLayout/access$000(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
invokeinterface com/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad/onScreenChange(I)I 1
ifne L4
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/setToScreen(I)V
return
L4:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
iload 2
iconst_1
iadd
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToScreen(I)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout$1/this$0 Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/stopScrollTimer()V
return
.limit locals 3
.limit stack 3
.end method
