.bytecode 50.0
.class public abstract interface com/bumptech/glide/load/engine/cache/MemoryCache
.super java/lang/Object
.inner class public static abstract interface ResourceRemovedListener inner com/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener outer com/bumptech/glide/load/engine/cache/MemoryCache

.method public abstract clearMemory()V
.end method

.method public abstract getCurrentSize()I
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource<*>;)Lcom/bumptech/glide/load/engine/Resource<*>;"
.end method

.method public abstract remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource<*>;"
.end method

.method public abstract setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
.end method

.method public abstract setSizeMultiplier(F)V
.end method

.method public abstract trimMemory(I)V
.end method
