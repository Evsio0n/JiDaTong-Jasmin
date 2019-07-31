.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/ImageVideoWrapper
.super java/lang/Object

.field private final 'fileDescriptor' Landroid/os/ParcelFileDescriptor;

.field private final 'streamData' Ljava/io/InputStream;

.method public <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/ImageVideoWrapper/streamData Ljava/io/InputStream;
aload 0
aload 2
putfield com/bumptech/glide/load/model/ImageVideoWrapper/fileDescriptor Landroid/os/ParcelFileDescriptor;
return
.limit locals 3
.limit stack 2
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapper/fileDescriptor Landroid/os/ParcelFileDescriptor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStream()Ljava/io/InputStream;
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapper/streamData Ljava/io/InputStream;
areturn
.limit locals 1
.limit stack 1
.end method
