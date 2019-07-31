.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<Lcom/bumptech/glide/gifdecoder/GifDecoder;>;"
.inner class private static GifFrameDataFetcher inner com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher outer com/bumptech/glide/load/resource/gif/GifFrameModelLoader

.field private final 'decoder' Lcom/bumptech/glide/gifdecoder/GifDecoder;

.method public <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
return
.limit locals 2
.limit stack 2
.end method

.method public cancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public cleanup()V
return
.limit locals 1
.limit stack 0
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getCurrentFrameIndex()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher/loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
areturn
.limit locals 2
.limit stack 2
.end method
