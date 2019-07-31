.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
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
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
