.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/UrlLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Ljava/net/URL;TT;>;"

.field private final 'glideUrlLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/UrlLoader/glideUrlLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast java/net/URL
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/UrlLoader/getResourceFetcher(Ljava/net/URL;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getResourceFetcher(Ljava/net/URL;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Ljava/net/URL;II)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
aload 0
getfield com/bumptech/glide/load/model/UrlLoader/glideUrlLoader Lcom/bumptech/glide/load/model/ModelLoader;
new com/bumptech/glide/load/model/GlideUrl
dup
aload 1
invokespecial com/bumptech/glide/load/model/GlideUrl/<init>(Ljava/net/URL;)V
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
.limit locals 4
.limit stack 4
.end method
