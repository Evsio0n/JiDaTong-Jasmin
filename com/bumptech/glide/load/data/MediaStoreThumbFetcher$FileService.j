.bytecode 50.0
.class synchronized com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService
.super java/lang/Object
.inner class static FileService inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService outer com/bumptech/glide/load/data/MediaStoreThumbFetcher

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public exists(Ljava/io/File;)Z
aload 1
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public length(Ljava/io/File;)J
aload 1
invokevirtual java/io/File/length()J
lreturn
.limit locals 2
.limit stack 2
.end method
