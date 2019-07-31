.bytecode 50.0
.class synchronized com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class LoadPictureTask inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask outer com/android/u/weibo/cropimage/ui/activity/CropImageActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;

.method public <init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOriginalUri Landroid/net/Uri;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$300(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$102(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$100(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
ifnull L0
new java/io/File
dup
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOriginalUri Landroid/net/Uri;
invokestatic com/common/android/utils/ImageUtils/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
iconst_0
istore 2
aload 1
ifnull L2
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 2
L2:
iload 2
ifle L1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$100(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$102(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
L1:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$200(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$100(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$000(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)V
return
.limit locals 1
.limit stack 2
.end method
