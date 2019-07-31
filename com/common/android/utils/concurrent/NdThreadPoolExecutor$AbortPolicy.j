.bytecode 50.0
.class public synchronized com/common/android/utils/concurrent/NdThreadPoolExecutor$AbortPolicy
.super java/lang/Object
.implements java/util/concurrent/RejectedExecutionHandler
.inner class public static AbortPolicy inner com/common/android/utils/concurrent/NdThreadPoolExecutor$AbortPolicy outer com/common/android/utils/concurrent/NdThreadPoolExecutor

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/remove(Ljava/lang/Object;)Z 1
pop
new java/util/concurrent/RejectedExecutionException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Task "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " rejected from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/util/concurrent/ThreadPoolExecutor/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/util/concurrent/RejectedExecutionException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method
