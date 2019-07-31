.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/DecodeJob$FileOpener
.super java/lang/Object
.inner class static FileOpener inner com/bumptech/glide/load/engine/DecodeJob$FileOpener outer com/bumptech/glide/load/engine/DecodeJob

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public open(Ljava/io/File;)Ljava/io/OutputStream;
.throws java/io/FileNotFoundException
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;)V
areturn
.limit locals 2
.limit stack 5
.end method
