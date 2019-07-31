.bytecode 50.0
.class public synchronized abstract com/product/android/ui/imageHolder/Picture
.super java/lang/Object
.inner class inner com/product/android/ui/imageHolder/Picture$1
.inner class inner com/product/android/ui/imageHolder/Picture$2
.inner class public static DownloadProgress inner com/product/android/ui/imageHolder/Picture$DownloadProgress outer com/product/android/ui/imageHolder/Picture

.field public 'absPath' Ljava/lang/String;

.field public 'cpProgress' Lcom/product/android/ui/imageHolder/CircleProgress;

.field public 'displayImageOpt' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public 'gifPicture' Lcom/common/android/ui/gif/GifImageView;

.field public 'isLocalUrl' Z

.field public 'isShow' Z

.field public 'ivPicture' Luk/co/senab/photoview/PhotoView;

.field public 'leftBtn' Landroid/widget/Button;

.field public 'loadingListener' Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;

.field private 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field public 'pos' I

.field public 'progressListener' Lcom/product/android/ui/imageHolder/DownloadListener;

.field public 'rightBtn' Landroid/widget/Button;

.field public 'rlProgress' Landroid/widget/RelativeLayout;

.field public 'thumbnail' Ljava/lang/String;

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/product/android/ui/imageHolder/Picture/isShow Z
aload 0
ldc ""
putfield com/product/android/ui/imageHolder/Picture/absPath Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/Picture/isLocalUrl Z
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/product/android/ui/imageHolder/Picture/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
new com/product/android/ui/imageHolder/Picture$1
dup
aload 0
invokespecial com/product/android/ui/imageHolder/Picture$1/<init>(Lcom/product/android/ui/imageHolder/Picture;)V
putfield com/product/android/ui/imageHolder/Picture/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 0
new com/product/android/ui/imageHolder/Picture$2
dup
aload 0
invokespecial com/product/android/ui/imageHolder/Picture$2/<init>(Lcom/product/android/ui/imageHolder/Picture;)V
putfield com/product/android/ui/imageHolder/Picture/loadingListener Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/imageHolder/Picture;)Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/ui/imageHolder/Picture/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isDownloading()Z
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract isGif()Z
.end method

.method public onEventMainThread(Ljava/lang/Object;)V
aload 1
instanceof com/product/android/ui/imageHolder/Picture$DownloadProgress
ifeq L0
aload 1
checkcast com/product/android/ui/imageHolder/Picture$DownloadProgress
astore 1
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mUrl Ljava/lang/String;
aload 0
getfield com/product/android/ui/imageHolder/Picture/url Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
iconst_m1
if_icmpne L1
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
return
L1:
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
ifne L2
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/imageHolder/Picture/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMainProgress(I)V
return
L2:
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
bipush 100
if_icmplt L3
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L3:
aload 0
getfield com/product/android/ui/imageHolder/Picture/isShow Z
ifeq L4
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L5:
aload 0
getfield com/product/android/ui/imageHolder/Picture/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 1
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMainProgress(I)V
return
L4:
aload 0
getfield com/product/android/ui/imageHolder/Picture/rlProgress Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L5
.limit locals 2
.limit stack 2
.end method

.method public registerEvent()V
.catch de/greenrobot/event/EventBusException from L0 to L1 using L2
L0:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 2
.end method

.method public showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/FileNotFoundException from L3 to L4 using L2
aload 0
aload 1
putfield com/product/android/ui/imageHolder/Picture/thumbnail Ljava/lang/String;
aload 0
aload 2
putfield com/product/android/ui/imageHolder/Picture/url Ljava/lang/String;
aload 0
aload 3
putfield com/product/android/ui/imageHolder/Picture/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokevirtual com/product/android/ui/imageHolder/Picture/isGif()Z
ifne L5
aload 1
astore 5
aload 2
astore 4
aload 0
getfield com/product/android/ui/imageHolder/Picture/isLocalUrl Z
ifeq L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L6:
aload 0
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
iconst_0
invokevirtual uk/co/senab/photoview/PhotoView/setVisibility(I)V
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L7
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
bipush 8
invokevirtual com/common/android/ui/gif/GifImageView/setVisibility(I)V
L7:
aload 0
getfield com/product/android/ui/imageHolder/Picture/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 4
aload 0
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
aload 3
aload 0
getfield com/product/android/ui/imageHolder/Picture/loadingListener Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L8:
return
L5:
aload 0
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
bipush 8
invokevirtual uk/co/senab/photoview/PhotoView/setVisibility(I)V
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L9
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
iconst_0
invokevirtual com/common/android/ui/gif/GifImageView/setVisibility(I)V
L9:
aload 0
getfield com/product/android/ui/imageHolder/Picture/isLocalUrl Z
ifeq L10
L0:
aload 2
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L8
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 2
invokevirtual com/common/android/ui/gif/GifImageView/setGifImage(Ljava/lang/String;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
return
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/ui/imageHolder/Picture/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 2
aload 0
getfield com/product/android/ui/imageHolder/Picture/ivPicture Luk/co/senab/photoview/PhotoView;
aload 3
aload 0
getfield com/product/android/ui/imageHolder/Picture/loadingListener Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L4:
return
L10:
aload 0
getfield com/product/android/ui/imageHolder/Picture/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/findCachedBitmapForImageUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L11
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L11
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 1
invokevirtual com/common/android/ui/gif/GifImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L11:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/ui/imageHolder/Picture/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 2
aload 3
aload 0
getfield com/product/android/ui/imageHolder/Picture/loadingListener Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 6
.limit stack 6
.end method

.method public unRegisterEvent()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method
