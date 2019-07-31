.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/PictureHolderForWeibo
.super com/product/android/ui/imageHolder/Picture

.field public 'image_ext' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/imageHolder/Picture/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isGif()Z
aload 0
getfield com/android/u/weibo/weibo/utils/PictureHolderForWeibo/image_ext Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/PictureHolderForWeibo/url Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method
