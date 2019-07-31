.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask
.super java/lang/Object
.implements java/lang/Runnable

.field private static final 'LOG_POSTPROCESS_IMAGE' Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private final 'bitmap' Landroid/graphics/Bitmap;

.field private final 'engine' Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final 'handler' Landroid/os/Handler;

.field private final 'imageLoadingInfo' Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.method public <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/bitmap Landroid/graphics/Bitmap;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/handler Landroid/os/Handler;
return
.limit locals 5
.limit stack 2
.end method

.method public run()V
ldc "PostProcess image before displaying [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
new com/nostra13/universalimageloader/core/DisplayBitmapTask
dup
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/bitmap Landroid/graphics/Bitmap;
invokeinterface com/nostra13/universalimageloader/core/process/BitmapProcessor/process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap; 1
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invokespecial com/nostra13/universalimageloader/core/DisplayBitmapTask/<init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/imageLoadingInfo Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading()Z
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/handler Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/ProcessAndDisplayImageTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
return
.limit locals 1
.limit stack 6
.end method
