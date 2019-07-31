.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameModelLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifDecoder;>;"
.inner class private static GifFrameDataFetcher inner com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher outer com/bumptech/glide/load/resource/gif/GifFrameModelLoader

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getResourceFetcher(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/data/DataFetcher<Lcom/bumptech/glide/gifdecoder/GifDecoder;>;"
new com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher
dup
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher/<init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
areturn
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast com/bumptech/glide/gifdecoder/GifDecoder
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameModelLoader/getResourceFetcher(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
