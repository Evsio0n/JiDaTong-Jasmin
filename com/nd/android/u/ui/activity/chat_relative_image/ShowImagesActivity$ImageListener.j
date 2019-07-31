.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/listener/ImageLoadingListener
.inner class private ImageListener inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener outer com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity

.field private 'mHolder' Lcom/product/android/ui/imageHolder/PictureHolder;

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;

.method public <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Lcom/product/android/ui/imageHolder/PictureHolder;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
return
.limit locals 3
.limit stack 2
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.catch java/lang/Exception from L0 to L1 using L2
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifeq L1
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
return
.limit locals 4
.limit stack 0
.end method

.method public onLoadingProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
return
.limit locals 3
.limit stack 0
.end method
