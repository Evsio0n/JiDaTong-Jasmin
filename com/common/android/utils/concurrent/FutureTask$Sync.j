.bytecode 50.0
.class final synchronized com/common/android/utils/concurrent/FutureTask$Sync
.super java/util/concurrent/locks/AbstractQueuedSynchronizer
.inner class private final Sync inner com/common/android/utils/concurrent/FutureTask$Sync outer com/common/android/utils/concurrent/FutureTask

.field private static final 'CANCELLED' I = 4


.field private static final 'RAN' I = 2


.field private static final 'READY' I = 0


.field private static final 'RUNNING' I = 1


.field private static final 'serialVersionUID' J = -7828117401763700385L


.field private final 'callable' Ljava/util/concurrent/Callable; signature "Ljava/util/concurrent/Callable<TV;>;"

.field private 'exception' Ljava/lang/Throwable;

.field private 'result' Ljava/lang/Object; signature "TV;"

.field private volatile 'runner' Ljava/lang/Thread;

.field final synthetic 'this$0' Lcom/common/android/utils/concurrent/FutureTask;

.method <init>(Lcom/common/android/utils/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
.signature "(Ljava/util/concurrent/Callable<TV;>;)V"
aload 0
aload 1
putfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
aload 0
invokespecial java/util/concurrent/locks/AbstractQueuedSynchronizer/<init>()V
aload 0
aload 2
putfield com/common/android/utils/concurrent/FutureTask$Sync/callable Ljava/util/concurrent/Callable;
return
.limit locals 3
.limit stack 2
.end method

.method private ranOrCancelled(I)Z
iload 1
bipush 6
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method innerCancel(Z)Z
L0:
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
istore 2
aload 0
iload 2
invokespecial com/common/android/utils/concurrent/FutureTask$Sync/ranOrCancelled(I)Z
ifeq L1
iconst_0
ireturn
L1:
aload 0
iload 2
iconst_4
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
ifeq L0
iload 1
ifeq L2
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual java/lang/Thread/interrupt()V
L2:
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
invokevirtual com/common/android/utils/concurrent/FutureTask/done()V
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method innerGet()Ljava/lang/Object;
.signature "()TV;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/acquireSharedInterruptibly(I)V
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
iconst_4
if_icmpne L0
new java/util/concurrent/CancellationException
dup
invokespecial java/util/concurrent/CancellationException/<init>()V
athrow
L0:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/exception Ljava/lang/Throwable;
ifnull L1
new java/util/concurrent/ExecutionException
dup
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/exception Ljava/lang/Throwable;
invokespecial java/util/concurrent/ExecutionException/<init>(Ljava/lang/Throwable;)V
athrow
L1:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/result Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 3
.end method

.method innerGet(J)Ljava/lang/Object;
.signature "(J)TV;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.throws java/util/concurrent/TimeoutException
aload 0
iconst_0
lload 1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/tryAcquireSharedNanos(IJ)Z
ifne L0
new java/util/concurrent/TimeoutException
dup
invokespecial java/util/concurrent/TimeoutException/<init>()V
athrow
L0:
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
iconst_4
if_icmpne L1
new java/util/concurrent/CancellationException
dup
invokespecial java/util/concurrent/CancellationException/<init>()V
athrow
L1:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/exception Ljava/lang/Throwable;
ifnull L2
new java/util/concurrent/ExecutionException
dup
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/exception Ljava/lang/Throwable;
invokespecial java/util/concurrent/ExecutionException/<init>(Ljava/lang/Throwable;)V
athrow
L2:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/result Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 4
.end method

.method innerIsCancelled()Z
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
iconst_4
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method innerIsDone()Z
aload 0
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
invokespecial com/common/android/utils/concurrent/FutureTask$Sync/ranOrCancelled(I)Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method innerRun()V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
iconst_0
iconst_1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
ifne L3
return
L3:
aload 0
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
putfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
iconst_1
if_icmpne L4
L0:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/callable Ljava/util/concurrent/Callable;
invokeinterface java/util/concurrent/Callable/call()Ljava/lang/Object; 0
astore 1
L1:
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
aload 1
invokevirtual com/common/android/utils/concurrent/FutureTask/set(Ljava/lang/Object;)V
return
L2:
astore 1
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
aload 1
invokevirtual com/common/android/utils/concurrent/FutureTask/setException(Ljava/lang/Throwable;)V
return
L4:
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method innerRunAndReset()Z
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
aload 0
iconst_0
iconst_1
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
ifne L0
iconst_0
ireturn
L0:
aload 0
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
putfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
iconst_1
if_icmpne L1
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/callable Ljava/util/concurrent/Callable;
invokeinterface java/util/concurrent/Callable/call()Ljava/lang/Object; 0
pop
L1:
aload 0
aconst_null
putfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
aload 0
iconst_1
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
istore 1
L3:
iload 1
ireturn
L2:
astore 2
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
aload 2
invokevirtual com/common/android/utils/concurrent/FutureTask/setException(Ljava/lang/Throwable;)V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method innerSet(Ljava/lang/Object;)V
.signature "(TV;)V"
L0:
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
istore 2
iload 2
iconst_2
if_icmpne L1
return
L1:
iload 2
iconst_4
if_icmpne L2
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
return
L2:
aload 0
iload 2
iconst_2
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
ifeq L0
aload 0
aload 1
putfield com/common/android/utils/concurrent/FutureTask$Sync/result Ljava/lang/Object;
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
invokevirtual com/common/android/utils/concurrent/FutureTask/done()V
return
.limit locals 3
.limit stack 3
.end method

.method innerSetException(Ljava/lang/Throwable;)V
L0:
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/getState()I
istore 2
iload 2
iconst_2
if_icmpne L1
return
L1:
iload 2
iconst_4
if_icmpne L2
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
return
L2:
aload 0
iload 2
iconst_2
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/compareAndSetState(II)Z
ifeq L0
aload 0
aload 1
putfield com/common/android/utils/concurrent/FutureTask$Sync/exception Ljava/lang/Throwable;
aload 0
iconst_0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/releaseShared(I)Z
pop
aload 0
getfield com/common/android/utils/concurrent/FutureTask$Sync/this$0 Lcom/common/android/utils/concurrent/FutureTask;
invokevirtual com/common/android/utils/concurrent/FutureTask/done()V
return
.limit locals 3
.limit stack 3
.end method

.method protected tryAcquireShared(I)I
aload 0
invokevirtual com/common/android/utils/concurrent/FutureTask$Sync/innerIsDone()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_m1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected tryReleaseShared(I)Z
aload 0
aconst_null
putfield com/common/android/utils/concurrent/FutureTask$Sync/runner Ljava/lang/Thread;
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
