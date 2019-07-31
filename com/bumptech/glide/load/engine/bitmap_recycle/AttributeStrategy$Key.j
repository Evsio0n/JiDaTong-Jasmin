.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/Poolable
.inner class static Key inner com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy

.field private 'config' Landroid/graphics/Bitmap$Config;

.field private 'height' I

.field private final 'pool' Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.field private 'width' I

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
return
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/width I
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/width I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/height I
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/height I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
if_acmpne L0
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
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/width I
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/height I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/hashCode()I
istore 1
L1:
iload 2
bipush 31
imul
iload 3
iadd
bipush 31
imul
iload 1
iadd
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 4
.limit stack 2
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
aload 0
iload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/width I
aload 0
iload 2
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/height I
aload 0
aload 3
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
return
.limit locals 4
.limit stack 2
.end method

.method public offer()V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/pool Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
return
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/width I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/height I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key/config Landroid/graphics/Bitmap$Config;
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
