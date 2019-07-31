.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/core/LoadAndDisplayImageTask
.super java/lang/Object
.implements java/lang/Runnable
.implements com/nostra13/universalimageloader/utils/IoUtils$CopyListener
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3
.inner class TaskCancelledException inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException outer com/nostra13/universalimageloader/core/LoadAndDisplayImageTask

.field private static final 'ERROR_NO_IMAGE_STREAM' Ljava/lang/String; = "No stream for image [%s]"

.field private static final 'ERROR_POST_PROCESSOR_NULL' Ljava/lang/String; = "Post-processor returned null [%s]"

.field private static final 'ERROR_PRE_PROCESSOR_NULL' Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final 'ERROR_PROCESSOR_FOR_DISK_CACHE_NULL' Ljava/lang/String; = "Bitmap processor for disk cache returned null [%s]"

.field private static final 'LOG_CACHE_IMAGE_IN_MEMORY' Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final 'LOG_CACHE_IMAGE_ON_DISK' Ljava/lang/String; = "Cache image on disk [%s]"

.field private static final 'LOG_DELAY_BEFORE_LOADING' Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final 'LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING' Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final 'LOG_LOAD_IMAGE_FROM_DISK_CACHE' Ljava/lang/String; = "Load image from disk cache [%s]"

.field private static final 'LOG_LOAD_IMAGE_FROM_NETWORK' Ljava/lang/String; = "Load image from network [%s]"

.field private static final 'LOG_POSTPROCESS_IMAGE' Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final 'LOG_PREPROCESS_IMAGE' Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final 'LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK' Ljava/lang/String; = "Process image before cache on disk [%s]"

.field private static final 'LOG_RESIZE_CACHED_IMAGE_FILE' Ljava/lang/String; = "Resize image in disk cache [%s]"

.field private static final 'LOG_RESUME_AFTER_PAUSE' Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final 'LOG_START_DISPLAY_IMAGE_TASK' Ljava/lang/String; = "Start display image task [%s]"

.field private static final 'LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED' Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final 'LOG_TASK_CANCELLED_IMAGEAWARE_REUSED' Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final 'LOG_TASK_INTERRUPTED' Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final 'LOG_WAITING_FOR_IMAGE_LOADED' Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final 'LOG_WAITING_FOR_RESUME' Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"

.field public static 'defaultUserAgent' Ljava/lang/String;

.field private final 'configuration' Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final 'decoder' Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private final 'downloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final 'engine' Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final 'handler' Landroid/os/Handler;

.field final 'imageAware' Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final 'imageLoadingInfo' Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.field final 'listener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private 'loadedFrom' Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public 'mRequestPropertyHashMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private final 'memoryCacheKey' Ljava/lang/String;

.field private final 'networkDeniedDownloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final 'options' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final 'progressListener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field private final 'slowNetworkDownloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final 'syncLoading' Z

.field private final 'targetSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final 'uri' Ljava/lang/String;

.field private final 'writeLog' Z

.method public <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;Ljava/util/HashMap;)V
.signature "(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/NETWORK Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
aload 1
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/networkDeniedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/networkDeniedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/slowNetworkDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/slowNetworkDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/uri Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/memoryCacheKey Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/progressListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/progressListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading()Z
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/syncLoading Z
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isWriteLog()Z
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/writeLog Z
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
ifnonnull L1
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
L1:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
ldc "User-Agent"
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L4
getstatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/defaultUserAgent Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
astore 1
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 2
aload 2
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
sipush 16384
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 3
new java/lang/StringBuilder
dup
aload 1
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
aload 2
invokevirtual android/content/pm/ApplicationInfo/loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/content/pm/PackageInfo/versionCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/defaultUserAgent Ljava/lang/String;
L3:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
ldc "User-Agent"
getstatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/defaultUserAgent Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkTaskInterrupted()V
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskInterrupted()Z
ifeq L0
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private checkTaskNotActual()V
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkViewCollected()V
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkViewReused()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkViewCollected()V
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isViewCollected()Z
ifeq L0
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private checkViewReused()V
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isViewReused()Z
ifeq L0
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType; 0
astore 2
new com/nostra13/universalimageloader/core/decode/ImageDecodingInfo
dup
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 2
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
invokespecial com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/HashMap;)V
astore 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 1
invokeinterface com/nostra13/universalimageloader/core/decode/ImageDecoder/decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap; 1
areturn
.limit locals 3
.limit stack 10
.end method

