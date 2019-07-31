.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder
.super java/lang/Object
.inner class public static Builder inner com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder outer com/nostra13/universalimageloader/core/ImageLoaderConfiguration

.field public static final 'DEFAULT_TASK_PROCESSING_TYPE' Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final 'DEFAULT_THREAD_POOL_SIZE' I = 3


.field public static final 'DEFAULT_THREAD_PRIORITY' I = 3


.field private static final 'WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR' Ljava/lang/String; = "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

.field private static final 'WARNING_OVERLAP_DISK_CACHE_PARAMS' Ljava/lang/String; = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

.field private static final 'WARNING_OVERLAP_EXECUTOR' Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final 'WARNING_OVERLAP_MEMORY_CACHE' Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"

.field private 'context' Landroid/content/Context;

.field private 'customExecutor' Z

.field private 'customExecutorForCachedImages' Z

.field private 'decoder' Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private 'defaultDisplayImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'denyCacheImageMultipleSizesInMemory' Z

.field private 'diskCache' Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field private 'diskCacheFileCount' I

.field private 'diskCacheFileNameGenerator' Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private 'diskCacheSize' J

.field private 'downloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private 'maxImageHeightForDiskCache' I

.field private 'maxImageHeightForMemoryCache' I

.field private 'maxImageWidthForDiskCache' I

.field private 'maxImageWidthForMemoryCache' I

.field private 'memoryCache' Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private 'memoryCacheSize' I

.field private 'processorForDiskCache' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private 'taskExecutor' Ljava/util/concurrent/Executor;

.field private 'taskExecutorForCachedImages' Ljava/util/concurrent/Executor;

.field private 'tasksProcessingType' Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private 'threadPoolSize' I

.field private 'threadPriority' I

.field private 'writeLogs' Z

.method static <clinit>()V
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/FIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
putstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/DEFAULT_TASK_PROCESSING_TYPE Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForMemoryCache I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForMemoryCache I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForDiskCache I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForDiskCache I
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutor Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutorForCachedImages Z
aload 0
iconst_3
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
aload 0
iconst_3
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/denyCacheImageMultipleSizesInMemory Z
aload 0
getstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/DEFAULT_TASK_PROCESSING_TYPE Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCacheSize I
aload 0
lconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheSize J
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileCount I
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/writeLogs Z
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/context Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForMemoryCache I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$11(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$12(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$13(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$14(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$15(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$16(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutor Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$17(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutorForCachedImages Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$18(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/writeLogs Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForMemoryCache I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForDiskCache I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForDiskCache I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$7(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$9(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initEmptyFieldsWithDefaultValues()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
ifnonnull L0
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
ifnonnull L2
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
L3:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnonnull L4
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
ifnonnull L5
aload 0
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
L5:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/context Landroid/content/Context;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheSize J
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileCount I
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createDiskCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
L4:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
ifnonnull L6
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/context Landroid/content/Context;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCacheSize I
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createMemoryCache(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
L6:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/denyCacheImageMultipleSizesInMemory Z
ifeq L7
aload 0
new com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokestatic com/nostra13/universalimageloader/utils/MemoryCacheUtils/createFuzzyKeyComparator()Ljava/util/Comparator;
invokespecial com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/<init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
L7:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
ifnonnull L8
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/context Landroid/content/Context;
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
L8:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
ifnonnull L9
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/writeLogs Z
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
L9:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L10
aload 0
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L10:
return
L0:
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutor Z
goto L1
L2:
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/customExecutorForCachedImages Z
goto L3
.limit locals 1
.limit stack 6
.end method

.method public build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/initEmptyFieldsWithDefaultValues()V
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration
dup
aload 0
aconst_null
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/denyCacheImageMultipleSizesInMemory Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public discCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iload 1
iload 2
aload 3
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
areturn
.limit locals 4
.limit stack 4
.end method

.method public discCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheSize J
lconst_0
lcmp
ifgt L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileCount I
ifle L1
L0:
ldc "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
ifnull L2
ldc "diskCache() and diskCacheFileNameGenerator() calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L2:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForDiskCache I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForDiskCache I
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
areturn
.limit locals 4
.limit stack 2
.end method

.method public diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "maxFileCount must be a positive number"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnull L1
ldc "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileCount I
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnull L0
ldc "diskCache() and diskCacheFileNameGenerator() calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheFileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "maxCacheSize must be a positive number"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnull L1
ldc "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
iload 1
i2l
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/diskCacheSize J
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCacheSize I
ifeq L0
ldc "memoryCache() and memoryCacheSize() calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageWidthForMemoryCache I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/maxImageHeightForMemoryCache I
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "memoryCacheSize must be a positive number"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
ifnull L1
ldc "memoryCache() and memoryCacheSize() calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCacheSize I
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
iload 1
ifle L0
iload 1
bipush 100
if_icmplt L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "availableMemoryPercent must be in range (0 < % < 100)"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
ifnull L2
ldc "memoryCache() and memoryCacheSize() calls overlap each other"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L2:
aload 0
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/maxMemory()J
l2f
iload 1
i2f
ldc_w 100.0F
fdiv
fmul
f2i
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCacheSize I
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
iconst_3
if_icmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
iconst_3
if_icmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
getstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/DEFAULT_TASK_PROCESSING_TYPE Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
if_acmpeq L1
L0:
ldc "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
iconst_3
if_icmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
iconst_3
if_icmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
getstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/DEFAULT_TASK_PROCESSING_TYPE Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
if_acmpeq L1
L0:
ldc "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
ifnull L1
L0:
ldc "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingType Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
ifnull L1
L0:
ldc "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPoolSize I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutor Ljava/util/concurrent/Executor;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/taskExecutorForCachedImages Ljava/util/concurrent/Executor;
ifnull L1
L0:
ldc "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
iload 1
iconst_1
if_icmpge L2
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
areturn
L2:
iload 1
bipush 10
if_icmple L3
aload 0
bipush 10
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
areturn
L3:
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/writeLogs Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method
