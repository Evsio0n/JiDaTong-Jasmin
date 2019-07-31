.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool
.super com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool
.signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;>;"
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy

.method <init>()V
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
new com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key
dup
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
checkcast com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key
astore 2
aload 2
iload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/init(I)V
aload 2
areturn
.limit locals 3
.limit stack 2
.end method
