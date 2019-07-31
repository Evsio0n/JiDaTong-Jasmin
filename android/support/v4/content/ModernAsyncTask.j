.bytecode 50.0
.class synchronized abstract android/support/v4/content/ModernAsyncTask
.super java/lang/Object
.signature "<Params:Ljava/lang/Object;Progress:Ljava/lang/Object;Result:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final inner android/support/v4/content/ModernAsyncTask$1
.inner class inner android/support/v4/content/ModernAsyncTask$2
.inner class inner android/support/v4/content/ModernAsyncTask$3
.inner class static synthetic inner android/support/v4/content/ModernAsyncTask$4
.inner class private static AsyncTaskResult inner android/support/v4/content/ModernAsyncTask$AsyncTaskResult outer android/support/v4/content/ModernAsyncTask
.inner class private static InternalHandler inner android/support/v4/content/ModernAsyncTask$InternalHandler outer android/support/v4/content/ModernAsyncTask
.inner class public static final enum Status inner android/support/v4/content/ModernAsyncTask$Status outer android/support/v4/content/ModernAsyncTask
.inner class private static abstract WorkerRunnable inner android/support/v4/content/ModernAsyncTask$WorkerRunnable outer android/support/v4/content/ModernAsyncTask

.field private static final 'CORE_POOL_SIZE' I = 5


.field private static final 'KEEP_ALIVE' I = 1


.field private static final 'LOG_TAG' Ljava/lang/String; = "AsyncTask"

.field private static final 'MAXIMUM_POOL_SIZE' I = 128


.field private static final 'MESSAGE_POST_PROGRESS' I = 2


.field private static final 'MESSAGE_POST_RESULT' I = 1


.field public static final 'THREAD_POOL_EXECUTOR' Ljava/util/concurrent/Executor;

.field private static volatile 'sDefaultExecutor' Ljava/util/concurrent/Executor;

.field private static final 'sHandler' Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

.field private static final 'sPoolWorkQueue' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"

.field private static final 'sThreadFactory' Ljava/util/concurrent/ThreadFactory;

.field private final 'mFuture' Ljava/util/concurrent/FutureTask; signature "Ljava/util/concurrent/FutureTask<TResult;>;"

.field private volatile 'mStatus' Landroid/support/v4/content/ModernAsyncTask$Status;

.field private final 'mTaskInvoked' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'mWorker' Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable; signature "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable<TParams;TResult;>;"

