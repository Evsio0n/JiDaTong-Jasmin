.bytecode 50.0
.class synchronized com/product/android/ui/activity/ShowImageActivity$2
.super com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener
.enclosing method com/product/android/ui/activity/ShowImageActivity/initComponentValue()V
.inner class inner com/product/android/ui/activity/ShowImageActivity$2

.field final synthetic 'this$0' Lcom/product/android/ui/activity/ShowImageActivity;

.method <init>(Lcom/product/android/ui/activity/ShowImageActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/ShowImageActivity$2/this$0 Lcom/product/android/ui/activity/ShowImageActivity;
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity$2/this$0 Lcom/product/android/ui/activity/ShowImageActivity;
invokestatic com/product/android/ui/activity/ShowImageActivity/access$100(Lcom/product/android/ui/activity/ShowImageActivity;)Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/success(Ljava/lang/String;)V 1
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity$2/this$0 Lcom/product/android/ui/activity/ShowImageActivity;
invokestatic com/product/android/ui/activity/ShowImageActivity/access$100(Lcom/product/android/ui/activity/ShowImageActivity;)Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
aload 1
invokeinterface com/product/android/ui/imageHolder/DownloadListener/fail(Ljava/lang/String;)V 1
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingProgress(JJ)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity$2/this$0 Lcom/product/android/ui/activity/ShowImageActivity;
invokestatic com/product/android/ui/activity/ShowImageActivity/access$100(Lcom/product/android/ui/activity/ShowImageActivity;)Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/progressListener Lcom/product/android/ui/imageHolder/DownloadListener;
lload 1
lload 3
aload 0
getfield com/product/android/ui/activity/ShowImageActivity$2/this$0 Lcom/product/android/ui/activity/ShowImageActivity;
getfield com/product/android/ui/activity/ShowImageActivity/url Ljava/lang/String;
invokeinterface com/product/android/ui/imageHolder/DownloadListener/showProgress(JJLjava/lang/String;)V 5
return
.limit locals 5
.limit stack 6
.end method
