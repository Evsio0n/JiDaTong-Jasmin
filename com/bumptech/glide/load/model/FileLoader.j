.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/FileLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Ljava/io/File;TT;>;"

.field private final 'uriLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/FileLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 2
.limit stack 2
.end method

.method public getResourceFetcher(Ljava/io/File;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Ljava/io/File;II)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
aload 0
getfield com/bumptech/glide/load/model/FileLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 1
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast java/io/File
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/FileLoader/getResourceFetcher(Ljava/io/File;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
