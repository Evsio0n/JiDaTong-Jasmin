.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler
.super java/lang/Object
.implements android/os/MessageQueue$IdleHandler
.inner class private static RefQueueIdleHandler inner com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler outer com/bumptech/glide/load/engine/Engine

.field private final 'activeResources' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;"

.field private final 'queue' Ljava/lang/ref/ReferenceQueue; signature "Ljava/lang/ref/ReferenceQueue<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"

.method public <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
.signature "(Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;Ljava/lang/ref/ReferenceQueue<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler/activeResources Ljava/util/Map;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler/queue Ljava/lang/ref/ReferenceQueue;
return
.limit locals 3
.limit stack 2
.end method

.method public queueIdle()Z
aload 0
getfield com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler/queue Ljava/lang/ref/ReferenceQueue;
invokevirtual java/lang/ref/ReferenceQueue/poll()Ljava/lang/ref/Reference;
checkcast com/bumptech/glide/load/engine/Engine$ResourceWeakReference
astore 1
aload 1
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/Engine$RefQueueIdleHandler/activeResources Ljava/util/Map;
aload 1
invokestatic com/bumptech/glide/load/engine/Engine$ResourceWeakReference/access$000(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
