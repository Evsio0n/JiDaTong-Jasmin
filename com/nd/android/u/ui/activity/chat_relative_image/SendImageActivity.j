.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$3

.field private static final 'MAX_BITMAP_SIZE' I = 480


.field private static final 'SUCCESS' I = 0


.field private 'dimensionsText' Landroid/widget/TextView;

.field private 'gifDrawable' Lpl/droidsonroids/gif/GifDrawable;

.field private 'gifImageView' Lpl/droidsonroids/gif/GifImageView;

.field private 'imgView' Landroid/widget/ImageView;

.field private 'labelText' Landroid/widget/TextView;

.field private 'mCursor' Landroid/database/Cursor;

.field private 'mDialog' Landroid/app/ProgressDialog;

.field private 'mFile' Ljava/io/File;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mOnClickListener' Landroid/view/View$OnClickListener;

.field private 'mOriSizeString' Ljava/lang/String;

.field private 'mPostUri' Landroid/net/Uri;

.field private 'mThumbnail' Landroid/graphics/Bitmap;

.field private 'mThumbnailSize' I

.field private 'mThumbnailTempFile' Ljava/io/File;

.field private 'mbIsThumbnail' Z

.field private 'nameText' Landroid/widget/TextView;

.field private 'sizeText' Landroid/widget/TextView;

.field private 'tvCompress' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailSize I
aload 0
ldc ""
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mOriSizeString Ljava/lang/String;
aload 0
new com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mOnClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)Z
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/setImage()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/packageBitmap()V
return
.limit locals 1
.limit stack 1
.end method

.method private getBitmapFromUri()Z
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
.catch java/lang/OutOfMemoryError from L3 to L5 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ldc "content"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
L10:
iconst_0
ireturn
L9:
aload 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
L11:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
ifnull L10
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L10
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
sipush 480
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/compressBitmap(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
ifeq L5
aload 0
new java/io/File
dup
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getFilesDir()Ljava/io/File;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailTempFile Ljava/io/File;
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailTempFile Ljava/io/File;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
invokestatic com/product/android/utils/FileHelper/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
L3:
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailTempFile Ljava/io/File;
invokevirtual java/io/File/length()J
l2i
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailSize I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailTempFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L5:
iconst_1
ireturn
L8:
aload 0
new java/io/File
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
goto L11
L4:
astore 1
L6:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L7:
goto L3
L2:
astore 1
aload 0
getstatic com/nd/android/u/chat/R$string/low_memory I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 1
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method private packageBitmap()V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L8
.catch java/lang/Exception from L11 to L12 using L8
L0:
ldc "upload"
iconst_0
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
astore 3
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ldc "content"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
astore 2
L14:
aload 2
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifeq L15
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
iconst_0
putfield android/os/Message/what I
aload 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
astore 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mHandler Landroid/os/Handler;
getstatic com/nd/android/u/chat/R$string/create_new_file I
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 2
invokevirtual java/io/IOException/printStackTrace()V
return
L13:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 2
goto L14
L15:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
ifeq L6
L3:
aload 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
invokestatic com/product/android/utils/FileHelper/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
L4:
aload 3
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
iconst_0
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mHandler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L5:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L4
L6:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
istore 1
L7:
iload 1
ifeq L11
L9:
aload 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
iload 1
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invokestatic com/product/android/utils/FileHelper/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
L10:
goto L4
L8:
astore 2
aload 3
invokevirtual java/io/File/deleteOnExit()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
aload 3
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
L11:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
aload 3
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
L12:
goto L4
.limit locals 4
.limit stack 3
.end method

.method private sendImage()V
aload 0
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/in_progress I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/waiting I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mDialog Landroid/app/ProgressDialog;
new java/lang/Thread
dup
new com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity$3/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SendImageActivity;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method private setImage()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/nameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/dimensionsText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/sizeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnailSize I
i2l
invokestatic com/common/android/utils/FileUtils/getFileLengthUnitKB(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/dimensionsText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mOriSizeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/sizeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mFile Ljava/io/File;
invokevirtual java/io/File/length()J
invokestatic com/common/android/utils/FileUtils/getFileLengthUnitKB(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
iconst_0
istore 3
iload 3
istore 2
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/image_look I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L1
iload 3
istore 2
aload 1
ldc "uri"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "uri"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
L1:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/initEvent()V
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected compressBitmap(Ljava/lang/String;I)V
iconst_1
istore 3
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 6
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mOriSizeString Ljava/lang/String;
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
imul
i2l
lstore 4
L0:
lload 4
ldc2_w 230400L
lcmp
ifle L1
aload 6
aload 6
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
iadd
putfield android/graphics/BitmapFactory$Options/inSampleSize I
lload 4
iconst_2
lshr
lstore 4
goto L0
L1:
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 1
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
aload 1
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
istore 2
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
iload 2
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
aload 6
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
if_icmple L2
L3:
aload 0
iload 3
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
return
L2:
iconst_0
istore 3
goto L3
.limit locals 7
.limit stack 4
.end method

.method protected getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
ifnonnull L0
aload 0
aload 0
aload 1
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_data"
aastore
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
istore 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 7
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/image_look_img I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/imgView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/gifImageView I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast pl/droidsonroids/gif/GifImageView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/gifImageView Lpl/droidsonroids/gif/GifImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/image_look_text_dimensions I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/dimensionsText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/image_look_text_size I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/sizeText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/image_look_text_name I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/nameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/image_look_text_lable I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/labelText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvCompress I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/send I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/labelText Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/you_will_send_pic I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/comfirm_to_send_pic I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mbIsThumbnail Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
iconst_0
iconst_0
getstatic com/nd/android/u/chat/R$drawable/btn_check_on I
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
L4:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ldc "content"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
astore 1
L0:
aload 0
new pl/droidsonroids/gif/GifDrawable
dup
aload 1
invokespecial pl/droidsonroids/gif/GifDrawable/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/gifDrawable Lpl/droidsonroids/gif/GifDrawable;
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/gifDrawable Lpl/droidsonroids/gif/GifDrawable;
ifnonnull L6
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/imgView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L7:
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/setImage()V
return
L3:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L4
L5:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mPostUri Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 1
goto L0
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
L6:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/gifImageView Lpl/droidsonroids/gif/GifImageView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/gifDrawable Lpl/droidsonroids/gif/GifDrawable;
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L7
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/tvCompress Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/close()V 0
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mCursor Landroid/database/Cursor;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/getBitmapFromUri()Z
ifne L0
getstatic com/nd/android/u/chat/R$string/image_sendimageactivity I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/finish()V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/mThumbnail Landroid/graphics/Bitmap;
ifnonnull L1
getstatic com/nd/android/u/chat/R$string/image_sendimageactivity I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/finish()V
return
L1:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/rightBtnHandle()V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity/sendImage()V
return
.limit locals 1
.limit stack 1
.end method
