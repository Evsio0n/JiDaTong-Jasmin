.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/ImageLoaderEngine
.super java/lang/Object
.inner class inner com/nostra13/universalimageloader/core/ImageLoaderEngine$1

.field private final 'cacheKeysForImageAwares' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"

.field final 'configuration' Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final 'networkDenied' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'pauseLock' Ljava/lang/Object;

.field private final 'paused' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'slowNetwork' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private 'taskDistributor' Ljava/util/concurrent/Executor;

.field private 'taskExecutor' Ljava/util/concurrent/Executor;

.field private 'taskExecutorForCachedImages' Ljava/util/concurrent/Executor;

.field private final 'uriLocks' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;>;"

.method <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/cacheKeysForImageAwares Ljava/util/Map;
aload 0
new java/util/WeakHashMap
dup
invokespecial java/util/WeakHashMap/<init>()V
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/uriLocks Ljava/util/Map;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/paused Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/networkDenied Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/slowNetwork Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/pauseLock Ljava/lang/Object;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
aload 0
aload 1
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/taskExecutor Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutor Ljava/util/concurrent/Executor;
aload 0
aload 1
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
aload 0
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createTaskDistributor()Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskDistributor Ljava/util/concurrent/Executor;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine/initExecutorsIfNeed()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutor Ljava/util/concurrent/Executor;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createTaskExecutor()Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/threadPoolSize I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/threadPriority I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
areturn
.limit locals 1
.limit stack 3
.end method

.method private initExecutorsIfNeed()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutor Z
ifne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutor Ljava/util/concurrent/Executor;
checkcast java/util/concurrent/ExecutorService
invokeinterface java/util/concurrent/ExecutorService/isShutdown()Z 0
ifeq L0
aload 0
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine/createTaskExecutor()Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutor Ljava/util/concurrent/Executor;
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutorForCachedImages Z
ifne L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
checkcast java/util/concurrent/ExecutorService
invokeinterface java/util/concurrent/ExecutorService/isShutdown()Z 0
ifeq L1
aload 0
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine/createTaskExecutor()Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
L1:
return
.limit locals 1
.limit stack 2
.end method

.method cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/cacheKeysForImageAwares Ljava/util/Map;
aload 1
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getId()I 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method denyNetworkDownloads(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/networkDenied Ljava/util/concurrent/atomic/AtomicBoolean;
iload 1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method fireCallback(Ljava/lang/Runnable;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskDistributor Ljava/util/concurrent/Executor;
aload 1
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/cacheKeysForImageAwares Ljava/util/Map;
aload 1
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getId()I 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/uriLocks Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/concurrent/locks/ReentrantLock
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new java/util/concurrent/locks/ReentrantLock
dup
invokespecial java/util/concurrent/locks/ReentrantLock/<init>()V
astore 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/uriLocks Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/paused Ljava/util/concurrent/atomic/AtomicBoolean;
areturn
.limit locals 1
.limit stack 1
.end method

.method getPauseLock()Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/pauseLock Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method handleSlowNetwork(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/slowNetwork Ljava/util/concurrent/atomic/AtomicBoolean;
iload 1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method isNetworkDenied()Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/networkDenied Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method isSlowNetwork()Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/slowNetwork Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method pause()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/paused Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/cacheKeysForImageAwares Ljava/util/Map;
aload 1
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getId()I 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method

.method resume()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/paused Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_0
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/pauseLock Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/pauseLock Ljava/lang/Object;
invokevirtual java/lang/Object/notifyAll()V
aload 1
monitorexit
L1:
return
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method stop()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutor Z
ifne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutor Ljava/util/concurrent/Executor;
checkcast java/util/concurrent/ExecutorService
invokeinterface java/util/concurrent/ExecutorService/shutdownNow()Ljava/util/List; 0
pop
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutorForCachedImages Z
ifne L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
checkcast java/util/concurrent/ExecutorService
invokeinterface java/util/concurrent/ExecutorService/shutdownNow()Ljava/util/List; 0
pop
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/cacheKeysForImageAwares Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/uriLocks Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method stop(Landroid/widget/ImageView;)V
aload 0
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
return
.limit locals 2
.limit stack 4
.end method

.method submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskDistributor Ljava/util/concurrent/Executor;
new com/nostra13/universalimageloader/core/ImageLoaderEngine$1
dup
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine$1/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 5
.end method

.method submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine/initExecutorsIfNeed()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
aload 1
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 2
.end method
