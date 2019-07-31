.bytecode 50.0
.class synchronized com/bumptech/glide/load/model/ModelCache$1
.super com/bumptech/glide/util/LruCache
.signature "Lcom/bumptech/glide/util/LruCache<Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;TB;>;"
.enclosing method com/bumptech/glide/load/model/ModelCache/<init>(I)V
.inner class inner com/bumptech/glide/load/model/ModelCache$1

.field final synthetic 'this$0' Lcom/bumptech/glide/load/model/ModelCache;

.method <init>(Lcom/bumptech/glide/load/model/ModelCache;I)V
aload 0
aload 1
putfield com/bumptech/glide/load/model/ModelCache$1/this$0 Lcom/bumptech/glide/load/model/ModelCache;
aload 0
iload 2
invokespecial com/bumptech/glide/util/LruCache/<init>(I)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onItemEvicted(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
.signature "(Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;TB;)V"
aload 1
invokevirtual com/bumptech/glide/load/model/ModelCache$ModelKey/release()V
return
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/bumptech/glide/load/model/ModelCache$ModelKey
aload 2
invokevirtual com/bumptech/glide/load/model/ModelCache$1/onItemEvicted(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
