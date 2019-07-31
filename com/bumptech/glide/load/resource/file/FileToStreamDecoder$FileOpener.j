.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener
.super java/lang/Object
.inner class static FileOpener inner com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener outer com/bumptech/glide/load/resource/file/FileToStreamDecoder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public open(Ljava/io/File;)Ljava/io/InputStream;
.throws java/io/FileNotFoundException
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
areturn
.limit locals 2
.limit stack 3
.end method
