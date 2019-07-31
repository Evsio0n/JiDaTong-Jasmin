.bytecode 50.0
.class synchronized com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
.inner class static ImageVideoFetcher inner com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher outer com/bumptech/glide/load/model/ImageVideoModelLoader

.field private final 'fileDescriptorFetcher' Lcom/bumptech/glide/load/data/DataFetcher; signature "Lcom/bumptech/glide/load/data/DataFetcher<Landroid/os/ParcelFileDescriptor;>;"

.field private final 'streamFetcher' Lcom/bumptech/glide/load/data/DataFetcher; signature "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"

.method public <init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V
.signature "(Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;Lcom/bumptech/glide/load/data/DataFetcher<Landroid/os/ParcelFileDescriptor;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 2
putfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
return
.limit locals 3
.limit stack 2
.end method

.method public cancel()V
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cancel()V 0
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L1
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cancel()V 0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public cleanup()V
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L1
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/getId()Ljava/lang/String; 0
areturn
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/getId()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aconst_null
astore 3
aload 3
astore 2
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L1
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/streamFetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 1
invokeinterface com/bumptech/glide/load/data/DataFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object; 1
checkcast java/io/InputStream
astore 2
L1:
aconst_null
astore 4
aload 4
astore 3
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnull L4
L3:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 1
invokeinterface com/bumptech/glide/load/data/DataFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object; 1
checkcast android/os/ParcelFileDescriptor
astore 3
L4:
new com/bumptech/glide/load/model/ImageVideoWrapper
dup
aload 2
aload 3
invokespecial com/bumptech/glide/load/model/ImageVideoWrapper/<init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
areturn
L2:
astore 4
ldc "IVML"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "IVML"
ldc "Exception fetching input stream, trying ParcelFileDescriptor"
aload 4
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L6:
aload 3
astore 2
aload 0
getfield com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/fileDescriptorFetcher Lcom/bumptech/glide/load/data/DataFetcher;
ifnonnull L1
aload 4
athrow
L5:
astore 1
ldc "IVML"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "IVML"
ldc "Exception fetching ParcelFileDescriptor"
aload 1
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L7:
aload 4
astore 3
aload 2
ifnonnull L4
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher/loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;
areturn
.limit locals 2
.limit stack 2
.end method
