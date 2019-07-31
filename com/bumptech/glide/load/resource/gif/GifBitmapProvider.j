.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifBitmapProvider
.super java/lang/Object
.implements com/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifBitmapProvider/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 2
.limit stack 2
.end method

.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifBitmapProvider/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
iload 1
iload 2
aload 3
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public release(Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifBitmapProvider/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
ifne L0
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L0:
return
.limit locals 2
.limit stack 2
.end method
