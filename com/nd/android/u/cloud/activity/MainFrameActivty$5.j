.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$5
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$5/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 30
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokestatic com/nd/android/u/cloud/activity/MainFrameActivty/access$500(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)Landroid/os/Handler;
bipush 30
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
new com/nd/android/u/cloud/activity/MainFrameActivty$5$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$5$1/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty$5;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
