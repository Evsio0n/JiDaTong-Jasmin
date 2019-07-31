.bytecode 50.0
.class synchronized com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class ProcessPictureTask inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask outer com/android/u/weibo/cropimage/ui/activity/CropImageActivity

.field private final 'BITMAP_EMPTY' I

.field final synthetic 'this$0' Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;

.field private 'uri' Landroid/net/Uri;

.method public <init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
iconst_m1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/BITMAP_EMPTY I
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
iconst_m1
iload 1
if_icmpne L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/pic_crop_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$400(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnonnull L0
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
aload 2
astore 1
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$500(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
if_icmpeq L1
aload 2
astore 1
aload 2
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$600(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
if_icmpeq L1
aload 2
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$500(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$600(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
invokestatic com/common/android/ui/gif/BitmapToolkit/zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 1
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
L1:
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/mContext Landroid/content/Context;
aload 1
invokestatic com/android/u/weibo/cropimage/business/PortraitModify/insertImageToSD(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/uri Landroid/net/Uri;
aload 1
ifnull L2
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L2
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L2:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "mCropUri"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/uri Landroid/net/Uri;
invokevirtual android/net/Uri/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
iconst_m1
aload 1
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method
