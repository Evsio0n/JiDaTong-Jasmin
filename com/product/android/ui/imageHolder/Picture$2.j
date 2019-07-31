.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/Picture$2
.super com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener
.enclosing method com/product/android/ui/imageHolder/Picture
.inner class inner com/product/android/ui/imageHolder/Picture$2

.field final synthetic 'this$0' Lcom/product/android/ui/imageHolder/Picture;

.method <init>(Lcom/product/android/ui/imageHolder/Picture;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/fail(Ljava/lang/String;)V 1
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokevirtual com/product/android/ui/imageHolder/Picture/unRegisterEvent()V
return
.limit locals 3
.limit stack 2
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/success(Ljava/lang/String;)V 1
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokevirtual com/product/android/ui/imageHolder/Picture/unRegisterEvent()V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokestatic com/product/android/ui/imageHolder/Picture/access$000(Lcom/product/android/ui/imageHolder/Picture;)Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/url Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/ui/imageHolder/Picture/absPath Ljava/lang/String;
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokevirtual com/product/android/ui/imageHolder/Picture/isGif()Z
ifne L3
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/absPath Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifeq L4
L3:
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
bipush 8
invokevirtual uk/co/senab/photoview/PhotoView/setVisibility(I)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L1
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
iconst_0
invokevirtual com/common/android/ui/gif/GifImageView/setVisibility(I)V
L0:
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/absPath Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifImageView/setGifImage(Ljava/lang/String;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
return
L4:
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
iconst_0
invokevirtual uk/co/senab/photoview/PhotoView/setVisibility(I)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
aload 3
invokevirtual uk/co/senab/photoview/PhotoView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L1
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
bipush 8
invokevirtual com/common/android/ui/gif/GifImageView/setVisibility(I)V
return
.limit locals 4
.limit stack 4
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/fail(Ljava/lang/String;)V 1
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokevirtual com/product/android/ui/imageHolder/Picture/unRegisterEvent()V
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingProgress(JJ)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
lload 1
lload 3
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/url Ljava/lang/String;
invokeinterface com/product/android/ui/imageHolder/DownloadListener/showProgress(JJLjava/lang/String;)V 5
return
.limit locals 5
.limit stack 6
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
invokevirtual com/product/android/ui/imageHolder/Picture/registerEvent()V
aload 0
getfield com/product/android/ui/imageHolder/Picture$2/this$0 Lcom/product/android/ui/imageHolder/Picture;
getfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
ldc2_w 100L
lconst_0
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/showProgress(JJLjava/lang/String;)V 5
return
.limit locals 3
.limit stack 6
.end method
