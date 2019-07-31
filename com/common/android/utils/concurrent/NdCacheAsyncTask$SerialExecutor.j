.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor
.super java/lang/Object
.implements java/util/concurrent/Executor
.inner class private static SerialExecutor inner com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor outer com/common/android/utils/concurrent/NdCacheAsyncTask
.inner class inner com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor$1

.field 'mActive' Ljava/lang/Runnable;

.field final 'mTasks' Ljava/util/ArrayDeque; signature "Ljava/util/ArrayDeque<Ljava/lang/Runnable;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayDeque
dup
invokespecial java/util/ArrayDeque/<init>()V
putfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mTasks Ljava/util/ArrayDeque;
return
.limit locals 1
.limit stack 3
.end method

.method synthetic <init>(Lcom/common/android/utils/concurrent/NdCacheAsyncTask$1;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public execute(Ljava/lang/Runnable;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mTasks Ljava/util/ArrayDeque;
new com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor$1
dup
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor$1/<init>(Lcom/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
invokevirtual java/util/ArrayDeque/offer(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mActive Ljava/lang/Runnable;
ifnonnull L1
aload 0
invokevirtual com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/scheduleNext()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 5
.end method

.method protected scheduleNext()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mTasks Ljava/util/ArrayDeque;
invokevirtual java/util/ArrayDeque/poll()Ljava/lang/Object;
checkcast java/lang/Runnable
astore 1
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mActive Ljava/lang/Runnable;
L1:
aload 1
ifnull L4
L3:
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask/THREAD_POOL_EXECUTOR Ljava/util/concurrent/Executor;
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$SerialExecutor/mActive Ljava/lang/Runnable;
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
L4:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
