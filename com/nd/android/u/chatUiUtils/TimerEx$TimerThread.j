.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/TimerEx$TimerThread
.super java/lang/Thread
.inner class private TimerThread inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread outer com/nd/android/u/chatUiUtils/TimerEx
.inner class inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1

.field public 'stop' Z

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/TimerEx;

.method public <init>(Lcom/nd/android/u/chatUiUtils/TimerEx;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/stop Z
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
L3:
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/stop Z
ifne L4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$008(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
pop
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$000(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$100(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
if_icmpne L3
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$200(Lcom/nd/android/u/chatUiUtils/TimerEx;)Landroid/os/Handler;
ifnonnull L5
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$300(Lcom/nd/android/u/chatUiUtils/TimerEx;)Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
ifnonnull L6
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L6:
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$300(Lcom/nd/android/u/chatUiUtils/TimerEx;)Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
invokeinterface com/nd/android/u/chatUiUtils/TimerEx$OnTimer/onTime()V 0
return
L5:
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$200(Lcom/nd/android/u/chatUiUtils/TimerEx;)Landroid/os/Handler;
new com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1/<init>(Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