.method private delayIfNeed()Z
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldDelayBeforeLoading()Z
ifeq L3
ldc "Delay %d ms before loading...  [%s]"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDelayBeforeLoading()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDelayBeforeLoading()I
i2l
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskNotActual()Z
ireturn
L2:
astore 1
ldc "Task was interrupted [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method private downloadImage()Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getExtraForDownloader()Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream; 3
astore 2
aload 2
ifnonnull L0
ldc "No stream for image [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 2
aload 0
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z 3
istore 1
L1:
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iload 1
ireturn
L2:
astore 3
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 3
athrow
.limit locals 4
.limit stack 5
.end method

.method private downloadImageForResume(Ljava/io/File;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getExtraForDownloader()Ljava/lang/Object;
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream; 4
astore 3
aload 3
ifnonnull L0
ldc "No stream for image [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 3
aload 0
aload 1
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z 6
istore 2
L1:
aload 3
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iload 2
ireturn
L2:
astore 1
aload 3
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
.limit locals 4
.limit stack 7
.end method

.method private fireCancelEvent()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/syncLoading Z
ifne L0
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskInterrupted()Z
ifeq L1
L0:
return
L1:
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
return
.limit locals 1
.limit stack 4
.end method

.method private fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
new java/lang/StringBuilder
dup
ldc "uri:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",fireFailEvent failType:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L1:
aload 4
astore 3
aload 2
ifnull L4
L3:
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ", message:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Throwable/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",LocalizedMessage:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Throwable/getLocalizedMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L4:
ldc "imageloader"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L5:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/syncLoading Z
ifne L6
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskInterrupted()Z
ifne L6
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskNotActual()Z
ifeq L7
L6:
return
L7:
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2
dup
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
return
L2:
astore 3
goto L5
.limit locals 5
.limit stack 5
.end method

.method private fireProgressEvent(II)Z
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskInterrupted()Z
ifne L0
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskNotActual()Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/progressListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
ifnull L2
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1
dup
aload 0
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/<init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;II)V
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
L2:
iconst_1
ireturn
.limit locals 3
.limit stack 5
.end method

.method private getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/isNetworkDenied()Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/networkDeniedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
astore 1
L1:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/writeLog Z
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/setWriteLog(Z)V 1
aload 1
areturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/isSlowNetwork()Z
ifeq L2
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/slowNetworkDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
astore 1
goto L1
L2:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method private getImageFileInDiscCache()Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
astore 1
L1:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 2
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
astore 3
aload 3
ifnull L2
aload 2
astore 1
aload 3
invokevirtual java/io/File/exists()Z
ifne L3
aload 2
astore 1
aload 3
invokevirtual java/io/File/mkdirs()Z
ifne L3
L2:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/reserveDiscCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 2
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
astore 3
aload 2
astore 1
aload 3
ifnull L3
aload 2
astore 1
aload 3
invokevirtual java/io/File/exists()Z
ifne L3
aload 3
invokevirtual java/io/File/mkdirs()Z
pop
aload 2
astore 1
L3:
aload 1
areturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
astore 1
goto L1
.limit locals 4
.limit stack 2
.end method

.method private isTaskInterrupted()Z
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
ldc "Task was interrupted [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 5
.end method

.method private isTaskNotActual()Z
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isViewCollected()Z
ifne L0
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isViewReused()Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private isViewCollected()Z
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/isCollected()Z 0
ifeq L0
ldc "ImageAware was collected by GC. Task is cancelled. [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 5
.end method

.method private isViewReused()Z
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
astore 2
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_0
istore 1
L1:
iload 1
ifeq L2
ldc "ImageAware is reused for another image. Task is cancelled. [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_1
ireturn
L0:
iconst_1
istore 1
goto L1
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method private resizeAndSaveImage(II)Z
.throws java/io/IOException
iconst_0
istore 4
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 5
iload 4
istore 3
aload 5
ifnull L0
iload 4
istore 3
aload 5
invokevirtual java/io/File/exists()Z
ifeq L0
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
astore 6
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_INT Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 7
new com/nostra13/universalimageloader/core/decode/ImageDecodingInfo
dup
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 5
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/wrap(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 6
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 7
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/mRequestPropertyHashMap Ljava/util/HashMap;
invokespecial com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/HashMap;)V
astore 5
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/decoder Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
aload 5
invokeinterface com/nostra13/universalimageloader/core/decode/ImageDecoder/decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap; 1
astore 6
aload 6
astore 5
aload 6
ifnull L1
aload 6
astore 5
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
ifnull L1
ldc "Process image before cache on disk [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/processorForDiskCache Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 6
invokeinterface com/nostra13/universalimageloader/core/process/BitmapProcessor/process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap; 1
astore 6
aload 6
astore 5
aload 6
ifnonnull L1
ldc "Bitmap processor for disk cache returned null [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
aload 6
astore 5
L1:
iload 4
istore 3
aload 5
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 5
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z 2
istore 3
aload 5
invokevirtual android/graphics/Bitmap/recycle()V
L0:
iload 3
ireturn
.limit locals 8
.limit stack 10
.end method

