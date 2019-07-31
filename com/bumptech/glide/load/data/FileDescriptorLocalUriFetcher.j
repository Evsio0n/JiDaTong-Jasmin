.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/FileDescriptorLocalUriFetcher
.super com/bumptech/glide/load/data/LocalUriFetcher
.signature "Lcom/bumptech/glide/load/data/LocalUriFetcher<Landroid/os/ParcelFileDescriptor;>;"

.method public <init>(Landroid/content/Context;Landroid/net/Uri;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/data/LocalUriFetcher/<init>(Landroid/content/Context;Landroid/net/Uri;)V
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
invokevirtual com/bumptech/glide/load/data/FileDescriptorLocalUriFetcher/close(Landroid/os/ParcelFileDescriptor;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
.throws java/io/FileNotFoundException
aload 2
aload 1
ldc "r"
invokevirtual android/content/ContentResolver/openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
invokevirtual android/content/res/AssetFileDescriptor/getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
.throws java/io/FileNotFoundException
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/data/FileDescriptorLocalUriFetcher/loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
areturn
.limit locals 3
.limit stack 3
.end method
