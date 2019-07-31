.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/Engine
.super java/lang/Object
.implements com/bumptech/glide/load/engine/EngineJobListener
.implements com/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener
.implements com/bumptech/glide/load/engine/EngineResource$ResourceListener
.inner class static EngineJobFactory inner com/bumptech/glide/load/engine/Engine$EngineJobFactory outer com/bumptech/glide/load/engine/Engine
.inner class private static LazyDiskCacheProvider inner com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider outer com/bumptech/glide/load/engine/Engine
.inner class public static LoadStatus inner com/bumptech/glide/load/engine/Engine$LoadStatus outer com/bumptech/glide/load/engine/Engine
.inner class private static RefQueueIdleHandler inner com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler outer com/bumptech/glide/load/engine/Engine
.inner class private static ResourceWeakReference inner com/bumptech/glide/load/engine/Engine$ResourceWeakReference outer com/bumptech/glide/load/engine/Engine

.field private static final 'TAG' Ljava/lang/String; = "Engine"

.field private final 'activeResources' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;"

.field private final 'cache' Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final 'diskCacheProvider' Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final 'engineJobFactory' Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final 'jobs' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;"

.field private final 'keyFactory' Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final 'resourceRecycler' Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field private 'resourceReferenceQueue' Ljava/lang/ref/ReferenceQueue; signature "Ljava/lang/ref/ReferenceQueue<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"

.method public <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokespecial com/bumptech/glide/load/engine/Engine/<init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V
return
.limit locals 5
.limit stack 10
.end method

.method <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V
.signature "(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine/cache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
new com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider
dup
aload 2
invokespecial com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/<init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
putfield com/bumptech/glide/load/engine/Engine/diskCacheProvider Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
aload 7
astore 2
aload 7
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
L0:
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 6
astore 2
aload 6
ifnonnull L1
new com/bumptech/glide/load/engine/EngineKeyFactory
dup
invokespecial com/bumptech/glide/load/engine/EngineKeyFactory/<init>()V
astore 2
L1:
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine/keyFactory Lcom/bumptech/glide/load/engine/EngineKeyFactory;
aload 5
astore 2
aload 5
ifnonnull L2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
L2:
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 8
astore 2
aload 8
ifnonnull L3
new com/bumptech/glide/load/engine/Engine$EngineJobFactory
dup
aload 3
aload 4
aload 0
invokespecial com/bumptech/glide/load/engine/Engine$EngineJobFactory/<init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
astore 2
L3:
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine/engineJobFactory Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
aload 9
astore 2
aload 9
ifnonnull L4
new com/bumptech/glide/load/engine/ResourceRecycler
dup
invokespecial com/bumptech/glide/load/engine/ResourceRecycler/<init>()V
astore 2
L4:
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine/resourceRecycler Lcom/bumptech/glide/load/engine/ResourceRecycler;
aload 1
aload 0
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V 1
return
.limit locals 10
.limit stack 5
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource<*>;"
aload 0
getfield com/bumptech/glide/load/engine/Engine/cache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource; 1
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
instanceof com/bumptech/glide/load/engine/EngineResource
ifeq L1
aload 1
checkcast com/bumptech/glide/load/engine/EngineResource
areturn
L1:
new com/bumptech/glide/load/engine/EngineResource
dup
aload 1
iconst_1
invokespecial com/bumptech/glide/load/engine/EngineResource/<init>(Lcom/bumptech/glide/load/engine/Resource;Z)V
areturn
.limit locals 2
.limit stack 4
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
.signature "()Ljava/lang/ref/ReferenceQueue<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"
aload 0
getfield com/bumptech/glide/load/engine/Engine/resourceReferenceQueue Ljava/lang/ref/ReferenceQueue;
ifnonnull L0
aload 0
new java/lang/ref/ReferenceQueue
dup
invokespecial java/lang/ref/ReferenceQueue/<init>()V
putfield com/bumptech/glide/load/engine/Engine/resourceReferenceQueue Ljava/lang/ref/ReferenceQueue;
invokestatic android/os/Looper/myQueue()Landroid/os/MessageQueue;
new com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler
dup
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 0
getfield com/bumptech/glide/load/engine/Engine/resourceReferenceQueue Ljava/lang/ref/ReferenceQueue;
invokespecial com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler/<init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
invokevirtual android/os/MessageQueue/addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
L0:
aload 0
getfield com/bumptech/glide/load/engine/Engine/resourceReferenceQueue Ljava/lang/ref/ReferenceQueue;
areturn
.limit locals 1
.limit stack 5
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
.signature "(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource<*>;"
iload 2
ifne L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/ref/WeakReference
astore 3
aload 3
ifnull L1
aload 3
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/EngineResource
astore 3
aload 3
ifnull L2
aload 3
invokevirtual com/bumptech/glide/load/engine/EngineResource/acquire()V
aload 3
areturn
L2:
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
.signature "(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource<*>;"
iload 2
ifne L0
aconst_null
astore 3
L1:
aload 3
areturn
L0:
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/Engine/getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
astore 4
aload 4
astore 3
aload 4
ifnull L1
aload 4
invokevirtual com/bumptech/glide/load/engine/EngineResource/acquire()V
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 1
new com/bumptech/glide/load/engine/Engine$ResourceWeakReference
dup
aload 1
aload 4
aload 0
invokespecial com/bumptech/glide/load/engine/Engine/getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
invokespecial com/bumptech/glide/load/engine/Engine$ResourceWeakReference/<init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
areturn
.limit locals 5
.limit stack 7
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
ldc "Engine"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc "ms, key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public clearDiskCache()V
aload 0
getfield com/bumptech/glide/load/engine/Engine/diskCacheProvider Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
invokevirtual com/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher<TT;>;Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;Lcom/bumptech/glide/load/Transformation<TZ;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 12
aload 4
invokeinterface com/bumptech/glide/load/data/DataFetcher/getId()Ljava/lang/String; 0
astore 14
aload 0
getfield com/bumptech/glide/load/engine/Engine/keyFactory Lcom/bumptech/glide/load/engine/EngineKeyFactory;
aload 14
aload 1
iload 2
iload 3
aload 5
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 5
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 6
aload 5
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
aload 7
aload 5
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
invokevirtual com/bumptech/glide/load/engine/EngineKeyFactory/buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;
astore 1
aload 0
aload 1
iload 9
invokespecial com/bumptech/glide/load/engine/Engine/loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
astore 14
aload 14
ifnull L0
aload 11
aload 14
invokeinterface com/bumptech/glide/request/ResourceCallback/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V 1
ldc "Engine"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "Loaded resource from cache"
lload 12
aload 1
invokestatic com/bumptech/glide/load/engine/Engine/logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
L1:
aconst_null
areturn
L0:
aload 0
aload 1
iload 9
invokespecial com/bumptech/glide/load/engine/Engine/loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
astore 14
aload 14
ifnull L2
aload 11
aload 14
invokeinterface com/bumptech/glide/request/ResourceCallback/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V 1
ldc "Engine"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
ldc "Loaded resource from active resources"
lload 12
aload 1
invokestatic com/bumptech/glide/load/engine/Engine/logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
L3:
aconst_null
areturn
L2:
aload 0
getfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/EngineJob
astore 14
aload 14
ifnull L4
aload 14
aload 11
invokevirtual com/bumptech/glide/load/engine/EngineJob/addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
ldc "Engine"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "Added to existing load"
lload 12
aload 1
invokestatic com/bumptech/glide/load/engine/Engine/logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
L5:
new com/bumptech/glide/load/engine/Engine$LoadStatus
dup
aload 11
aload 14
invokespecial com/bumptech/glide/load/engine/Engine$LoadStatus/<init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
areturn
L4:
aload 0
getfield com/bumptech/glide/load/engine/Engine/engineJobFactory Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
aload 1
iload 9
invokevirtual com/bumptech/glide/load/engine/Engine$EngineJobFactory/build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;
astore 14
new com/bumptech/glide/load/engine/EngineRunnable
dup
aload 14
new com/bumptech/glide/load/engine/DecodeJob
dup
aload 1
iload 2
iload 3
aload 4
aload 5
aload 6
aload 7
aload 0
getfield com/bumptech/glide/load/engine/Engine/diskCacheProvider Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
aload 10
aload 8
invokespecial com/bumptech/glide/load/engine/DecodeJob/<init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
aload 8
invokespecial com/bumptech/glide/load/engine/EngineRunnable/<init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V
astore 4
aload 0
getfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 1
aload 14
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 14
aload 11
invokevirtual com/bumptech/glide/load/engine/EngineJob/addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
aload 14
aload 4
invokevirtual com/bumptech/glide/load/engine/EngineJob/start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
ldc "Engine"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "Started new load"
lload 12
aload 1
invokestatic com/bumptech/glide/load/engine/Engine/logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
L6:
new com/bumptech/glide/load/engine/Engine$LoadStatus
dup
aload 11
aload 14
invokespecial com/bumptech/glide/load/engine/Engine$LoadStatus/<init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
areturn
.limit locals 15
.limit stack 15
.end method

