.bytecode 50.0
.class final synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/Poolable
.inner class static final Key inner com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy

.field private final 'pool' Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private 'size' I

.method <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
if_icmpne L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public init(I)V
aload 0
iload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
return
.limit locals 2
.limit stack 2
.end method

.method public offer()V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
return
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/size I
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/access$100(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
