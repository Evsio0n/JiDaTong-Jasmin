.bytecode 50.0
.class final synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/Poolable
.inner class static final Key inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy

.field private 'config' Landroid/graphics/Bitmap$Config;

.field private final 'pool' Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private 'size' I

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
return
.limit locals 2
.limit stack 2
.end method

.method <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;ILandroid/graphics/Bitmap$Config;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
aload 0
iload 2
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/init(ILandroid/graphics/Bitmap$Config;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
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
instanceof com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
if_icmpne L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
ifnonnull L1
iload 3
istore 2
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
ifnonnull L0
L2:
iconst_1
istore 2
L0:
iload 2
ireturn
L1:
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/equals(Ljava/lang/Object;)Z
ifeq L0
goto L2
.limit locals 4
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/hashCode()I
istore 1
L1:
iload 2
bipush 31
imul
iload 1
iadd
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public init(ILandroid/graphics/Bitmap$Config;)V
aload 0
iload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
aload 0
aload 2
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
return
.limit locals 3
.limit stack 2
.end method

.method public offer()V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
return
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/size I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/config Landroid/graphics/Bitmap$Config;
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
