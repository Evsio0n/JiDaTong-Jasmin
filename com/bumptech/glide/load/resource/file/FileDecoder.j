.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/file/FileDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Ljava/io/File;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource<Ljava/io/File;>;"
new com/bumptech/glide/load/resource/file/FileResource
dup
aload 1
invokespecial com/bumptech/glide/load/resource/file/FileResource/<init>(Ljava/io/File;)V
areturn
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/File
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/file/FileDecoder/decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
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
