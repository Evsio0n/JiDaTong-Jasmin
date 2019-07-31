.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory
.super java/lang/Object
.implements java/util/concurrent/ThreadFactory
.inner class public static DefaultThreadFactory inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1

.field 'threadNum' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/threadNum I
return
.limit locals 1
.limit stack 2
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1
dup
aload 0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fifo-pool-thread-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/threadNum I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1/<init>(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
astore 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/threadNum I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/threadNum I
aload 1
areturn
.limit locals 2
.limit stack 6
.end method
