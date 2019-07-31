.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
.super com/nostra13/universalimageloader/cache/disc/LimitedDiscCache

.field private static final 'MIN_NORMAL_CACHE_SIZE' I = 2097152


.field private static final 'MIN_NORMAL_CACHE_SIZE_IN_MB' I = 2


.method public <init>(Ljava/io/File;I)V
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
iload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
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
iload 3
ldc_w 2097152
if_icmpge L0
ldc "You set too small disc cache size (less than %1$d Mb)"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method protected getSize(Ljava/io/File;)I
aload 1
invokevirtual java/io/File/length()J
l2i
ireturn
.limit locals 2
.limit stack 2
.end method
