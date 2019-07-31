.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1
.super android/os/Handler
.enclosing method com/nd/android/u/chatUiUtils/AudioQuenePlayManager
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.method <init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
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
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
bipush 16
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method
