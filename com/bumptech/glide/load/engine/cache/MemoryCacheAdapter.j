.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/cache/MemoryCacheAdapter
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/MemoryCache

.field private 'listener' Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearMemory()V
return
.limit locals 1
.limit stack 0
.end method

.method public getCurrentSize()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxSize()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource<*>;)Lcom/bumptech/glide/load/engine/Resource<*>;"
aload 0
getfield com/bumptech/glide/load/engine/cache/MemoryCacheAdapter/listener Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
aload 2
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener/onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V 1
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource<*>;"
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/MemoryCacheAdapter/listener Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSizeMultiplier(F)V
return
.limit locals 2
.limit stack 0
.end method

.method public trimMemory(I)V
return
.limit locals 2
.limit stack 0
.end method
