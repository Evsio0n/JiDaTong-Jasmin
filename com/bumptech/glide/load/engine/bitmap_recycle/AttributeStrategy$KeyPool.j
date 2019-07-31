.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool
.super com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool
.signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;>;"
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy

.method <init>()V
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
new com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key
dup
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method protected volatile synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
areturn
.limit locals 1
.limit stack 1
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
checkcast com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key
astore 4
aload 4
iload 1
iload 2
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/init(IILandroid/graphics/Bitmap$Config;)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method
