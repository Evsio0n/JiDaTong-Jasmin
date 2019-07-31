.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/graphics/Bitmap;>;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 2
.limit stack 2
.end method

.method public decode(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getNextFrame()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/bitmap/BitmapResource/obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
areturn
.limit locals 4
.limit stack 2
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast com/bumptech/glide/gifdecoder/GifDecoder
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder/decode(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
ldc "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"
areturn
.limit locals 1
.limit stack 1
.end method
