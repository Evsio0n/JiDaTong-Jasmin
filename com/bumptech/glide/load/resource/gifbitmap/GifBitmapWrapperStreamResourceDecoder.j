.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'gifBitmapDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.method public <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder/gifBitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
return
.limit locals 2
.limit stack 2
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder/gifBitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
new com/bumptech/glide/load/model/ImageVideoWrapper
dup
aload 1
aconst_null
invokespecial com/bumptech/glide/load/model/ImageVideoWrapper/<init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
areturn
.limit locals 4
.limit stack 5
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/InputStream
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder/decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder/gifBitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method
