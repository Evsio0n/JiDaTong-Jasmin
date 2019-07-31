.bytecode 50.0
.class public synchronized com/common/android/utils/concurrent/NdExecutorService
.super java/lang/Object
.inner class static NdThreadFactory inner com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory outer com/common/android/utils/concurrent/NdExecutorService

.field public static final 'AWAIT_TERMINATION_FORCE' I = 3000


.field public static final 'AWAIT_TERMINATION_SELF' I = 3000


.field private static final 'CACHE_THREAD_POOL_TIMEOUT' J = 1000L


.field private static final 'TINY_HTTP_THREAD_POOL_TIMEOUT' J = 6000L


.field private 'mArrayBlockWorkQueue' Ljava/util/concurrent/ArrayBlockingQueue; signature "Ljava/util/concurrent/ArrayBlockingQueue<Ljava/lang/Runnable;>;"

.field private 'mBackgroundThreadPool' Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;

.field private 'mCacheWorkQueue' Ljava/util/concurrent/LinkedBlockingQueue; signature "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"

.field private 'mCachedThreadPool' Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;

.field private 'mFileUploadDownloadThreadPool' Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;

.field private 'mIsQuit' Z

.field private 'mTinyHttpThreadPool' Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;

.field private 'mTinyHttplWorkQueue' Ljava/util/concurrent/PriorityBlockingQueue; signature "Ljava/util/concurrent/PriorityBlockingQueue<Ljava/lang/Runnable;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/LinkedBlockingQueue
dup
invokespecial java/util/concurrent/LinkedBlockingQueue/<init>()V
putfield com/common/android/utils/concurrent/NdExecutorService/mCacheWorkQueue Ljava/util/concurrent/LinkedBlockingQueue;
aload 0
new java/util/concurrent/PriorityBlockingQueue
dup
invokespecial java/util/concurrent/PriorityBlockingQueue/<init>()V
putfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttplWorkQueue Ljava/util/concurrent/PriorityBlockingQueue;
aload 0
new java/util/concurrent/ArrayBlockingQueue
dup
sipush 128
invokespecial java/util/concurrent/ArrayBlockingQueue/<init>(I)V
putfield com/common/android/utils/concurrent/NdExecutorService/mArrayBlockWorkQueue Ljava/util/concurrent/ArrayBlockingQueue;
aload 0
iconst_0
putfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/newTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
pop
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
pop
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/newFileUploadDownloadThreadPool()Ljava/util/concurrent/ExecutorService;
pop
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/newBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
pop
return
.limit locals 1
.limit stack 4
.end method

.method private checkAndLog()Z
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/checkTerminatedAndLog()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/checkTerminatedAndLog()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/checkTerminatedAndLog()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/checkTerminatedAndLog()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private checkShutdown()Z
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isTerminated()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isTerminated()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isTerminated()Z
ifeq L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isTerminated()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private newBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
new com/common/android/utils/concurrent/DuplicateCheckNdThreadPoolExecutor
dup
iconst_1
iconst_1
lconst_0
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mArrayBlockWorkQueue Ljava/util/concurrent/ArrayBlockingQueue;
invokestatic com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/newBackgroundThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
invokespecial com/common/android/utils/concurrent/DuplicateCheckNdThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 10
.end method

.method private newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
new com/common/android/utils/concurrent/NdThreadPoolExecutor
dup
bipush 12
bipush 13
lconst_0
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCacheWorkQueue Ljava/util/concurrent/LinkedBlockingQueue;
invokestatic com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/newCachedThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
invokespecial com/common/android/utils/concurrent/NdThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
ldc2_w 1000L
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/setThreadTimeout(J)V
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 10
.end method

.method private newFileUploadDownloadThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
new com/common/android/utils/concurrent/NdThreadPoolExecutor
dup
iconst_1
iconst_1
lconst_0
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mArrayBlockWorkQueue Ljava/util/concurrent/ArrayBlockingQueue;
invokestatic com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/newUploadDownloadThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
invokespecial com/common/android/utils/concurrent/NdThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 10
.end method

.method private newTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
new com/common/android/utils/concurrent/NdThreadPoolExecutor
dup
iconst_2
bipush 12
lconst_0
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttplWorkQueue Ljava/util/concurrent/PriorityBlockingQueue;
invokestatic com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/newTinyHttpThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
invokespecial com/common/android/utils/concurrent/NdThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
ldc2_w 6000L
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/setThreadTimeout(J)V
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 10
.end method

.method private static quitInterval(Ljava/util/concurrent/ThreadPoolExecutor;)Z
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
invokevirtual java/util/concurrent/ThreadPoolExecutor/shutdown()V
L0:
aload 0
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokevirtual java/util/concurrent/ThreadPoolExecutor/awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
ifne L3
aload 0
invokevirtual java/util/concurrent/ThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
aload 0
ldc2_w 20L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokevirtual java/util/concurrent/ThreadPoolExecutor/awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
ifne L3
getstatic java/lang/System/err Ljava/io/PrintStream;
ldc "Pool did not terminate"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
L1:
iconst_0
ireturn
L2:
astore 1
aload 0
invokevirtual java/util/concurrent/ThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
L3:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method private shutdown()V
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isShutdown()Z
ifne L0
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdown()V
L0:
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isShutdown()Z
ifne L1
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdown()V
L1:
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isShutdown()Z
ifne L2
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdown()V
L2:
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/isShutdown()Z
ifne L3
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdown()V
L3:
return
.limit locals 1
.limit stack 1
.end method

.method private shutdownNow()V
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/shutdownNow()Ljava/util/List;
pop
return
.limit locals 1
.limit stack 1
.end method

.method public awaitQuit(J)Z
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L5
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/shutdown()V
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/checkShutdown()Z
ifeq L6
iconst_1
ireturn
L6:
iconst_0
istore 3
L7:
iload 3
iconst_3
if_icmpge L8
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/checkShutdown()Z
ifeq L9
aload 0
iconst_1
putfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
iconst_1
ireturn
L2:
astore 4
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/shutdownNow()V
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
goto L1
L9:
iload 3
iconst_1
iadd
istore 3
goto L7
L8:
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/shutdownNow()V
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/checkShutdown()Z
pop
iconst_0
istore 3
L10:
iload 3
iconst_3
if_icmpge L11
L3:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L4:
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/checkShutdown()Z
ifeq L12
aload 0
iconst_1
putfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
iconst_1
ireturn
L5:
astore 4
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/shutdownNow()V
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
goto L4
L12:
iload 3
iconst_1
iadd
istore 3
goto L10
L11:
aload 0
aload 0
invokespecial com/common/android/utils/concurrent/NdExecutorService/checkAndLog()Z
putfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
ireturn
.limit locals 5
.limit stack 2
.end method

.method public getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mBackgroundThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCacheThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mCachedThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileUploadDownloadThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mFileUploadDownloadThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mTinyHttpThreadPool Lcom/common/android/utils/concurrent/NdThreadPoolExecutor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isQuit()Z
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService/mIsQuit Z
ireturn
.limit locals 1
.limit stack 1
.end method
