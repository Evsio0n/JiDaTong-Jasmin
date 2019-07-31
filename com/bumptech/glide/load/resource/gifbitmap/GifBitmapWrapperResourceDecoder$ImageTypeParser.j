.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser
.super java/lang/Object
.inner class static ImageTypeParser inner com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser outer com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.throws java/io/IOException
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
dup
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/<init>(Ljava/io/InputStream;)V
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
.limit locals 2
.limit stack 3
.end method
