.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/ImageLoader
.super java/lang/Object
.inner class private static SyncImageLoadingListener inner com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener outer com/nostra13/universalimageloader/core/ImageLoader

.field private static final 'ERROR_INIT_CONFIG_WITH_NULL' Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final 'ERROR_NOT_INIT' Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final 'ERROR_WRONG_ARGUMENTS' Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field static final 'LOG_DESTROY' Ljava/lang/String; = "Destroy ImageLoader"

.field static final 'LOG_INIT_CONFIG' Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final 'LOG_LOAD_IMAGE_FROM_MEMORY_CACHE' Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final 'TAG' Ljava/lang/String;

.field private static final 'WARNING_RE_INIT_CONFIG' Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile 'instance' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'configuration' Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final 'emptyListener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private 'engine' Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.method static <clinit>()V
ldc com/nostra13/universalimageloader/core/ImageLoader
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nostra13/universalimageloader/core/ImageLoader/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener
dup
invokespecial com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener/<init>()V
putfield com/nostra13/universalimageloader/core/ImageLoader/emptyListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
return
.limit locals 1
.limit stack 3
.end method

.method private checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ImageLoader must be init with configuration before using"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
aload 1
invokevirtual java/io/File/exists()Z
ifeq L8
aload 1
invokevirtual java/io/File/isFile()Z
ifeq L8
aload 1
invokevirtual java/io/File/canRead()Z
ifne L9
L8:
iconst_0
ireturn
L9:
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L10
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L10:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
aload 3
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 2
invokevirtual java/io/File/delete()Z
pop
L0:
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 1
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
sipush 1024
newarray byte
astore 3
L1:
aload 1
aload 3
invokevirtual java/io/FileInputStream/read([B)I
istore 4
L3:
iload 4
ifgt L6
L4:
aload 1
invokevirtual java/io/FileInputStream/close()V
aload 2
invokevirtual java/io/FileOutputStream/close()V
L5:
goto L11
L6:
aload 2
aload 3
iconst_0
iload 4
invokevirtual java/io/FileOutputStream/write([BII)V
L7:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L11:
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method private static defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getHandler()Landroid/os/Handler;
astore 1
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading()Z
ifeq L0
aconst_null
astore 0
L1:
aload 0
areturn
L0:
aload 1
astore 0
aload 1
ifnonnull L1
aload 1
astore 0
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L1
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nostra13/universalimageloader/core/ImageLoader/instance Lcom/nostra13/universalimageloader/core/ImageLoader;
ifnonnull L3
ldc com/nostra13/universalimageloader/core/ImageLoader
monitorenter
L0:
getstatic com/nostra13/universalimageloader/core/ImageLoader/instance Lcom/nostra13/universalimageloader/core/ImageLoader;
ifnonnull L1
new com/nostra13/universalimageloader/core/ImageLoader
dup
invokespecial com/nostra13/universalimageloader/core/ImageLoader/<init>()V
putstatic com/nostra13/universalimageloader/core/ImageLoader/instance Lcom/nostra13/universalimageloader/core/ImageLoader;
L1:
ldc com/nostra13/universalimageloader/core/ImageLoader
monitorexit
L3:
getstatic com/nostra13/universalimageloader/core/ImageLoader/instance Lcom/nostra13/universalimageloader/core/ImageLoader;
areturn
L2:
astore 0
L4:
ldc com/nostra13/universalimageloader/core/ImageLoader
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public cancelDisplayTask(Landroid/widget/ImageView;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
return
.limit locals 2
.limit stack 4
.end method

.method public cancelDisplayTask(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
return
.limit locals 2
.limit stack 2
.end method

.method public clearDiscCache()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/clearDiskCache()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/clear()V 0
return
.limit locals 2
.limit stack 2
.end method

.method public clearDiskCache()V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public clearMemoryCache()V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public denyNetworkDownloads(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
iload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/denyNetworkDownloads(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public destroy()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
ifnull L0
ldc "Destroy ImageLoader"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/stop()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/close()V 0
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
return
.limit locals 1
.limit stack 2
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 0
ldc ""
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 3
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
ldc ""
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 3
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
ldc ""
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 3
aload 4
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
aload 0
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 3
aload 4
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 6
.limit stack 6
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
.signature "(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
ldc ""
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 3
aload 4
aconst_null
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
ldc ""
aload 1
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aconst_null
aload 3
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 0
ldc ""
aload 1
aload 2
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 3
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
ldc ""
aload 1
aload 2
aload 3
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
ldc ""
aload 1
aload 2
aload 3
aload 4
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 7
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
.signature "(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
ldc ""
aload 1
aload 2
aload 3
aload 4
aload 5
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 7
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
.signature "(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
ldc ""
aload 1
aload 2
aload 3
aload 4
aconst_null
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
ldc ""
aload 1
aload 2
aconst_null
aload 3
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
aload 0
aload 1
aload 2
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 3
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
aload 1
aload 2
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 3
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 4
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 3
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 4
aload 5
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
aload 0
aload 1
aload 2
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 3
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aload 4
aload 5
aload 6
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 7
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 3
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
aconst_null
aload 4
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aconst_null
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 8
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
.signature "(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 3
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 5
astore 10
aload 5
ifnonnull L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/emptyListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
astore 10
L1:
aload 4
astore 5
aload 4
ifnonnull L2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 5
L2:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 3
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 10
aload 2
aload 3
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V 2
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldShowImageForEmptyUri()Z
ifeq L4
aload 3
aload 5
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
L5:
aload 10
aload 2
aload 3
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
aconst_null
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V 3
L6:
return
L4:
aload 3
aconst_null
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
goto L5
L3:
aload 3
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration/getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
astore 4
aload 2
aload 4
invokestatic com/nostra13/universalimageloader/utils/MemoryCacheUtils/generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;
astore 11
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 3
aload 11
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
aload 10
aload 2
aload 3
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 11
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
astore 12
aload 12
ifnull L7
aload 12
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L7
ldc "Load image from memory cache [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 11
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_1
istore 8
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldPostProcess()Z
ifeq L8
new com/nostra13/universalimageloader/core/ImageLoadingInfo
dup
aload 2
aload 3
aload 4
aload 11
aload 5
aload 10
aload 6
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 2
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
invokespecial com/nostra13/universalimageloader/core/ImageLoadingInfo/<init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
astore 1
new com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 12
aload 1
aload 5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
invokespecial com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
astore 1
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading()Z
ifeq L9
aload 1
invokevirtual com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/run()V
L10:
iload 8
ifeq L11
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isNeedCheckExpired()Z
ifeq L6
L11:
new com/nostra13/universalimageloader/core/ImageLoadingInfo
dup
aload 2
aload 3
aload 4
aload 11
aload 5
aload 10
aload 6
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 2
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
invokespecial com/nostra13/universalimageloader/core/ImageLoadingInfo/<init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
astore 1
new com/nostra13/universalimageloader/core/LoadAndDisplayImageTask
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
aload 5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
aload 7
invokespecial com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;Ljava/util/HashMap;)V
astore 1
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading()Z
ifeq L12
aload 1
invokevirtual com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/run()V
return
L9:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
goto L10
L8:
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 12
aload 3
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invokeinterface com/nostra13/universalimageloader/core/display/BitmapDisplayer/display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V 3
aload 10
aload 2
aload 3
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
aload 12
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V 3
goto L10
L7:
iconst_0
istore 9
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldShowThumbImage()Z
ifeq L13
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/findCachedBitmapForImageUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L14
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L14
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 1
aload 3
aconst_null
invokeinterface com/nostra13/universalimageloader/core/display/BitmapDisplayer/display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V 3
iload 9
istore 8
goto L10
L14:
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldShowImageOnLoading()Z
ifeq L15
aload 3
aload 5
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
iload 9
istore 8
goto L10
L15:
aload 3
aconst_null
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
iload 9
istore 8
goto L10
L13:
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldShowImageOnLoading()Z
ifeq L16
aload 3
aload 5
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
iload 9
istore 8
goto L10
L16:
iload 9
istore 8
aload 5
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isResetViewBeforeLoading()Z
ifeq L10
aload 3
aconst_null
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
iload 9
istore 8
goto L10
L12:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
return
.limit locals 13
.limit stack 11
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
aload 4
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/HashMap;)V
return
.limit locals 5
.limit stack 8
.end method

.method public findCachedBitmapForImageUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokestatic com/nostra13/universalimageloader/core/assist/MemoryCacheUtil/findCachedBitmapForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 1
ifnull L0
aload 1
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
ifnull L0
aload 1
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 2
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/io/File/exists()Z
ifne L2
L1:
ldc ""
areturn
L2:
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getDiscCacheFileName(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 2
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/io/File/exists()Z
ifne L2
L1:
ldc ""
areturn
L2:
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
new com/nostra13/universalimageloader/core/imageaware/ImageViewAware
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/imageaware/ImageViewAware/<init>(Landroid/widget/ImageView;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method public handleSlowNetwork(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
iload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/handleSlowNetwork(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
aload 0
monitorenter
aload 1
ifnonnull L2
L0:
new java/lang/IllegalArgumentException
dup
ldc "ImageLoader configuration can not be initialized with null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 1
aload 0
monitorexit
aload 1
athrow
L2:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
ifnonnull L4
ldc "Initialize ImageLoader with configuration"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
new com/nostra13/universalimageloader/core/ImageLoaderEngine
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/ImageLoaderEngine/<init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
putfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
L3:
aload 0
monitorexit
return
L4:
ldc "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L5:
goto L3
.limit locals 2
.limit stack 4
.end method

.method public isInited()Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 2
aload 1
aconst_null
aload 3
aload 4
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 5
.limit stack 6
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 3
ifnonnull L0
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageWidthForMemoryCache I
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/maxImageHeightForMemoryCache I
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
pop
L0:
aload 4
astore 3
aload 4
ifnonnull L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 3
L1:
aload 0
aload 1
aload 2
aload 3
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aconst_null
aload 2
aload 3
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 4
.limit stack 6
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 5
.limit stack 6
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 2
astore 6
aload 2
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration/getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
astore 6
L0:
aload 3
astore 2
aload 3
ifnonnull L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 2
L1:
aload 0
aload 1
new com/nostra13/universalimageloader/core/imageaware/NonViewAware
dup
aload 1
aload 6
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invokespecial com/nostra13/universalimageloader/core/imageaware/NonViewAware/<init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
aload 2
aload 4
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 7
.limit stack 7
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aload 2
aconst_null
aload 3
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 4
.limit stack 6
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
aload 1
aconst_null
aconst_null
aload 2
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
return
.limit locals 3
.limit stack 6
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
aload 1
aconst_null
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 4
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
aload 0
aload 1
aconst_null
aload 2
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 4
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 4
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
aload 3
astore 4
aload 3
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/defaultDisplayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 4
L0:
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
aload 4
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 3
new com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener
dup
aconst_null
invokespecial com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;)V
astore 4
aload 0
aload 1
aload 2
aload 3
aload 4
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 4
invokevirtual com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener/getLoadedBitmap()Landroid/graphics/Bitmap;
areturn
.limit locals 5
.limit stack 5
.end method

.method public pause()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/pause()V
return
.limit locals 1
.limit stack 1
.end method

.method public removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 2
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
invokestatic com/nostra13/universalimageloader/core/assist/DiscCacheUtil/removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public removeFromMemCache(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader/checkConfiguration()V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/memoryCache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokestatic com/nostra13/universalimageloader/core/assist/MemoryCacheUtil/removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)V
return
.limit locals 2
.limit stack 2
.end method

.method public resume()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/resume()V
return
.limit locals 1
.limit stack 1
.end method

.method public saveDiscCacheFile(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;Ljava/io/File;)Z
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 2
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
aload 3
ifnull L1
aload 0
aload 1
aload 3
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokespecial com/nostra13/universalimageloader/core/ImageLoader/copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)Z
pop
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public stop()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/stop()V
return
.limit locals 1
.limit stack 1
.end method

.method public stop(Landroid/widget/ImageView;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/stop(Landroid/widget/ImageView;)V
return
.limit locals 2
.limit stack 2
.end method
