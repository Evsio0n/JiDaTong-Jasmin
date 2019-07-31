.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/StreamAssetPathFetcher
.super com/bumptech/glide/load/data/AssetPathFetcher
.signature "Lcom/bumptech/glide/load/data/AssetPathFetcher<Ljava/io/InputStream;>;"

.method public <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/data/AssetPathFetcher/<init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected close(Ljava/io/InputStream;)V
.throws java/io/IOException
aload 1
invokevirtual java/io/InputStream/close()V
return
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic close(Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/InputStream
invokevirtual com/bumptech/glide/load/data/StreamAssetPathFetcher/close(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
.throws java/io/IOException
aload 1
aload 2
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/data/StreamAssetPathFetcher/loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 3
.end method
