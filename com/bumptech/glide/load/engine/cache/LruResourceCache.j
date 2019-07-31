.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/cache/LruResourceCache
.super com/bumptech/glide/util/LruCache
.implements com/bumptech/glide/load/engine/cache/MemoryCache
.signature "Lcom/bumptech/glide/util/LruCache<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource<*>;>;Lcom/bumptech/glide/load/engine/cache/MemoryCache;"

.field private 'listener' Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

.method public <init>(I)V
aload 0
iload 1
invokespecial com/bumptech/glide/util/LruCache/<init>(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected getSize(Lcom/bumptech/glide/load/engine/Resource;)I
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;)I"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/getSize()I 0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic getSize(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/Resource
invokevirtual com/bumptech/glide/load/engine/cache/LruResourceCache/getSize(Lcom/bumptech/glide/load/engine/Resource;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource<*>;)V"
aload 0
getfield com/bumptech/glide/load/engine/cache/LruResourceCache/listener Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/cache/LruResourceCache/listener Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
aload 2
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener/onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V 1
L0:
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/bumptech/glide/load/Key
aload 2
checkcast com/bumptech/glide/load/engine/Resource
invokevirtual com/bumptech/glide/load/engine/cache/LruResourceCache/onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
return
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/util/LruCache/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/Resource
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
aload 0
aload 1
invokespecial com/bumptech/glide/util/LruCache/remove(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/Resource
areturn
.limit locals 2
.limit stack 2
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/LruResourceCache/listener Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public trimMemory(I)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
iload 1
bipush 60
if_icmplt L0
aload 0
invokevirtual com/bumptech/glide/load/engine/cache/LruResourceCache/clearMemory()V
L1:
return
L0:
iload 1
bipush 40
if_icmplt L1
aload 0
aload 0
invokevirtual com/bumptech/glide/load/engine/cache/LruResourceCache/getCurrentSize()I
iconst_2
idiv
invokevirtual com/bumptech/glide/load/engine/cache/LruResourceCache/trimToSize(I)V
return
.limit locals 2
.limit stack 3
.end method
