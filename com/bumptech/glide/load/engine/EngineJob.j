.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineJob
.super java/lang/Object
.implements com/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager
.inner class static synthetic inner com/bumptech/glide/load/engine/EngineJob$1
.inner class static EngineResourceFactory inner com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory outer com/bumptech/glide/load/engine/EngineJob
.inner class private static MainThreadCallback inner com/bumptech/glide/load/engine/EngineJob$MainThreadCallback outer com/bumptech/glide/load/engine/EngineJob

.field private static final 'DEFAULT_FACTORY' Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final 'MAIN_THREAD_HANDLER' Landroid/os/Handler;

.field private static final 'MSG_COMPLETE' I = 1


.field private static final 'MSG_EXCEPTION' I = 2


.field private final 'cbs' Ljava/util/List; signature "Ljava/util/List<Lcom/bumptech/glide/request/ResourceCallback;>;"

.field private final 'diskCacheService' Ljava/util/concurrent/ExecutorService;

.field private 'engineResource' Lcom/bumptech/glide/load/engine/EngineResource; signature "Lcom/bumptech/glide/load/engine/EngineResource<*>;"

.field private final 'engineResourceFactory' Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private 'engineRunnable' Lcom/bumptech/glide/load/engine/EngineRunnable;

.field private 'exception' Ljava/lang/Exception;

.field private volatile 'future' Ljava/util/concurrent/Future; signature "Ljava/util/concurrent/Future<*>;"

.field private 'hasException' Z

.field private 'hasResource' Z

.field private 'ignoredCallbacks' Ljava/util/Set; signature "Ljava/util/Set<Lcom/bumptech/glide/request/ResourceCallback;>;"

.field private final 'isCacheable' Z

.field private 'isCancelled' Z

.field private final 'key' Lcom/bumptech/glide/load/Key;

.field private final 'listener' Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private 'resource' Lcom/bumptech/glide/load/engine/Resource; signature "Lcom/bumptech/glide/load/engine/Resource<*>;"

.field private final 'sourceService' Ljava/util/concurrent/ExecutorService;

.method static <clinit>()V
new com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory
dup
invokespecial com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory/<init>()V
putstatic com/bumptech/glide/load/engine/EngineJob/DEFAULT_FACTORY Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
new com/bumptech/glide/load/engine/EngineJob$MainThreadCallback
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/EngineJob$MainThreadCallback/<init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
invokespecial android/os/Handler/<init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
putstatic com/bumptech/glide/load/engine/EngineJob/MAIN_THREAD_HANDLER Landroid/os/Handler;
return
.limit locals 0
.limit stack 6
.end method

.method public <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V
aload 0
aload 1
aload 2
aload 3
iload 4
aload 5
getstatic com/bumptech/glide/load/engine/EngineJob/DEFAULT_FACTORY Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
invokespecial com/bumptech/glide/load/engine/EngineJob/<init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
return
.limit locals 6
.limit stack 7
.end method

.method public <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineJob/key Lcom/bumptech/glide/load/Key;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/EngineJob/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/EngineJob/sourceService Ljava/util/concurrent/ExecutorService;
aload 0
iload 4
putfield com/bumptech/glide/load/engine/EngineJob/isCacheable Z
aload 0
aload 5
putfield com/bumptech/glide/load/engine/EngineJob/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
aload 0
aload 6
putfield com/bumptech/glide/load/engine/EngineJob/engineResourceFactory Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
return
.limit locals 7
.limit stack 3
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V
aload 0
invokespecial com/bumptech/glide/load/engine/EngineJob/handleResultOnMainThread()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V
aload 0
invokespecial com/bumptech/glide/load/engine/EngineJob/handleExceptionOnMainThread()V
return
.limit locals 1
.limit stack 1
.end method

.method private addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/ignoredCallbacks Ljava/util/Set;
ifnonnull L0
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/bumptech/glide/load/engine/EngineJob/ignoredCallbacks Ljava/util/Set;
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/ignoredCallbacks Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method private handleExceptionOnMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/isCancelled Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
new java/lang/IllegalStateException
dup
ldc "Received an exception without any callbacks to notify"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/EngineJob/hasException Z
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/key Lcom/bumptech/glide/load/Key;
aconst_null
invokeinterface com/bumptech/glide/load/engine/EngineJobListener/onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V 2
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/ResourceCallback
astore 2
aload 0
aload 2
invokespecial com/bumptech/glide/load/engine/EngineJob/isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
ifne L3
aload 2
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/exception Ljava/lang/Exception;
invokeinterface com/bumptech/glide/request/ResourceCallback/onException(Ljava/lang/Exception;)V 1
goto L3
.limit locals 3
.limit stack 3
.end method