.method static <clinit>()V
new android/support/v4/content/ModernAsyncTask$1
dup
invokespecial android/support/v4/content/ModernAsyncTask$1/<init>()V
putstatic android/support/v4/content/ModernAsyncTask/sThreadFactory Ljava/util/concurrent/ThreadFactory;
new java/util/concurrent/LinkedBlockingQueue
dup
bipush 10
invokespecial java/util/concurrent/LinkedBlockingQueue/<init>(I)V
putstatic android/support/v4/content/ModernAsyncTask/sPoolWorkQueue Ljava/util/concurrent/BlockingQueue;
new java/util/concurrent/ThreadPoolExecutor
dup
iconst_5
sipush 128
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
getstatic android/support/v4/content/ModernAsyncTask/sPoolWorkQueue Ljava/util/concurrent/BlockingQueue;
getstatic android/support/v4/content/ModernAsyncTask/sThreadFactory Ljava/util/concurrent/ThreadFactory;
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putstatic android/support/v4/content/ModernAsyncTask/THREAD_POOL_EXECUTOR Ljava/util/concurrent/Executor;
new android/support/v4/content/ModernAsyncTask$InternalHandler
dup
aconst_null
invokespecial android/support/v4/content/ModernAsyncTask$InternalHandler/<init>(Landroid/support/v4/content/ModernAsyncTask$1;)V
putstatic android/support/v4/content/ModernAsyncTask/sHandler Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
getstatic android/support/v4/content/ModernAsyncTask/THREAD_POOL_EXECUTOR Ljava/util/concurrent/Executor;
putstatic android/support/v4/content/ModernAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
return
.limit locals 0
.limit stack 9
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic android/support/v4/content/ModernAsyncTask$Status/PENDING Landroid/support/v4/content/ModernAsyncTask$Status;
putfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>()V
putfield android/support/v4/content/ModernAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new android/support/v4/content/ModernAsyncTask$2
dup
aload 0
invokespecial android/support/v4/content/ModernAsyncTask$2/<init>(Landroid/support/v4/content/ModernAsyncTask;)V
putfield android/support/v4/content/ModernAsyncTask/mWorker Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
aload 0
new android/support/v4/content/ModernAsyncTask$3
dup
aload 0
aload 0
getfield android/support/v4/content/ModernAsyncTask/mWorker Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
invokespecial android/support/v4/content/ModernAsyncTask$3/<init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
putfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$200(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
getfield android/support/v4/content/ModernAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
invokespecial android/support/v4/content/ModernAsyncTask/postResult(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
aload 0
aload 1
invokespecial android/support/v4/content/ModernAsyncTask/postResultIfNotInvoked(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
aload 0
aload 1
invokespecial android/support/v4/content/ModernAsyncTask/finish(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static execute(Ljava/lang/Runnable;)V
getstatic android/support/v4/content/ModernAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
aload 0
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method private finish(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
invokevirtual android/support/v4/content/ModernAsyncTask/isCancelled()Z
ifeq L0
aload 0
aload 1
invokevirtual android/support/v4/content/ModernAsyncTask/onCancelled(Ljava/lang/Object;)V
L1:
aload 0
getstatic android/support/v4/content/ModernAsyncTask$Status/FINISHED Landroid/support/v4/content/ModernAsyncTask$Status;
putfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
return
L0:
aload 0
aload 1
invokevirtual android/support/v4/content/ModernAsyncTask/onPostExecute(Ljava/lang/Object;)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public static init()V
getstatic android/support/v4/content/ModernAsyncTask/sHandler Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
invokevirtual android/support/v4/content/ModernAsyncTask$InternalHandler/getLooper()Landroid/os/Looper;
pop
return
.limit locals 0
.limit stack 1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TResult;)TResult;"
getstatic android/support/v4/content/ModernAsyncTask/sHandler Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
iconst_1
new android/support/v4/content/ModernAsyncTask$AsyncTaskResult
dup
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokespecial android/support/v4/content/ModernAsyncTask$AsyncTaskResult/<init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
invokevirtual android/support/v4/content/ModernAsyncTask$InternalHandler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
aload 1
areturn
.limit locals 2
.limit stack 9
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
getfield android/support/v4/content/ModernAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ifne L0
aload 0
aload 1
invokespecial android/support/v4/content/ModernAsyncTask/postResult(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
aload 0
putstatic android/support/v4/content/ModernAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
return
.limit locals 1
.limit stack 1
.end method

.method public final cancel(Z)Z
aload 0
getfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
iload 1
invokevirtual java/util/concurrent/FutureTask/cancel(Z)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected transient abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.signature "([TParams;)TResult;"
.end method

.method public final transient execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
.signature "([TParams;)Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
aload 0
getstatic android/support/v4/content/ModernAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
aload 1
invokevirtual android/support/v4/content/ModernAsyncTask/executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final transient executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
.signature "(Ljava/util/concurrent/Executor;[TParams;)Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
aload 0
getfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
getstatic android/support/v4/content/ModernAsyncTask$Status/PENDING Landroid/support/v4/content/ModernAsyncTask$Status;
if_acmpeq L0
getstatic android/support/v4/content/ModernAsyncTask$4/$SwitchMap$android$support$v4$content$ModernAsyncTask$Status [I
aload 0
getfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
invokevirtual android/support/v4/content/ModernAsyncTask$Status/ordinal()I
iaload
tableswitch 1
L1
L2
default : L0
L0:
aload 0
getstatic android/support/v4/content/ModernAsyncTask$Status/RUNNING Landroid/support/v4/content/ModernAsyncTask$Status;
putfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
aload 0
invokevirtual android/support/v4/content/ModernAsyncTask/onPreExecute()V
aload 0
getfield android/support/v4/content/ModernAsyncTask/mWorker Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
aload 2
putfield android/support/v4/content/ModernAsyncTask$WorkerRunnable/mParams [Ljava/lang/Object;
aload 1
aload 0
getfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
aload 0
areturn
L1:
new java/lang/IllegalStateException
dup
ldc "Cannot execute task: the task is already running."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/lang/IllegalStateException
dup
ldc "Cannot execute task: the task has already been executed (a task can be executed only once)"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public final get()Ljava/lang/Object;
.signature "()TResult;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
aload 0
getfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
invokevirtual java/util/concurrent/FutureTask/get()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TResult;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.throws java/util/concurrent/TimeoutException
aload 0
getfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
lload 1
aload 3
invokevirtual java/util/concurrent/FutureTask/get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getStatus()Landroid/support/v4/content/ModernAsyncTask$Status;
aload 0
getfield android/support/v4/content/ModernAsyncTask/mStatus Landroid/support/v4/content/ModernAsyncTask$Status;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final isCancelled()Z
aload 0
getfield android/support/v4/content/ModernAsyncTask/mFuture Ljava/util/concurrent/FutureTask;
invokevirtual java/util/concurrent/FutureTask/isCancelled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onCancelled()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
invokevirtual android/support/v4/content/ModernAsyncTask/onCancelled()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.signature "(TResult;)V"
return
.limit locals 2
.limit stack 0
.end method

.method protected onPreExecute()V
return
.limit locals 1
.limit stack 0
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
.signature "([TProgress;)V"
return
.limit locals 2
.limit stack 0
.end method

.method protected final transient publishProgress([Ljava/lang/Object;)V
.signature "([TProgress;)V"
aload 0
invokevirtual android/support/v4/content/ModernAsyncTask/isCancelled()Z
ifne L0
getstatic android/support/v4/content/ModernAsyncTask/sHandler Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
iconst_2
new android/support/v4/content/ModernAsyncTask$AsyncTaskResult
dup
aload 0
aload 1
invokespecial android/support/v4/content/ModernAsyncTask$AsyncTaskResult/<init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
invokevirtual android/support/v4/content/ModernAsyncTask$InternalHandler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
L0:
return
.limit locals 2
.limit stack 6
.end method