.method static runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
iload 1
ifeq L0
aload 0
invokeinterface java/lang/Runnable/run()V 0
return
L0:
aload 2
ifnonnull L1
aload 3
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/fireCallback(Ljava/lang/Runnable;)V
return
L1:
aload 2
aload 0
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method private tryCacheImageOnDisk()Z
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
ldc "Cache image on disk [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/downloadImage()Z
istore 3
L1:
iload 3
ifeq L6
L3:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForDiskCache I
istore 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForDiskCache I
istore 2
L4:
iload 1
ifgt L5
iload 2
ifle L6
L5:
ldc "Resize image in disk cache [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/resizeAndSaveImage(II)Z
pop
L6:
iload 3
ireturn
L2:
astore 4
aload 4
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
iconst_0
ireturn
.limit locals 5
.limit stack 5
.end method

.method private tryCacheImageOnDisk(Ljava/io/File;)Z
.throws java/lang/Exception
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
ldc "Cache image on disk [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/downloadImageForResume(Ljava/io/File;)Z
istore 4
L1:
iload 4
ifeq L6
L3:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForDiskCache I
istore 2
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForDiskCache I
istore 3
L4:
iload 2
ifgt L5
iload 3
ifle L6
L5:
ldc "Resize image in disk cache [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
iload 2
iload 3
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/resizeAndSaveImage(II)Z
pop
L6:
iload 4
ireturn
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aload 1
athrow
.limit locals 5
.limit stack 5
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
.throws com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/lang/OutOfMemoryError from L0 to L1 using L5
.catch java/lang/Throwable from L0 to L1 using L6
.catch java/lang/IllegalStateException from L7 to L8 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L7 to L8 using L3
.catch java/io/IOException from L7 to L8 using L4
.catch java/lang/OutOfMemoryError from L7 to L8 using L5
.catch java/lang/Throwable from L7 to L8 using L6
.catch java/lang/IllegalStateException from L9 to L10 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L9 to L10 using L3
.catch java/io/IOException from L9 to L10 using L4
.catch java/lang/OutOfMemoryError from L9 to L10 using L5
.catch java/lang/Throwable from L9 to L10 using L6
.catch java/lang/IllegalStateException from L11 to L12 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L11 to L12 using L3
.catch java/io/IOException from L11 to L12 using L4
.catch java/lang/OutOfMemoryError from L11 to L12 using L5
.catch java/lang/Throwable from L11 to L12 using L6
.catch java/lang/IllegalStateException from L13 to L14 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L13 to L14 using L3
.catch java/io/IOException from L13 to L14 using L4
.catch java/lang/OutOfMemoryError from L13 to L14 using L5
.catch java/lang/Throwable from L13 to L14 using L6
.catch java/lang/IllegalStateException from L15 to L16 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L15 to L16 using L3
.catch java/io/IOException from L15 to L16 using L4
.catch java/lang/OutOfMemoryError from L15 to L16 using L5
.catch java/lang/Throwable from L15 to L16 using L6
.catch java/lang/IllegalStateException from L17 to L18 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L17 to L18 using L3
.catch java/io/IOException from L17 to L18 using L4
.catch java/lang/OutOfMemoryError from L17 to L18 using L5
.catch java/lang/Throwable from L17 to L18 using L6
.catch java/lang/IllegalStateException from L19 to L20 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L19 to L20 using L3
.catch java/io/IOException from L19 to L20 using L4
.catch java/lang/OutOfMemoryError from L19 to L20 using L5
.catch java/lang/Throwable from L19 to L20 using L6
.catch java/lang/IllegalStateException from L21 to L22 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L21 to L22 using L3
.catch java/io/IOException from L21 to L22 using L4
.catch java/lang/OutOfMemoryError from L21 to L22 using L5
.catch java/lang/Throwable from L21 to L22 using L6
.catch java/lang/IllegalStateException from L23 to L24 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L23 to L24 using L3
.catch java/io/IOException from L23 to L24 using L4
.catch java/lang/OutOfMemoryError from L23 to L24 using L5
.catch java/lang/Throwable from L23 to L24 using L6
.catch java/lang/IllegalStateException from L25 to L26 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L25 to L26 using L3
.catch java/io/IOException from L25 to L26 using L4
.catch java/lang/OutOfMemoryError from L25 to L26 using L5
.catch java/lang/Throwable from L25 to L26 using L6
.catch java/lang/IllegalStateException from L27 to L28 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L27 to L28 using L3
.catch java/io/IOException from L27 to L28 using L4
.catch java/lang/OutOfMemoryError from L27 to L28 using L5
.catch java/lang/Throwable from L27 to L28 using L6
.catch java/lang/IllegalStateException from L29 to L30 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L29 to L30 using L3
.catch java/io/IOException from L29 to L30 using L4
.catch java/lang/OutOfMemoryError from L29 to L30 using L5
.catch java/lang/Throwable from L29 to L30 using L6
.catch java/lang/IllegalStateException from L31 to L32 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L31 to L32 using L3
.catch java/io/IOException from L31 to L32 using L4
.catch java/lang/OutOfMemoryError from L31 to L32 using L5
.catch java/lang/Throwable from L31 to L32 using L6
.catch java/lang/IllegalStateException from L33 to L34 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L33 to L34 using L3
.catch java/io/IOException from L33 to L34 using L4
.catch java/lang/OutOfMemoryError from L33 to L34 using L5
.catch java/lang/Throwable from L33 to L34 using L6
.catch java/lang/IllegalStateException from L35 to L36 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L35 to L36 using L3
.catch java/io/IOException from L35 to L36 using L4
.catch java/lang/OutOfMemoryError from L35 to L36 using L5
.catch java/lang/Throwable from L35 to L36 using L6
.catch java/lang/IllegalStateException from L37 to L38 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L37 to L38 using L3
.catch java/io/IOException from L37 to L38 using L4
.catch java/lang/OutOfMemoryError from L37 to L38 using L5
.catch java/lang/Throwable from L37 to L38 using L6
.catch java/lang/IllegalStateException from L39 to L40 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L39 to L40 using L3
.catch java/io/IOException from L39 to L40 using L4
.catch java/lang/OutOfMemoryError from L39 to L40 using L5
.catch java/lang/Throwable from L39 to L40 using L6
.catch java/lang/IllegalStateException from L41 to L42 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L41 to L42 using L3
.catch java/io/IOException from L41 to L42 using L4
.catch java/lang/OutOfMemoryError from L41 to L42 using L5
.catch java/lang/Throwable from L41 to L42 using L6
.catch java/lang/IllegalStateException from L43 to L44 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L43 to L44 using L3
.catch java/io/IOException from L43 to L44 using L4
.catch java/lang/OutOfMemoryError from L43 to L44 using L5
.catch java/lang/Throwable from L43 to L44 using L6
.catch java/lang/IllegalStateException from L45 to L46 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L45 to L46 using L3
.catch java/io/IOException from L45 to L46 using L4
.catch java/lang/OutOfMemoryError from L45 to L46 using L5
.catch java/lang/Throwable from L45 to L46 using L6
.catch java/lang/IllegalStateException from L47 to L48 using L2
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L47 to L48 using L3
.catch java/io/IOException from L47 to L48 using L4
.catch java/lang/OutOfMemoryError from L47 to L48 using L5
.catch java/lang/Throwable from L47 to L48 using L6
aconst_null
astore 7
aconst_null
astore 8
aconst_null
astore 9
aconst_null
astore 10
aconst_null
astore 6
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getImageFileInDiscCache()Ljava/io/File;
astore 11
L1:
aload 6
astore 1
aload 11
ifnull L16
aload 6
astore 1
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L7:
aload 11
invokevirtual java/io/File/exists()Z
ifeq L16
L8:
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L9:
ldc "Load image from disk cache [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L10:
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L11:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/DISC_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
L12:
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L13:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskNotActual()V
L14:
aload 7
astore 2
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
L15:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/wrap(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
L16:
aload 1
ifnull L20
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L17:
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
ifle L20
L18:
aload 1
astore 6
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L19:
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
ifgt L49
L20:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L21:
ldc "Load image from network [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L22:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L23:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/NETWORK Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
L24:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L25:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
astore 7
L26:
aload 7
astore 6
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L27:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isCacheOnDisk()Z
ifeq L34
L28:
aload 7
astore 6
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L29:
aload 0
aload 11
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/tryCacheImageOnDisk(Ljava/io/File;)Z
ifeq L34
L30:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L31:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getImageFileInDiscCache()Ljava/io/File;
astore 8
L32:
aload 7
astore 6
aload 8
ifnull L34
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L33:
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 8
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/wrap(Ljava/lang/String;)Ljava/lang/String;
astore 6
L34:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L35:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskNotActual()V
L36:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L37:
aload 0
aload 6
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
L38:
aload 1
ifnull L42
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L39:
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
ifle L42
L40:
aload 1
astore 6
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L41:
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
ifgt L49
L42:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L43:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/writeLog Z
ifeq L46
L44:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L45:
ldc "ImageLoader"
iconst_1
anewarray java/lang/Object
dup
iconst_0
new java/lang/StringBuilder
dup
ldc "@@ Decode image faild after download from internet, imageUrl="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L46:
aload 1
astore 2
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L47:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/DECODING_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aconst_null
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
L48:
aload 1
astore 6
L49:
aload 6
areturn
L2:
astore 1
aload 0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/NETWORK_DENIED Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 1
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 2
areturn
L3:
astore 1
aload 1
athrow
L4:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aload 0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/IO_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 1
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 3
areturn
L5:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aload 0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/OUT_OF_MEMORY Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 1
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 4
areturn
L6:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aload 0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/UNKNOWN Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 1
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 5
areturn
.limit locals 12
.limit stack 7
.end method

.method private waitIfPaused()Z
.catch all from L0 to L1 using L2
.catch java/lang/InterruptedException from L1 to L3 using L4
.catch all from L1 to L3 using L2
.catch all from L3 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
astore 2
aload 2
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ifeq L6
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getPauseLock()Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 2
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ifeq L5
ldc "ImageLoader is paused. Waiting...  [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getPauseLock()Ljava/lang/Object;
invokevirtual java/lang/Object/wait()V
L3:
ldc ".. Resume loading [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L5:
aload 1
monitorexit
L6:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/isTaskNotActual()Z
ireturn
L4:
astore 2
L7:
ldc "Task was interrupted [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
aload 1
monitorexit
L8:
iconst_1
ireturn
L2:
astore 2
L9:
aload 1
monitorexit
L10:
aload 2
athrow
.limit locals 3
.limit stack 5
.end method

.method getLoadingUri()Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onBytesCopied(II)Z
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/syncLoading Z
ifne L0
aload 0
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireProgressEvent(II)Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public run()V
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L13 to L14 using L2
.catch all from L13 to L14 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L15 to L16 using L2
.catch all from L15 to L16 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L17 to L18 using L2
.catch all from L17 to L18 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L19 to L20 using L2
.catch all from L19 to L20 using L3
.catch com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException from L21 to L22 using L2
.catch all from L21 to L22 using L3
.catch all from L23 to L24 using L3
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/waitIfPaused()Z
ifeq L25
L26:
return
L25:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/delayIfNeed()Z
ifne L26
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/loadFromUriLock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
ldc "Start display image task [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/isLocked()Z
ifeq L27
ldc "Image already is loading. Waiting... [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L27:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskNotActual()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
astore 2
L1:
aload 2
ifnull L5
L4:
aload 2
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L21
L5:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/tryLoadBitmap()Landroid/graphics/Bitmap;
astore 2
L6:
aload 2
ifnonnull L7
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L7:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskNotActual()V
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskInterrupted()V
L8:
aload 2
astore 1
L9:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldPreProcess()Z
ifeq L28
ldc "PreProcess image before caching in memory [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 2
invokeinterface com/nostra13/universalimageloader/core/process/BitmapProcessor/process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap; 1
astore 2
L10:
aload 2
astore 1
aload 2
ifnonnull L28
L11:
ldc "Pre-processor returned null [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L12:
aload 2
astore 1
L28:
aload 1
astore 2
aload 1
ifnull L29
aload 1
astore 2
L13:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isCacheInMemory()Z
ifeq L29
ldc "Cache image in memory [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z 2
pop
L14:
aload 1
astore 2
L29:
aload 2
astore 1
aload 2
ifnull L19
aload 2
astore 1
L15:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldPostProcess()Z
ifeq L19
ldc "PostProcess image before displaying [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 2
invokeinterface com/nostra13/universalimageloader/core/process/BitmapProcessor/process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap; 1
astore 2
L16:
aload 2
astore 1
aload 2
ifnonnull L19
L17:
ldc "Post-processor returned null [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L18:
aload 2
astore 1
L19:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskNotActual()V
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/checkTaskInterrupted()V
L20:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
new com/nostra13/universalimageloader/core/DisplayBitmapTask
dup
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invokespecial com/nostra13/universalimageloader/core/DisplayBitmapTask/<init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/syncLoading Z
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
return
L21:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
ldc "...Get cached bitmap from memory after waiting. [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L22:
goto L29
L2:
astore 1
L23:
aload 0
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireCancelEvent()V
L24:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L3:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 4
.limit stack 6
.end method
