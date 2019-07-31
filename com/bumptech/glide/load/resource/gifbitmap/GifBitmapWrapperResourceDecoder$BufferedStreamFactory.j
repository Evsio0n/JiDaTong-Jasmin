.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory
.super java/lang/Object
.inner class static BufferedStreamFactory inner com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory outer com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Ljava/io/InputStream;[B)Ljava/io/InputStream;
new com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/<init>(Ljava/io/InputStream;[B)V
areturn
.limit locals 3
.limit stack 4
.end method
