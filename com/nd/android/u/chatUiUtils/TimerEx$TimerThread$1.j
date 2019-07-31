.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/chatUiUtils/TimerEx$TimerThread/run()V
.inner class private TimerThread inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread outer com/nd/android/u/chatUiUtils/TimerEx
.inner class inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1

.field final synthetic 'this$1' Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;

.method <init>(Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1/this$1 Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1/this$1 Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$300(Lcom/nd/android/u/chatUiUtils/TimerEx;)Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1/this$1 Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
getfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/this$0 Lcom/nd/android/u/chatUiUtils/TimerEx;
invokestatic com/nd/android/u/chatUiUtils/TimerEx/access$300(Lcom/nd/android/u/chatUiUtils/TimerEx;)Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
invokeinterface com/nd/android/u/chatUiUtils/TimerEx$OnTimer/onTime()V 0
return
.limit locals 1
.limit stack 1
.end method
