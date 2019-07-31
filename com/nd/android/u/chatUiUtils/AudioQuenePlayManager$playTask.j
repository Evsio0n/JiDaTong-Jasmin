.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask
.super java/lang/Thread
.inner class private playTask inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask outer com/nd/android/u/chatUiUtils/AudioQuenePlayManager

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.method private <init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnull L3
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCurrent()I 0
pop
L3:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnull L4
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$200(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Z
ifeq L4
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCurrent()I 0
iconst_1
iadd
istore 2
iload 2
istore 1
iload 2
iconst_2
if_icmple L5
iconst_0
istore 1
L5:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCurrent(I)V 1
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$300(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$300(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
ldc2_w 500L
invokestatic java/lang/Thread/sleep(J)V
L1:
goto L3
L2:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L3
L4:
return
.limit locals 4
.limit stack 2
.end method
