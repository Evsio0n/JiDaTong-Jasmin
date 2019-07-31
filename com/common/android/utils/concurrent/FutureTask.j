.bytecode 50.0
.class public synchronized com/common/android/utils/concurrent/FutureTask
.super com/common/android/utils/concurrent/NdAbstractTask
.implements java/util/concurrent/Future
.signature "<V:Ljava/lang/Object;>Lcom/common/android/utils/concurrent/NdAbstractTask;Ljava/util/concurrent/Future<TV;>;"
.inner class private final Sync inner com/common/android/utils/concurrent/FutureTask$Sync outer com/common/android/utils/concurrent/FutureTask

.field private final 'sync' Lcom/common/android/utils/concurrent/FutureTask$Sync; signature "Lcom/common/android/utils/concurrent/FutureTask<TV;>.Sync;"

.method public <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
.signature "(Ljava/lang/Runnable;TV;)V"
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
aload 0
new com/common/android/utils/concurrent/FutureTask$Sync
dup
aload 0
aload 1
aload 2
invokestatic java/util/concurrent/Executors/callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
invokespecial com/common/android/utils/concurrent/FutureTask$Sync/<init>(Lcom/common/android/utils/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
putfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
return
.limit locals 3
.limit stack 6
.end method

.method public <init>(Ljava/util/concurrent/Callable;)V
.signature "(Ljava/util/concurrent/Callable<TV;>;)V"
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L0:
aload 0
new com/common/android/utils/concurrent/FutureTask$Sync
dup
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/FutureTask$Sync/<init>(Lcom/common/android/utils/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
putfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
return
.limit locals 2
.limit stack 5
.end method

.method public cancel(Z)Z
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
iload 1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerCancel(Z)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected done()V
return
.limit locals 1
.limit stack 0
.end method

.method public get()Ljava/lang/Object;
.signature "()TV;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerGet()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TV;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.throws java/util/concurrent/TimeoutException
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
aload 3
lload 1
invokevirtual java/util/concurrent/TimeUnit/toNanos(J)J
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerGet(J)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public isCancelled()Z
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerIsCancelled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDone()Z
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerIsDone()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerRun()V
return
.limit locals 1
.limit stack 1
.end method

.method protected runAndReset()Z
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerRunAndReset()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected set(Ljava/lang/Object;)V
.signature "(TV;)V"
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
aload 1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerSet(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setException(Ljava/lang/Throwable;)V
aload 0
getfield com/common/android/utils/concurrent/FutureTask/sync Lcom/common/android/utils/concurrent/FutureTask$Sync;
aload 1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerSetException(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 2
.end method
