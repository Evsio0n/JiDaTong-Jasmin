.bytecode 50.0
.class public synchronized com/bumptech/glide/Glide
.super java/lang/Object
.inner class private static ClearTarget inner com/bumptech/glide/Glide$ClearTarget outer com/bumptech/glide/Glide

.field private static final 'TAG' Ljava/lang/String; = "Glide"

.field private static volatile 'glide' Lcom/bumptech/glide/Glide;

.field private final 'bitmapCenterCrop' Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final 'bitmapFitCenter' Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'bitmapPreFiller' Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final 'dataLoadProviderRegistry' Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

.field private final 'decodeFormat' Lcom/bumptech/glide/load/DecodeFormat;

.field private final 'drawableCenterCrop' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final 'drawableFitCenter' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final 'engine' Lcom/bumptech/glide/load/engine/Engine;

.field private final 'imageViewTargetFactory' Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final 'loaderFactory' Lcom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final 'mainHandler' Landroid/os/Handler;

.field private final 'memoryCache' Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final 'transcoderRegistry' Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

.method <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/request/target/ImageViewTargetFactory
dup
invokespecial com/bumptech/glide/request/target/ImageViewTargetFactory/<init>()V
putfield com/bumptech/glide/Glide/imageViewTargetFactory Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
aload 0
new com/bumptech/glide/load/resource/transcode/TranscoderRegistry
dup
invokespecial com/bumptech/glide/load/resource/transcode/TranscoderRegistry/<init>()V
putfield com/bumptech/glide/Glide/transcoderRegistry Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
aload 0
aload 1
putfield com/bumptech/glide/Glide/engine Lcom/bumptech/glide/load/engine/Engine;
aload 0
aload 3
putfield com/bumptech/glide/Glide/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 2
putfield com/bumptech/glide/Glide/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 0
aload 5
putfield com/bumptech/glide/Glide/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
aload 0
new com/bumptech/glide/load/model/GenericLoaderFactory
dup
aload 4
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/<init>(Landroid/content/Context;)V
putfield com/bumptech/glide/Glide/loaderFactory Lcom/bumptech/glide/load/model/GenericLoaderFactory;
aload 0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
putfield com/bumptech/glide/Glide/mainHandler Landroid/os/Handler;
aload 0
new com/bumptech/glide/load/engine/prefill/BitmapPreFiller
dup
aload 2
aload 3
aload 5
invokespecial com/bumptech/glide/load/engine/prefill/BitmapPreFiller/<init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/Glide/bitmapPreFiller Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
aload 0
new com/bumptech/glide/provider/DataLoadProviderRegistry
dup
invokespecial com/bumptech/glide/provider/DataLoadProviderRegistry/<init>()V
putfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider
dup
aload 3
aload 5
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
astore 1
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc java/io/InputStream
ldc android/graphics/Bitmap
aload 1
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
new com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider
dup
aload 3
aload 5
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
astore 2
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc android/os/ParcelFileDescriptor
ldc android/graphics/Bitmap
aload 2
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
new com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/<init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V
astore 1
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc com/bumptech/glide/load/model/ImageVideoWrapper
ldc android/graphics/Bitmap
aload 1
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
new com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider
dup
aload 4
aload 3
invokespecial com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
astore 2
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc java/io/InputStream
ldc com/bumptech/glide/load/resource/gif/GifDrawable
aload 2
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc com/bumptech/glide/load/model/ImageVideoWrapper
ldc com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
new com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider
dup
aload 1
aload 2
aload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/<init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
ldc java/io/InputStream
ldc java/io/File
new com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider
dup
invokespecial com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/<init>()V
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
aload 0
ldc java/io/File
ldc android/os/ParcelFileDescriptor
new com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/io/File
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamFileLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamFileLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
ldc android/os/ParcelFileDescriptor
new com/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamResourceLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamResourceLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/lang/Integer
ldc android/os/ParcelFileDescriptor
new com/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/lang/Integer
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamResourceLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamResourceLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/lang/String
ldc android/os/ParcelFileDescriptor
new com/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/lang/String
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamStringLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamStringLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc android/net/Uri
ldc android/os/ParcelFileDescriptor
new com/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc android/net/Uri
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamUriLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamUriLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc java/net/URL
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamUrlLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamUrlLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc com/bumptech/glide/load/model/GlideUrl
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
ldc [B
ldc java/io/InputStream
new com/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory
dup
invokespecial com/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory/<init>()V
invokevirtual com/bumptech/glide/Glide/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
aload 0
getfield com/bumptech/glide/Glide/transcoderRegistry Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
ldc android/graphics/Bitmap
ldc com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable
new com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder
dup
aload 4
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 3
invokespecial com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
invokevirtual com/bumptech/glide/load/resource/transcode/TranscoderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
aload 0
getfield com/bumptech/glide/Glide/transcoderRegistry Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
ldc com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
ldc com/bumptech/glide/load/resource/drawable/GlideDrawable
new com/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder
dup
new com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder
dup
aload 4
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 3
invokespecial com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
invokespecial com/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder/<init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
invokevirtual com/bumptech/glide/load/resource/transcode/TranscoderRegistry/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
aload 0
new com/bumptech/glide/load/resource/bitmap/CenterCrop
dup
aload 3
invokespecial com/bumptech/glide/load/resource/bitmap/CenterCrop/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/Glide/bitmapCenterCrop Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
aload 0
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation
dup
aload 3
aload 0
getfield com/bumptech/glide/Glide/bitmapCenterCrop Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
putfield com/bumptech/glide/Glide/drawableCenterCrop Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
aload 0
new com/bumptech/glide/load/resource/bitmap/FitCenter
dup
aload 3
invokespecial com/bumptech/glide/load/resource/bitmap/FitCenter/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/Glide/bitmapFitCenter Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
aload 0
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation
dup
aload 3
aload 0
getfield com/bumptech/glide/Glide/bitmapFitCenter Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
putfield com/bumptech/glide/Glide/drawableFitCenter Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
return
.limit locals 6
.limit stack 9
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;"
aload 0
ldc android/os/ParcelFileDescriptor
aload 1
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;>(TT;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;"
aload 0
ldc android/os/ParcelFileDescriptor
aload 1
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
aload 0
ifnonnull L0
ldc "Glide"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "Glide"
ldc "Unable to load null model, setting placeholder only"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 2
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokespecial com/bumptech/glide/Glide/getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
aload 0
aload 1
invokevirtual com/bumptech/glide/load/model/GenericLoaderFactory/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(TT;Ljava/lang/Class<TY;>;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
aload 0
ifnull L0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 0
L1:
aload 0
aload 1
aload 2
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
L0:
aconst_null
astore 0
goto L1
.limit locals 3
.limit stack 3
.end method

.method public static buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
aload 0
ldc java/io/InputStream
aload 1
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static buildStreamModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;>(TT;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
aload 0
ldc java/io/InputStream
aload 1
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static clear(Landroid/view/View;)V
new com/bumptech/glide/Glide$ClearTarget
dup
aload 0
invokespecial com/bumptech/glide/Glide$ClearTarget/<init>(Landroid/view/View;)V
invokestatic com/bumptech/glide/Glide/clear(Lcom/bumptech/glide/request/target/Target;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static clear(Lcom/bumptech/glide/request/FutureTarget;)V
.signature "(Lcom/bumptech/glide/request/FutureTarget<*>;)V"
aload 0
invokeinterface com/bumptech/glide/request/FutureTarget/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public static clear(Lcom/bumptech/glide/request/target/Target;)V
.signature "(Lcom/bumptech/glide/request/target/Target<*>;)V"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
invokeinterface com/bumptech/glide/request/target/Target/getRequest()Lcom/bumptech/glide/request/Request; 0
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/bumptech/glide/request/Request/clear()V 0
aload 0
aconst_null
invokeinterface com/bumptech/glide/request/target/Target/setRequest(Lcom/bumptech/glide/request/Request;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
getstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
ifnonnull L10
ldc com/bumptech/glide/Glide
monitorenter
L0:
getstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
ifnonnull L9
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
astore 0
new com/bumptech/glide/module/ManifestParser
dup
aload 0
invokespecial com/bumptech/glide/module/ManifestParser/<init>(Landroid/content/Context;)V
invokevirtual com/bumptech/glide/module/ManifestParser/parse()Ljava/util/List;
astore 1
new com/bumptech/glide/GlideBuilder
dup
aload 0
invokespecial com/bumptech/glide/GlideBuilder/<init>(Landroid/content/Context;)V
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/module/GlideModule
aload 0
aload 2
invokeinterface com/bumptech/glide/module/GlideModule/applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V 2
L3:
goto L1
L2:
astore 0
L4:
ldc com/bumptech/glide/Glide
monitorexit
L5:
aload 0
athrow
L6:
aload 2
invokevirtual com/bumptech/glide/GlideBuilder/createGlide()Lcom/bumptech/glide/Glide;
putstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/module/GlideModule
aload 0
getstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
invokeinterface com/bumptech/glide/module/GlideModule/registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V 2
L8:
goto L7
L9:
ldc com/bumptech/glide/Glide
monitorexit
L10:
getstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
areturn
.limit locals 4
.limit stack 3
.end method

.method private getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
aload 0
getfield com/bumptech/glide/Glide/loaderFactory Lcom/bumptech/glide/load/model/GenericLoaderFactory;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
aload 0
ldc "image_manager_disk_cache"
invokestatic com/bumptech/glide/Glide/getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
aload 0
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
astore 0
aload 0
ifnull L0
new java/io/File
dup
aload 0
aload 1
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
astore 0
aload 1
invokevirtual java/io/File/mkdirs()Z
ifne L1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L2
aload 1
astore 0
aload 1
invokevirtual java/io/File/isDirectory()Z
ifne L1
L2:
aconst_null
astore 0
L1:
aload 0
areturn
L0:
ldc "Glide"
bipush 6
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
ldc "Glide"
ldc "default disk cache dir is null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public static isSetup()Z
.annotation visible Ljava/lang/Deprecated;
.end annotation
getstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static setup(Lcom/bumptech/glide/GlideBuilder;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
invokestatic com/bumptech/glide/Glide/isSetup()Z
ifeq L0
new java/lang/IllegalArgumentException
dup
ldc "Glide is already setup, check with isSetup() first"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/bumptech/glide/GlideBuilder/createGlide()Lcom/bumptech/glide/Glide;
putstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
return
.limit locals 1
.limit stack 3
.end method

.method static tearDown()V
aconst_null
putstatic com/bumptech/glide/Glide/glide Lcom/bumptech/glide/Glide;
return
.limit locals 0
.limit stack 1
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;)Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
aload 0
getfield com/bumptech/glide/Glide/dataLoadProviderRegistry Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
aload 1
aload 2
invokevirtual com/bumptech/glide/provider/DataLoadProviderRegistry/get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
areturn
.limit locals 3
.limit stack 3
.end method

.method buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
.signature "<R:Ljava/lang/Object;>(Landroid/widget/ImageView;Ljava/lang/Class<TR;>;)Lcom/bumptech/glide/request/target/Target<TR;>;"
aload 0
getfield com/bumptech/glide/Glide/imageViewTargetFactory Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
aload 1
aload 2
invokevirtual com/bumptech/glide/request/target/ImageViewTargetFactory/buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 3
.limit stack 3
.end method

.method buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.signature "<Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
aload 0
getfield com/bumptech/glide/Glide/transcoderRegistry Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
aload 1
aload 2
invokevirtual com/bumptech/glide/load/resource/transcode/TranscoderRegistry/get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public clearDiskCache()V
invokestatic com/bumptech/glide/util/Util/assertBackgroundThread()V
aload 0
invokevirtual com/bumptech/glide/Glide/getEngine()Lcom/bumptech/glide/load/engine/Engine;
invokevirtual com/bumptech/glide/load/engine/Engine/clearDiskCache()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearMemory()V
aload 0
getfield com/bumptech/glide/Glide/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/clearMemory()V 0
aload 0
getfield com/bumptech/glide/Glide/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/clearMemory()V 0
return
.limit locals 1
.limit stack 1
.end method

.method getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
aload 0
getfield com/bumptech/glide/Glide/bitmapCenterCrop Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
areturn
.limit locals 1
.limit stack 1
.end method

.method getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
aload 0
getfield com/bumptech/glide/Glide/bitmapFitCenter Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/Glide/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
areturn
.limit locals 1
.limit stack 1
.end method

.method getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;
aload 0
getfield com/bumptech/glide/Glide/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
areturn
.limit locals 1
.limit stack 1
.end method

.method getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
aload 0
getfield com/bumptech/glide/Glide/drawableCenterCrop Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
areturn
.limit locals 1
.limit stack 1
.end method

.method getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
aload 0
getfield com/bumptech/glide/Glide/drawableFitCenter Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
areturn
.limit locals 1
.limit stack 1
.end method

.method getEngine()Lcom/bumptech/glide/load/engine/Engine;
aload 0
getfield com/bumptech/glide/Glide/engine Lcom/bumptech/glide/load/engine/Engine;
areturn
.limit locals 1
.limit stack 1
.end method

.method getMainHandler()Landroid/os/Handler;
aload 0
getfield com/bumptech/glide/Glide/mainHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public transient preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
aload 0
getfield com/bumptech/glide/Glide/bitmapPreFiller Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
aload 1
invokevirtual com/bumptech/glide/load/engine/prefill/BitmapPreFiller/preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
return
.limit locals 2
.limit stack 2
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;)V"
aload 0
getfield com/bumptech/glide/Glide/loaderFactory Lcom/bumptech/glide/load/model/GenericLoaderFactory;
aload 1
aload 2
aload 3
invokevirtual com/bumptech/glide/load/model/GenericLoaderFactory/register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/bumptech/glide/load/model/ModelLoaderFactory/teardown()V 0
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)V
aload 0
getfield com/bumptech/glide/Glide/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
aload 1
invokevirtual com/bumptech/glide/MemoryCategory/getMultiplier()F
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/setSizeMultiplier(F)V 1
aload 0
getfield com/bumptech/glide/Glide/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokevirtual com/bumptech/glide/MemoryCategory/getMultiplier()F
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/setSizeMultiplier(F)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public trimMemory(I)V
aload 0
getfield com/bumptech/glide/Glide/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
iload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/trimMemory(I)V 1
aload 0
getfield com/bumptech/glide/Glide/memoryCache Lcom/bumptech/glide/load/engine/cache/MemoryCache;
iload 1
invokeinterface com/bumptech/glide/load/engine/cache/MemoryCache/trimMemory(I)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)V
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)V"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
getfield com/bumptech/glide/Glide/loaderFactory Lcom/bumptech/glide/load/model/GenericLoaderFactory;
aload 1
aload 2
invokevirtual com/bumptech/glide/load/model/GenericLoaderFactory/unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/bumptech/glide/load/model/ModelLoaderFactory/teardown()V 0
L0:
return
.limit locals 3
.limit stack 3
.end method
