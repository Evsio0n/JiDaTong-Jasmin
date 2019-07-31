.bytecode 50.0
.class public synchronized com/android/u/weibo/cropimage/business/PortraitModify
.super java/lang/Object
.inner class public static abstract interface OnActivityListener inner com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener outer com/android/u/weibo/cropimage/business/PortraitModify

.field public static final 'CAMERA_PICKED_WITH_DATA' I = 1


.field public static final 'CROP_PHOTO_WITH_DATA' I = 3


.field private static final 'MAX_RATE_FOR_SHOW' D = 2.5D


.field private static final 'MAX_SIZE_FOR_SHOWAVATAR' I = 1920


.field public static final 'PHOTO_PICKED_WITH_DATA' I = 2


.field private static final 'SIZE_FOR_MY_AVATAR' I = 640


.field public static final 'TAG' Ljava/lang/String; = "LSM"

.field private 'mContext' Landroid/app/Activity;

.field private 'mListener' Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;

.field private 'mOriginFile' Ljava/io/File;

.method public <init>(Landroid/app/Activity;Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
aload 0
aload 1
putfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 0
aload 2
putfield com/android/u/weibo/cropimage/business/PortraitModify/mListener Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
new java/io/File
dup
aload 3
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
return
L0:
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
return
.limit locals 4
.limit stack 4
.end method

.method private getCropImageIntent(Landroid/app/Activity;Landroid/net/Uri;II)Landroid/content/Intent;
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 1
ldc com/android/u/weibo/cropimage/ui/activity/CropImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 5
ldc "outputX"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "outputY"
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "mCropUri"
aload 2
invokevirtual android/net/Uri/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
areturn
.limit locals 6
.limit stack 3
.end method

.method public static insertImageToSD(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
aconst_null
astore 3
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "LSM"
ldc "SD\u5361\u4e0d\u5b58\u5728\u6216\u4e0d\u53ef\u5199"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/DCIM/camera/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd_HHmmssSSS"
getstatic java/util/Locale/CHINA Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
astore 0
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
aload 5
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 4
aload 5
aload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/saveBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
istore 2
aload 1
ifnull L1
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L1
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L1:
aload 3
astore 0
iload 2
ifeq L2
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 3
astore 0
aload 1
ifnull L2
aload 3
astore 0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L2
aload 1
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 0
L2:
aload 0
areturn
.limit locals 6
.limit stack 4
.end method

.method public getOriginFileAbsolutePath()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
ifnull L0
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public myOnActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
iconst_m1
iload 2
if_icmpne L4
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mListener Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;
ifnull L4
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
ifnonnull L5
L4:
return
L5:
iconst_1
iload 1
if_icmpeq L6
iconst_2
iload 1
if_icmpne L7
L6:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
ifnull L8
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L9
L8:
aload 3
ifnull L4
L0:
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
ifnull L4
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
astore 3
aload 0
new java/io/File
dup
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 3
invokestatic com/common/android/utils/ImageUtils/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
ifnull L1
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L9
L1:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/please_select_pic_file I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L3:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
L9:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 3
aload 0
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 3
sipush 640
sipush 640
invokespecial com/android/u/weibo/cropimage/business/PortraitModify/getCropImageIntent(Landroid/app/Activity;Landroid/net/Uri;II)Landroid/content/Intent;
astore 3
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 3
iconst_3
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L7:
iconst_3
iload 1
if_icmpne L4
aload 3
ldc "mCropUri"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
sipush 1920
ldc2_w 2.5D
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/decodeSampledBitmapFromFile(Ljava/lang/String;ID)Landroid/graphics/Bitmap;
astore 4
aload 4
ifnonnull L10
aload 5
astore 4
L11:
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mListener Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;
aload 5
aload 4
invokeinterface com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener/succeedChanging(Ljava/lang/String;Ljava/lang/String;)V 2
return
L10:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 1
aload 4
astore 3
iload 1
ifle L12
aload 4
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 3
L12:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 3
invokestatic com/android/u/weibo/cropimage/business/PortraitModify/insertImageToSD(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
invokevirtual android/net/Uri/toString()Ljava/lang/String;
astore 6
aload 6
astore 4
aload 3
ifnull L11
aload 6
astore 4
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L11
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
aload 6
astore 4
goto L11
.limit locals 7
.limit stack 5
.end method

.method public openImageCaptureMenu()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
ifnonnull L7
L8:
return
L7:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/sdcard_not_found I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
invokestatic com/product/android/utils/FileHelper/getTempPath(Ljava/lang/StringBuilder;)I
istore 1
L1:
iload 1
ifne L5
L3:
aload 2
invokestatic com/common/android/utils/StringUtils/getGUID()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/io/File
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
ifnull L8
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "output"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 3
iconst_1
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L4:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
L5:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L6:
return
.limit locals 4
.limit stack 4
.end method

.method public openPhotoLibraryMenu()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
ifnonnull L3
return
L3:
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/PortraitModify/mOriginFile Ljava/io/File;
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/sdcard_not_found I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
new android/content/Intent
dup
ldc "android.intent.action.PICK"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
ldc "vnd.android.cursor.dir/image"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
aload 1
iconst_2
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
aload 0
getfield com/android/u/weibo/cropimage/business/PortraitModify/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/photolibrary_not_found I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method
