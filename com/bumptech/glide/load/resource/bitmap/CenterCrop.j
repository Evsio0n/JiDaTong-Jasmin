.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/CenterCrop
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
ldc "CenterCrop.com.bumptech.glide.load.resource.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 2
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
ifnull L0
aload 2
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
astore 5
L1:
aload 1
iload 3
iload 4
aload 5
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 5
aload 5
aload 2
iload 3
iload 4
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 2
aload 5
ifnull L2
aload 5
aload 2
if_acmpeq L2
aload 1
aload 5
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
ifne L2
aload 5
invokevirtual android/graphics/Bitmap/recycle()V
L2:
aload 2
areturn
L0:
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
astore 5
goto L1
.limit locals 6
.limit stack 4
.end method
