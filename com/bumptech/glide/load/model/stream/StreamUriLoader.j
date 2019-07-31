.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamUriLoader
.super com/bumptech/glide/load/model/UriLoader
.implements com/bumptech/glide/load/model/stream/StreamModelLoader
.signature "Lcom/bumptech/glide/load/model/UriLoader<Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/stream/StreamModelLoader<Landroid/net/Uri;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamUriLoader$Factory outer com/bumptech/glide/load/model/stream/StreamUriLoader

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc com/bumptech/glide/load/model/GlideUrl
aload 1
invokestatic com/bumptech/glide/Glide/buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/stream/StreamUriLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;)V"
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/UriLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
new com/bumptech/glide/load/data/StreamAssetPathFetcher
dup
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 2
invokespecial com/bumptech/glide/load/data/StreamAssetPathFetcher/<init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method protected getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
new com/bumptech/glide/load/data/StreamLocalUriFetcher
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/data/StreamLocalUriFetcher/<init>(Landroid/content/Context;Landroid/net/Uri;)V
areturn
.limit locals 3
.limit stack 4
.end method
