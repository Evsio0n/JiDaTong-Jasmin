.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"

.field private final 'bitmapDrawableResourceTranscoder' Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; signature "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;"

.method public <init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder/bitmapDrawableResourceTranscoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
return
.limit locals 2
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
ldc "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
astore 1
aload 1
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
astore 2
aload 2
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder/bitmapDrawableResourceTranscoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
aload 2
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource; 1
areturn
L0:
aload 1
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getGifResource()Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 3
.limit stack 2
.end method
