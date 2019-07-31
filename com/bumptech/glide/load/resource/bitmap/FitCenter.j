.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/FitCenter
.super com/bumptech/glide/load/resource/bitmap/BitmapTransformation

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapTransformation/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapTransformation/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
ldc "FitCenter.com.bumptech.glide.load.resource.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 2
aload 1
iload 3
iload 4
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
areturn
.limit locals 5
.limit stack 4
.end method
