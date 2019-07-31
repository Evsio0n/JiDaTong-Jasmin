.bytecode 50.0
.class final synchronized com/bumptech/glide/load/resource/bitmap/Downsampler$3
.super com/bumptech/glide/load/resource/bitmap/Downsampler
.enclosing method com/bumptech/glide/load/resource/bitmap/Downsampler
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$3

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
ldc "NONE.com.bumptech.glide.load.data.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getSampleSize(IIII)I
iconst_0
ireturn
.limit locals 5
.limit stack 1
.end method
