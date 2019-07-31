.bytecode 50.0
.class public synchronized com/common/android/utils/concurrent/NdThreadPoolExecutor
.super java/util/concurrent/ThreadPoolExecutor
.inner class inner com/common/android/utils/concurrent/NdThreadPoolExecutor$1
.inner class public static AbortPolicy inner com/common/android/utils/concurrent/NdThreadPoolExecutor$AbortPolicy outer com/common/android/utils/concurrent/NdThreadPoolExecutor

.field private static final 'TAG' Ljava/lang/String; = "NdThreadPoolExecutor"

.field protected static 'mQueueTask' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Lcom/common/android/utils/concurrent/NdAbstractTask;>;"

.field static 'sLock' Ljava/lang/Object;

.field private 'mIsDebug' Z

.field protected 'mQueueRunningTask' Ljava/util/concurrent/ConcurrentLinkedQueue; signature "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/common/android/utils/concurrent/NdAbstractTask;>;"

.field private 'mTimeout' J

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/sLock Ljava/lang/Object;
new java/util/concurrent/ArrayBlockingQueue
dup
sipush 1024
invokespecial java/util/concurrent/ArrayBlockingQueue/<init>(I)V
putstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
.signature "(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;Ljava/util/concurrent/ThreadFactory;)V"
aload 0
iload 1
iload 2
lload 3
aload 5
aload 6
aload 7
new com/common/android/utils/concurrent/NdThreadPoolExecutor$AbortPolicy
dup
invokespecial com/common/android/utils/concurrent/NdThreadPoolExecutor$AbortPolicy/<init>()V
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
aload 0
iconst_1
putfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mIsDebug Z
aload 0
lconst_0
putfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mTimeout J
aload 0
new java/util/concurrent/ConcurrentLinkedQueue
dup
invokespecial java/util/concurrent/ConcurrentLinkedQueue/<init>()V
putfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
return
.limit locals 8
.limit stack 10
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
aload 1
instanceof com/common/android/utils/concurrent/NdAbstractTask
ifeq L0
aload 1
checkcast com/common/android/utils/concurrent/NdAbstractTask
astore 1
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mIsDebug Z
ifeq L1
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "runnable: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " have been finished: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getTimer()Ljava/util/Timer;
astore 2
aload 2
ifnull L2
aload 2
invokevirtual java/util/Timer/cancel()V
L2:
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
aload 1
invokevirtual java/util/concurrent/ConcurrentLinkedQueue/remove(Ljava/lang/Object;)Z
pop
aload 1
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/FINISHED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setState(Lcom/common/android/utils/concurrent/NdAbstractTask$State;)V
aload 1
aconst_null
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setCurrentThread(Ljava/lang/Thread;)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
aload 2
instanceof com/common/android/utils/concurrent/NdAbstractTask
ifeq L0
aload 2
checkcast com/common/android/utils/concurrent/NdAbstractTask
astore 3
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mIsDebug Z
ifeq L1
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "runnable: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in thread: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Thread/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " will start: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mTimeout J
lconst_0
lcmp
ifeq L2
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
astore 4
aload 4
new com/common/android/utils/concurrent/NdThreadPoolExecutor$1
dup
aload 0
aload 1
aload 3
invokespecial com/common/android/utils/concurrent/NdThreadPoolExecutor$1/<init>(Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;Ljava/lang/Thread;Lcom/common/android/utils/concurrent/NdAbstractTask;)V
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mTimeout J
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
aload 3
aload 4
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setTimer(Ljava/util/Timer;)V
L2:
aload 3
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/COMMITTED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setState(Lcom/common/android/utils/concurrent/NdAbstractTask$State;)V
aload 3
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setCurrentThread(Ljava/lang/Thread;)V
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
aload 3
invokevirtual java/util/concurrent/ConcurrentLinkedQueue/add(Ljava/lang/Object;)Z
pop
L0:
aload 0
aload 1
aload 2
invokespecial java/util/concurrent/ThreadPoolExecutor/beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
return
.limit locals 5
.limit stack 6
.end method

.method public checkTerminatedAndLog()Z
aload 0
invokespecial java/util/concurrent/ThreadPoolExecutor/isTerminated()Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
invokevirtual java/util/concurrent/ConcurrentLinkedQueue/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/concurrent/NdAbstractTask
astore 2
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "task: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " have not quited already!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public execute(Ljava/lang/Runnable;)V
aload 1
instanceof com/common/android/utils/concurrent/NdAbstractTask
ifeq L0
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
aload 1
checkcast com/common/android/utils/concurrent/NdAbstractTask
invokeinterface java/util/concurrent/BlockingQueue/offer(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mIsDebug Z
ifeq L0
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "task - "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
checkcast com/common/android/utils/concurrent/NdAbstractTask
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " will run"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
aload 1
invokespecial java/util/concurrent/ThreadPoolExecutor/execute(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public getRunningTask()Ljava/util/concurrent/ConcurrentLinkedQueue;
.signature "()Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/common/android/utils/concurrent/NdAbstractTask;>;"
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTaskListState(Lcom/common/android/utils/concurrent/ETaskTypeId;)Ljava/util/ArrayList;
.signature "(Lcom/common/android/utils/concurrent/ETaskTypeId;)Ljava/util/ArrayList<Lcom/common/android/utils/concurrent/NdAbstractTask;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 3
astore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Runnable
astore 2
aload 2
instanceof com/common/android/utils/concurrent/NdAbstractTask
ifeq L2
aload 2
checkcast com/common/android/utils/concurrent/NdAbstractTask
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getId()Lcom/common/android/utils/concurrent/ETaskTypeId;
aload 1
if_acmpne L2
aload 3
aload 2
checkcast com/common/android/utils/concurrent/NdAbstractTask
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 5
.limit stack 2
.end method

.method public removeById(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
aload 1
ifnonnull L0
L1:
return
L0:
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/concurrent/NdAbstractTask
astore 3
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getId()Lcom/common/android/utils/concurrent/ETaskTypeId;
aload 1
if_acmpne L2
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getState()Lcom/common/android/utils/concurrent/NdAbstractTask$State;
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/COMMITTED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
if_acmpne L3
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getCurrentThread()Ljava/lang/Thread;
ifnull L3
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getCurrentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " cancel by id: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", state: Commited"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L2
L3:
aload 0
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/getQueue()Ljava/util/concurrent/BlockingQueue;
aload 3
invokeinterface java/util/concurrent/BlockingQueue/remove(Ljava/lang/Object;)Z 1
pop
ldc "NdThreadPoolExecutor"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " cancel by id: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", state: Stage"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
.limit locals 4
.limit stack 3
.end method

.method protected removeByObject(Lcom/common/android/utils/concurrent/NdAbstractTask;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getState()Lcom/common/android/utils/concurrent/NdAbstractTask$State;
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/COMMITTED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
if_acmpeq L1
aload 0
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/getQueue()Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setThreadTimeout(J)V
aload 0
lload 1
putfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mTimeout J
return
.limit locals 3
.limit stack 3
.end method

.method public shutdownNow()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Runnable;>;"
aload 0
getfield com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueRunningTask Ljava/util/concurrent/ConcurrentLinkedQueue;
invokevirtual java/util/concurrent/ConcurrentLinkedQueue/clear()V
getstatic com/common/android/utils/concurrent/NdThreadPoolExecutor/mQueueTask Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/clear()V 0
aload 0
invokespecial java/util/concurrent/ThreadPoolExecutor/shutdownNow()Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method