.method private handleResultOnMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/isCancelled Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/resource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
new java/lang/IllegalStateException
dup
ldc "Received a resource without any callbacks to notify"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResourceFactory Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/resource Lcom/bumptech/glide/load/engine/Resource;
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/isCacheable Z
invokevirtual com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory/build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;
putfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/EngineJob/hasResource Z
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokevirtual com/bumptech/glide/load/engine/EngineResource/acquire()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/key Lcom/bumptech/glide/load/Key;
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokeinterface com/bumptech/glide/load/engine/EngineJobListener/onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V 2
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/ResourceCallback
astore 2
aload 0
aload 2
invokespecial com/bumptech/glide/load/engine/EngineJob/isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
ifne L2
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokevirtual com/bumptech/glide/load/engine/EngineResource/acquire()V
aload 2
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokeinterface com/bumptech/glide/request/ResourceCallback/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V 1
goto L2
L3:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokevirtual com/bumptech/glide/load/engine/EngineResource/release()V
return
.limit locals 3
.limit stack 4
.end method

.method private isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/ignoredCallbacks Ljava/util/Set;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/ignoredCallbacks Ljava/util/Set;
aload 1
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasResource Z
ifeq L0
aload 1
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineResource Lcom/bumptech/glide/load/engine/EngineResource;
invokeinterface com/bumptech/glide/request/ResourceCallback/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V 1
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasException Z
ifeq L1
aload 1
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/exception Ljava/lang/Exception;
invokeinterface com/bumptech/glide/request/ResourceCallback/onException(Ljava/lang/Exception;)V 1
return
L1:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method cancel()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasException Z
ifne L0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasResource Z
ifne L0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/isCancelled Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/engineRunnable Lcom/bumptech/glide/load/engine/EngineRunnable;
invokevirtual com/bumptech/glide/load/engine/EngineRunnable/cancel()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/future Ljava/util/concurrent/Future;
astore 1
aload 1
ifnull L2
aload 1
iconst_1
invokeinterface java/util/concurrent/Future/cancel(Z)Z 1
pop
L2:
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/EngineJob/isCancelled Z
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/key Lcom/bumptech/glide/load/Key;
invokeinterface com/bumptech/glide/load/engine/EngineJobListener/onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method isCancelled()Z
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/isCancelled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onException(Ljava/lang/Exception;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineJob/exception Ljava/lang/Exception;
getstatic com/bumptech/glide/load/engine/EngineJob/MAIN_THREAD_HANDLER Landroid/os/Handler;
iconst_2
aload 0
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
return
.limit locals 2
.limit stack 3
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;)V"
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineJob/resource Lcom/bumptech/glide/load/engine/Resource;
getstatic com/bumptech/glide/load/engine/EngineJob/MAIN_THREAD_HANDLER Landroid/os/Handler;
iconst_1
aload 0
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
return
.limit locals 2
.limit stack 3
.end method

.method public removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasResource Z
ifne L0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/hasException Z
ifeq L1
L0:
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/EngineJob/addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
L2:
return
L1:
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/cbs Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
aload 0
invokevirtual com/bumptech/glide/load/engine/EngineJob/cancel()V
return
.limit locals 2
.limit stack 2
.end method

.method public start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineJob/engineRunnable Lcom/bumptech/glide/load/engine/EngineRunnable;
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 1
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
putfield com/bumptech/glide/load/engine/EngineJob/future Ljava/util/concurrent/Future;
return
.limit locals 2
.limit stack 3
.end method

.method public submitForSource(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineJob/sourceService Ljava/util/concurrent/ExecutorService;
aload 1
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
putfield com/bumptech/glide/load/engine/EngineJob/future Ljava/util/concurrent/Future;
return
.limit locals 2
.limit stack 3
.end method
