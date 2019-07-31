.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/ImageVideoModelLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<A:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<TA;Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
.inner class static ImageVideoFetcher inner com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher outer com/bumptech/glide/load/model/ImageVideoModelLoader

.field private static final 'TAG' Ljava/lang/String; = "IVML"

.field private final 'fileDescriptorLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;"

.field private final 'streamLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
aload 2
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "At least one of streamLoader and fileDescriptorLoader must be non null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/model/ImageVideoModelLoader/streamLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 2
putfield com/bumptech/glide/load/model/ImageVideoModelLoader/fileDescriptorLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 3
.limit stack 3
.end method

.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(TA;II)Lcom/bumptech/glide/load/data/DataFetcher<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
aconst_null
astore 4
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader/streamLoader Lcom/bumptech/glide/load/model/ModelLoader;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader/streamLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
astore 4
L0:
aconst_null
astore 5
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader/fileDescriptorLoader Lcom/bumptech/glide/load/model/ModelLoader;
ifnull L1
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader/fileDescriptorLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
astore 5
L1:
aload 4
ifnonnull L2
aload 5
ifnull L3
L2:
new com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher
dup
aload 4
aload 5
invokespecial com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/<init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V
areturn
L3:
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method
