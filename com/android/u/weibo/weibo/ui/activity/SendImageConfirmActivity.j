.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity
.super android/app/Activity
.inner class inner com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1

.field private static final 'MAX_BITMAP_SIZE' I = 480


.field private 'ivPostPic' Landroid/widget/ImageView;

.field private 'mFile' Ljava/io/File;

.field private 'mOnClickListener' Landroid/view/View$OnClickListener;

.field private 'mOriSizeString' Ljava/lang/String;

.field private 'mPostPath' Ljava/lang/String;

.field private 'mThumbnail' Landroid/graphics/Bitmap;

.field private 'rightBtn' Landroid/widget/Button;

.field private 'titleText' Landroid/widget/TextView;

.field private 'tvDimensions' Landroid/widget/TextView;

.field private 'tvPicName' Landroid/widget/TextView;

.field private 'tvSendHint' Landroid/widget/TextView;

.field private 'tvSize' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc ""
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOriSizeString Ljava/lang/String;
aload 0
new com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOnClickListener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getBitmapFromUri()Z
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
aload 0
new java/io/File
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L0
L3:
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/compressBitmap(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/ivPostPic Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mThumbnail Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L1:
iconst_1
ireturn
L2:
astore 1
aload 0
getstatic com/android/u/weibo/R$string/low_memory I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 1
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method private initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/image_look_img I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/ivPostPic Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/image_look_text_dimensions I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvDimensions Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/image_look_text_size I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvSize Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/image_look_text_name I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvPicName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_btn_right I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/rightBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_text_title I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvSendHint I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvSendHint Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private initComponentValue()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/getBitmapFromUri()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mThumbnail Landroid/graphics/Bitmap;
ifnonnull L1
L0:
getstatic com/android/u/weibo/R$string/send_image_confirm_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/finish()V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/rightBtn Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/send I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/titleText Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/send_image_confirm I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvPicName Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvDimensions Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOriSizeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvSize Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mFile Ljava/io/File;
invokevirtual java/io/File/length()J
l2d
iconst_1
invokestatic com/common/android/utils/FormatUtils/formatNumber(DI)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/tvSendHint Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/fullview_send_hint I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/getString(I)Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/rightBtn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/header_btn_left I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected compressBitmap(Ljava/lang/String;)V
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 5
aload 5
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 5
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
aload 5
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
getfield android/graphics/BitmapFactory$Options/outWidth I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield android/graphics/BitmapFactory$Options/outHeight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mOriSizeString Ljava/lang/String;
aload 5
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 5
getfield android/graphics/BitmapFactory$Options/outHeight I
imul
i2l
lstore 3
L0:
lload 3
ldc2_w 230400L
lcmp
ifle L1
aload 5
aload 5
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
iadd
putfield android/graphics/BitmapFactory$Options/inSampleSize I
lload 3
iconst_2
lshr
lstore 3
goto L0
L1:
aload 5
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 1
aload 5
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mThumbnail Landroid/graphics/Bitmap;
aload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 2
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mThumbnail Landroid/graphics/Bitmap;
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mThumbnail Landroid/graphics/Bitmap;
return
.limit locals 6
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/send_image_confrim I
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/setContentView(I)V
aload 1
ifnonnull L0
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/getIntent()Landroid/content/Intent;
ldc "path"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
ifnonnull L2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/finish()V
return
L0:
aload 0
aload 1
ldc "path"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
goto L1
L2:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/initComponent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/initEvent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/initComponentValue()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "path"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/mPostPath Ljava/lang/String;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 3
.end method
