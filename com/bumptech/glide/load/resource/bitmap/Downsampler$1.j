.bytecode 50.0
.class final synchronized com/bumptech/glide/load/resource/bitmap/Downsampler$1
.super com/bumptech/glide/load/resource/bitmap/Downsampler
.enclosing method com/bumptech/glide/load/resource/bitmap/Downsampler
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$1

.method <init>()V
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
.throws java/lang/Exception
aload 0
aload 1
checkcast java/io/InputStream
aload 2
iload 3
iload 4
aload 5
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler/decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
areturn
.limit locals 6
.limit stack 6
.end method

.method public getId()Ljava/lang/String;
ldc "AT_LEAST.com.bumptech.glide.load.data.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getSampleSize(IIII)I
iload 2
iload 4
idiv
iload 1
iload 3
idiv
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 5
.limit stack 3
.end method
