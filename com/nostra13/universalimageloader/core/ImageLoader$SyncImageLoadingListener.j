.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener
.super com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener
.inner class private static SyncImageLoadingListener inner com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener outer com/nostra13/universalimageloader/core/ImageLoader

.field private 'loadedImage' Landroid/graphics/Bitmap;

.method private <init>()V
aload 0
invokespecial com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;)V
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public getLoadedBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener/loadedImage Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener/loadedImage Landroid/graphics/Bitmap;
return
.limit locals 4
.limit stack 2
.end method
