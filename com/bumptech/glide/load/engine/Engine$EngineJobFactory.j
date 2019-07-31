.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/Engine$EngineJobFactory
.super java/lang/Object
.inner class static EngineJobFactory inner com/bumptech/glide/load/engine/Engine$EngineJobFactory outer com/bumptech/glide/load/engine/Engine

.field private final 'diskCacheService' Ljava/util/concurrent/ExecutorService;

.field private final 'listener' Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final 'sourceService' Ljava/util/concurrent/ExecutorService;

.method public <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/sourceService Ljava/util/concurrent/ExecutorService;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
return
.limit locals 4
.limit stack 2
.end method

.method public build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;
new com/bumptech/glide/load/engine/EngineJob
dup
aload 1
aload 0
getfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/diskCacheService Ljava/util/concurrent/ExecutorService;
aload 0
getfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/sourceService Ljava/util/concurrent/ExecutorService;
iload 2
aload 0
getfield com/bumptech/glide/load/engine/Engine$EngineJobFactory/listener Lcom/bumptech/glide/load/engine/EngineJobListener;
invokespecial com/bumptech/glide/load/engine/EngineJob/<init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V
areturn
.limit locals 3
.limit stack 7
.end method
