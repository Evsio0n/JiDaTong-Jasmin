.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1
.super java/lang/Thread
.enclosing method com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.inner class public static DefaultThreadFactory inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1

.field final synthetic 'this$0' Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;

.method <init>(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1/this$0 Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;
aload 0
aload 2
aload 3
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
bipush 10
invokestatic android/os/Process/setThreadPriority(I)V
aload 0
invokespecial java/lang/Thread/run()V
return
.limit locals 1
.limit stack 1
.end method
