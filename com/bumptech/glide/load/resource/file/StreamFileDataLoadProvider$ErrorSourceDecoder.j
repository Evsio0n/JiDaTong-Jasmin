.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Ljava/io/File;>;"
.inner class private static ErrorSourceDecoder inner com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder outer com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;)V
aload 0
invokespecial com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource<Ljava/io/File;>;"
new java/lang/Error
dup
ldc "You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder"
invokespecial java/lang/Error/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/InputStream
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder/decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
