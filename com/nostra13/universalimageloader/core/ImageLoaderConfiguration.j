.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/core/ImageLoaderConfiguration
.super java/lang/Object
.inner class public static Builder inner com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder outer com/nostra13/universalimageloader/core/ImageLoaderConfiguration
.inner class public static NetworkDeniedImageDownloader inner com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader outer com/nostra13/universalimageloader/core/ImageLoaderConfiguration
.inner class public static SlowNetworkImageDownloader inner com/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader outer com/nostra13/universalimageloader/core/ImageLoaderConfiguration

.field final 'customExecutor' Z

.field final 'customExecutorForCachedImages' Z

.field final 'decoder' Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field final 'defaultDisplayImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final 'diskCache' Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field final 'downloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final 'maxImageHeightForDiskCache' I

.field final 'maxImageHeightForMemoryCache' I

.field final 'maxImageWidthForDiskCache' I

.field final 'maxImageWidthForMemoryCache' I

.field final 'memoryCache' Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field final 'networkDeniedDownloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final 'processorForDiskCache' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field final 'reserveDiscCache' Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field final 'resources' Landroid/content/res/Resources;

.field final 'slowNetworkDownloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final 'taskExecutor' Ljava/util/concurrent/Executor;

.field final 'taskExecutorForCachedImages' Ljava/util/concurrent/Executor;

.field final 'tasksProcessingType' Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final 'threadPoolSize' I

.field final 'threadPriority' I

.method private <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$1(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForMemoryCache I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$2(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForMemoryCache I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$3(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForDiskCache I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$4(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForDiskCache I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$5(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$6(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/taskExecutor Ljava/util/concurrent/Executor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$7(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$8(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/threadPoolSize I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$9(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/threadPriority I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$10(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$11(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$12(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$13(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$14(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$15(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$16(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutor Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$17(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/customExecutorForCachedImages Z
aload 0
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/<init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/networkDeniedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader/<init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/slowNetworkDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createReserveDiskCache(Ljava/io/File;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/reserveDiscCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/access$18(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
invokestatic com/nostra13/universalimageloader/utils/L/writeDebugLogs(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/<init>(Landroid/content/Context;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
areturn
.limit locals 1
.limit stack 3
.end method

.method getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 4
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForMemoryCache I
istore 2
iload 2
istore 1
iload 2
ifgt L0
aload 4
getfield android/util/DisplayMetrics/widthPixels I
istore 1
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForMemoryCache I
istore 3
iload 3
istore 2
iload 3
ifgt L1
aload 4
getfield android/util/DisplayMetrics/heightPixels I
istore 2
L1:
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
areturn
.limit locals 5
.limit stack 4
.end method
