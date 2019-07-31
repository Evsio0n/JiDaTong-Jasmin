.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.super java/util/concurrent/ThreadPoolExecutor
.inner class static synthetic inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$1
.inner class public static DefaultThreadFactory inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory$1
.inner class static LoadTask inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class public static enum UncaughtThrowableStrategy inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2

.field private static final 'TAG' Ljava/lang/String; = "PriorityExecutor"

.field private final 'ordering' Ljava/util/concurrent/atomic/AtomicInteger;

.field private final 'uncaughtThrowableStrategy' Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

.method public <init>(I)V
aload 0
iload 1
getstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/LOG Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/<init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
aload 0
iload 1
iload 2
lload 3
aload 5
new java/util/concurrent/PriorityBlockingQueue
dup
invokespecial java/util/concurrent/PriorityBlockingQueue/<init>()V
aload 6
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>()V
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/ordering Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
aload 7
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/uncaughtThrowableStrategy Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
return
.limit locals 8
.limit stack 8
.end method

.method public <init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
aload 0
iload 1
iload 1
lconst_0
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory
dup
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory/<init>()V
aload 2
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
return
.limit locals 3
.limit stack 8
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/util/concurrent/ExecutionException from L0 to L1 using L3
aload 0
aload 1
aload 2
invokespecial java/util/concurrent/ThreadPoolExecutor/afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
aload 2
ifnonnull L1
aload 1
instanceof java/util/concurrent/Future
ifeq L1
aload 1
checkcast java/util/concurrent/Future
astore 1
aload 1
invokeinterface java/util/concurrent/Future/isDone()Z 0
ifeq L1
aload 1
invokeinterface java/util/concurrent/Future/isCancelled()Z 0
ifne L1
L0:
aload 1
invokeinterface java/util/concurrent/Future/get()Ljava/lang/Object; 0
pop
L1:
return
L2:
astore 1
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/uncaughtThrowableStrategy Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
aload 1
invokevirtual com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/handle(Ljava/lang/Throwable;)V
return
L3:
astore 1
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/uncaughtThrowableStrategy Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
aload 1
invokevirtual com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/handle(Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Runnable;TT;)Ljava/util/concurrent/RunnableFuture<TT;>;"
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask
dup
aload 1
aload 2
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor/ordering Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/getAndIncrement()I
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/<init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
areturn
.limit locals 3
.limit stack 5
.end method
