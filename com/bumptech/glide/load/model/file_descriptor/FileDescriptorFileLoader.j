.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader
.super com/bumptech/glide/load/model/FileLoader
.implements com/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader
.signature "Lcom/bumptech/glide/load/model/FileLoader<Landroid/os/ParcelFileDescriptor;>;Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<Ljava/io/File;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory outer com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader

.method public <init>(Landroid/content/Context;)V
aload 0
ldc android/net/Uri
aload 1
invokestatic com/bumptech/glide/Glide/buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;)V"
aload 0
aload 1
invokespecial com/bumptech/glide/load/model/FileLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 2
.end method
