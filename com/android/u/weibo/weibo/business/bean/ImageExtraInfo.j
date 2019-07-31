.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/ImageExtraInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field private 'mImageExt' Ljava/lang/String;

.field private 'mImageType' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public copyByImageInfo(Lcom/android/u/weibo/weibo/business/bean/WbImage;)V
aload 1
ifnull L0
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_ext Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageExt Ljava/lang/String;
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_type I
putfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageType I
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public getImageExt()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageExt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImageType()I
aload 0
getfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setImageExt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageExt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setImageType(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/business/bean/ImageExtraInfo/mImageType I
return
.limit locals 2
.limit stack 2
.end method
