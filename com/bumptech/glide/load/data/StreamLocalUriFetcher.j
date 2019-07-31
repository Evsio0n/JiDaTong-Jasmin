.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/StreamLocalUriFetcher
.super com/bumptech/glide/load/data/LocalUriFetcher
.signature "Lcom/bumptech/glide/load/data/LocalUriFetcher<Ljava/io/InputStream;>;"

.method public <init>(Landroid/content/Context;Landroid/net/Uri;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/data/LocalUriFetcher/<init>(Landroid/content/Context;Landroid/net/Uri;)V
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
invokevirtual com/bumptech/glide/load/data/StreamLocalUriFetcher/close(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
.throws java/io/FileNotFoundException
aload 2
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
.throws java/io/FileNotFoundException
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/data/StreamLocalUriFetcher/loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 3
.end method
