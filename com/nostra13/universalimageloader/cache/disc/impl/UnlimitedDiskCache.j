.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache
.super com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache

.method public <init>(Ljava/io/File;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;)V
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
return
.limit locals 4
.limit stack 4
.end method
