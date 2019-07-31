.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/alarm/BirthdayRemindReceiver
.super android/content/BroadcastReceiver

.method public <init>()V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 3
.limit stack 3
.end method
