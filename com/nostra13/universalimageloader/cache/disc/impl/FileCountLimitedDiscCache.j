.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache
.super com/nostra13/universalimageloader/cache/disc/LimitedDiscCache

.method public <init>(Ljava/io/File;I)V
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
iload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache/<init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/<init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
return
.limit locals 4
.limit stack 4
.end method

.method protected getSize(Ljava/io/File;)I
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
