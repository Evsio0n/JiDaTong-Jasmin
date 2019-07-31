.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/MediaStoreStreamLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;"

.field private final 'context' Landroid/content/Context;

.field private final 'uriLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;"

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 3
.limit stack 2
.end method

.method public getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
new com/bumptech/glide/load/data/MediaStoreThumbFetcher
dup
aload 0
getfield com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/context Landroid/content/Context;
aload 1
aload 0
getfield com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
iload 2
iload 3
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher/<init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V
areturn
.limit locals 4
.limit stack 8
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast android/net/Uri
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
