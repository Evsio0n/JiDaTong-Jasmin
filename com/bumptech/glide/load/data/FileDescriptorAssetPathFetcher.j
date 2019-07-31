.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/FileDescriptorAssetPathFetcher
.super com/bumptech/glide/load/data/AssetPathFetcher
.signature "Lcom/bumptech/glide/load/data/AssetPathFetcher<Landroid/os/ParcelFileDescriptor;>;"

.method public <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/data/AssetPathFetcher/<init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected close(Landroid/os/ParcelFileDescriptor;)V
.throws java/io/IOException
aload 1
invokevirtual android/os/ParcelFileDescriptor/close()V
return
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic close(Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
checkcast android/os/ParcelFileDescriptor
invokevirtual com/bumptech/glide/load/data/FileDescriptorAssetPathFetcher/close(Landroid/os/ParcelFileDescriptor;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.throws java/io/IOException
aload 1
aload 2
invokevirtual android/content/res/AssetManager/openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
invokevirtual android/content/res/AssetFileDescriptor/getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
areturn
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/data/FileDescriptorAssetPathFetcher/loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
areturn
.limit locals 3
.limit stack 3
.end method