.method public onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 1
aload 0
getfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/EngineJob
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 2
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
.signature "(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource<*>;)V"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 2
ifnull L0
aload 2
aload 1
aload 0
invokevirtual com/bumptech/glide/load/engine/EngineResource/setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
aload 2
invokevirtual com/bumptech/glide/load/engine/EngineResource/isCacheable()Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 1
new com/bumptech/glide/load/engine/Engine$ResourceWeakReference
dup
aload 1
aload 2
aload 0
invokespecial com/bumptech/glide/load/engine/Engine/getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
invokespecial com/bumptech/glide/load/engine/Engine$ResourceWeakReference/<init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
getfield com/bumptech/glide/load/engine/Engine/jobs Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
return
.limit locals 3
.limit stack 7
.end method

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/Engine/activeResources Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 2
invokevirtual com/bumptech/glide/load/engine/EngineResource/isCacheable()Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/Engine/cache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 1
aload 2
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource; 2
pop
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/Engine/resourceRecycler Lcom/bumptech/glide/load/engine/ResourceRecycler;
aload 2
invokevirtual com/bumptech/glide/load/engine/ResourceRecycler/recycle(Lcom/bumptech/glide/load/engine/Resource;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;)V"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/Engine/resourceRecycler Lcom/bumptech/glide/load/engine/ResourceRecycler;
aload 1
invokevirtual com/bumptech/glide/load/engine/ResourceRecycler/recycle(Lcom/bumptech/glide/load/engine/Resource;)V
return
.limit locals 2
.limit stack 2
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 1
instanceof com/bumptech/glide/load/engine/EngineResource
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/EngineResource
invokevirtual com/bumptech/glide/load/engine/EngineResource/release()V
return
L0:
new java/lang/IllegalArgumentException
dup
ldc "Cannot release anything but an EngineResource"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method
