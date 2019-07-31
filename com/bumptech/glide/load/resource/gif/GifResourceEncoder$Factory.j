.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory
.super java/lang/Object
.inner class static Factory inner com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory outer com/bumptech/glide/load/resource/gif/GifResourceEncoder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
new com/bumptech/glide/gifdecoder/GifDecoder
dup
aload 1
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/<init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
new com/bumptech/glide/gifencoder/AnimatedGifEncoder
dup
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
new com/bumptech/glide/load/resource/bitmap/BitmapResource
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapResource/<init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
new com/bumptech/glide/gifdecoder/GifHeaderParser
dup
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method
