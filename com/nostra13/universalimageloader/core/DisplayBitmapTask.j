.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/core/DisplayBitmapTask
.super java/lang/Object
.implements java/lang/Runnable

.field private static final 'LOG_DISPLAY_IMAGE_IN_IMAGEAWARE' Ljava/lang/String; = "Display image in ImageAware (loaded from %1$s) [%2$s]"

.field private static final 'LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED' Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final 'LOG_TASK_CANCELLED_IMAGEAWARE_REUSED' Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private final 'bitmap' Landroid/graphics/Bitmap;

.field private final 'displayer' Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final 'engine' Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final 'imageAware' Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final 'imageUri' Ljava/lang/String;

.field private final 'listener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private final 'loadedFrom' Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private final 'memoryCacheKey' Ljava/lang/String;

.method public <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/bitmap Landroid/graphics/Bitmap;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/uri Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageUri Ljava/lang/String;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/memoryCacheKey Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/memoryCacheKey Ljava/lang/String;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
aload 2
getfield com/nostra13/universalimageloader/core/ImageLoadingInfo/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/DisplayBitmapTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
return
.limit locals 5
.limit stack 2
.end method

.method private isViewWasReused()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
astore 1
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/memoryCacheKey Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/isCollected()Z 0
ifeq L0
ldc "ImageAware was collected by GC. Task is cancelled. [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageUri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V 2
return
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/DisplayBitmapTask/isViewWasReused()Z
ifeq L1
ldc "ImageAware is reused for another image. Task is cancelled. [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageUri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V 2
return
L1:
ldc "Display image in ImageAware (loaded from %1$s) [%2$s]"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aastore
dup
iconst_1
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/memoryCacheKey Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/bitmap Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/loadedFrom Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invokeinterface com/nostra13/universalimageloader/core/display/BitmapDisplayer/display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V 3
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/engine Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderEngine/cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageUri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayBitmapTask/bitmap Landroid/graphics/Bitmap;
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V 3
return
.limit locals 1
.limit stack 5
.end method
