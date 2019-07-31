.bytecode 50.0
.class final synchronized com/bumptech/glide/load/resource/bitmap/Downsampler$2
.super com/bumptech/glide/load/resource/bitmap/Downsampler
.enclosing method com/bumptech/glide/load/resource/bitmap/Downsampler
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$2

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
ldc "AT_MOST.com.bumptech.glide.load.data.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getSampleSize(IIII)I
iconst_1
istore 5
iload 2
i2f
iload 4
i2f
fdiv
iload 1
i2f
iload 3
i2f
fdiv
invokestatic java/lang/Math/max(FF)F
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 1
iconst_1
iload 1
invokestatic java/lang/Integer/highestOneBit(I)I
invokestatic java/lang/Math/max(II)I
istore 2
iload 2
iload 1
if_icmpge L0
iload 5
istore 1
L1:
iload 2
iload 1
ishl
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 6
.limit stack 3
.end method
