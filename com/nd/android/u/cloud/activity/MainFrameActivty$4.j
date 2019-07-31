.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$4
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$4/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
bipush 30
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$4/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showMsgCount()V
L0:
return
.limit locals 2
.limit stack 2
.end method
