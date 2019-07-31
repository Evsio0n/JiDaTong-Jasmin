.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/resource/bitmap/BitmapTransformation
.super java/lang/Object
.implements com/bumptech/glide/load/Transformation
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"

.field private 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapTransformation/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/BitmapTransformation/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 2
.limit stack 2
.end method

.method protected abstract transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;II)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
iload 2
iload 3
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifne L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot apply transformation on width: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " or height: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " less than or equal to zero and not Target.SIZE_ORIGINAL"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 4
iload 2
ldc_w -2147483648
if_icmpne L1
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
istore 2
L2:
iload 3
ldc_w -2147483648
if_icmpne L3
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
istore 3
L4:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapTransformation/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 4
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/bitmap/BitmapTransformation/transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 5
aload 4
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
areturn
L1:
goto L2
L3:
goto L4
L5:
aload 5
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapTransformation/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/bitmap/BitmapResource/obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
areturn
.limit locals 6
.limit stack 5
.end method
