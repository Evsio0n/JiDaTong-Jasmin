.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/DefaultConfigurationFactory
.super java/lang/Object
.inner class private static DefaultThreadFactory inner com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory outer com/nostra13/universalimageloader/core/DefaultConfigurationFactory

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
new com/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public static createDiskCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
astore 5
lload 2
lconst_0
lcmp
ifgt L3
iload 4
ifle L4
L3:
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
astore 6
L0:
new com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache
dup
aload 6
aload 5
aload 1
lload 2
iload 4
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 6
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
L4:
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache
dup
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
aload 5
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
areturn
.limit locals 7
.limit stack 8
.end method

.method public static createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
aload 2
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/LIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
if_acmpne L0
iconst_1
istore 3
L1:
iload 3
ifeq L2
new com/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque
dup
invokespecial com/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque/<init>()V
astore 2
L3:
new java/util/concurrent/ThreadPoolExecutor
dup
iload 0
iload 0
lconst_0
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
aload 2
iload 1
ldc "uil-pool-"
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
areturn
L0:
iconst_0
istore 3
goto L1
L2:
new java/util/concurrent/LinkedBlockingQueue
dup
invokespecial java/util/concurrent/LinkedBlockingQueue/<init>()V
astore 2
goto L3
.limit locals 4
.limit stack 10
.end method

.method public static createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
new com/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator
dup
invokespecial com/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public static createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
new com/nostra13/universalimageloader/core/decode/BaseImageDecoder
dup
iload 0
invokespecial com/nostra13/universalimageloader/core/decode/BaseImageDecoder/<init>(Z)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
new com/nostra13/universalimageloader/core/download/BaseImageDownloader
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/download/BaseImageDownloader/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static createMemoryCache(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
iload 1
istore 2
iload 1
ifne L0
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
astore 3
aload 3
invokevirtual android/app/ActivityManager/getMemoryClass()I
istore 2
iload 2
istore 1
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/hasHoneycomb()Z
ifeq L1
iload 2
istore 1
aload 0
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/isLargeHeap(Landroid/content/Context;)Z
ifeq L1
aload 3
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/getLargeMemoryClass(Landroid/app/ActivityManager;)I
istore 1
L1:
ldc_w 1048576
iload 1
imul
bipush 8
idiv
istore 2
L0:
new com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache
dup
iload 2
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/<init>(I)V
areturn
.limit locals 4
.limit stack 3
.end method

.method public static createReserveDiskCache(Ljava/io/File;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
new java/io/File
dup
aload 0
ldc "uil-images"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdir()Z
ifeq L1
L0:
aload 1
astore 0
L1:
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache
dup
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache/<init>(Ljava/io/File;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method private static createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
aload 0
iconst_0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
astore 0
new java/io/File
dup
aload 0
ldc "uil-images"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdir()Z
ifeq L1
L0:
aload 1
astore 0
L1:
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public static createReserveDiskCacheDir(Ljava/io/File;)Ljava/io/File;
new java/io/File
dup
aload 0
ldc "uil-images"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdir()Z
ifeq L1
L0:
aload 1
astore 0
L1:
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public static createTaskDistributor()Ljava/util/concurrent/Executor;
iconst_5
ldc "uil-pool-d-"
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
invokestatic java/util/concurrent/Executors/newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
new com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory
dup
iload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/<init>(ILjava/lang/String;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method private static getLargeMemoryClass(Landroid/app/ActivityManager;)I
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
invokevirtual android/app/ActivityManager/getLargeMemoryClass()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static hasHoneycomb()Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method private static isLargeHeap(Landroid/content/Context;)Z
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
ldc_w 1048576
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
