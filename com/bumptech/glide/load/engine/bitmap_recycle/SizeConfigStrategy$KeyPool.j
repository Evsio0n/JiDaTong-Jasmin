.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool
.super com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool
.signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;>;"
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy

.method <init>()V
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
new com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key
dup
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
checkcast com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key
astore 3
aload 3
iload 1
aload 2
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/init(ILandroid/graphics/Bitmap$Config;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
