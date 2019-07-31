.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/Engine$ResourceWeakReference
.super java/lang/ref/WeakReference
.signature "Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"
.inner class private static ResourceWeakReference inner com/bumptech/glide/load/engine/Engine$ResourceWeakReference outer com/bumptech/glide/load/engine/Engine

.field private final 'key' Lcom/bumptech/glide/load/Key;

.method public <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V
.signature "(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource<*>;Ljava/lang/ref/ReferenceQueue<-Lcom/bumptech/glide/load/engine/EngineResource<*>;>;)V"
aload 0
aload 2
aload 3
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine$ResourceWeakReference/key Lcom/bumptech/glide/load/Key;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;
aload 0
getfield com/bumptech/glide/load/engine/Engine$ResourceWeakReference/key Lcom/bumptech/glide/load/Key;
areturn
.limit locals 1
.limit stack 1
.end method
