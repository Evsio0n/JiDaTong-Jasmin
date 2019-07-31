.bytecode 50.0
.class public synchronized com/nd/album/business/PickedCameraPhoto
.super java/lang/Object
.inner class public static abstract interface CropListener inner com/nd/album/business/PickedCameraPhoto$CropListener outer com/nd/album/business/PickedCameraPhoto

.field public static final 'CAMERA_PICKED_WITH_DATA' I = 1


.field public static final 'CROP_PHOTO_WITH_DATA' I = 3


.field public static final 'PHOTO_PICKED_WITH_DATA' I = 2


.field private static final 'TAG' Ljava/lang/String; = "PickedCameraPhoto"

.field private 'camerapath' Ljava/lang/String;

.field private 'mContext' Landroid/app/Activity;

.field private 'mListener' Lcom/nd/album/business/PickedCameraPhoto$CropListener;

.field private 'mTempCameraFile' Ljava/io/File;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
aload 0
aload 1
putfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/app/Activity;Lcom/nd/album/business/PickedCameraPhoto$CropListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
aload 0
aload 1
putfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/album/business/PickedCameraPhoto/mListener Lcom/nd/album/business/PickedCameraPhoto$CropListener;
return
.limit locals 3
.limit stack 2
.end method

.method public deleTempCameraFile()V
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
ifnull L0
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCropImageIntent(Landroid/net/Uri;II)Landroid/content/Intent;
new android/content/Intent
dup
ldc "com.android.camera.action.CROP"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
aload 1
ldc "image/*"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "crop"
ldc "true"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "aspectX"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "aspectY"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "outputX"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "outputY"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "return-data"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public onActivityResult(ILandroid/content/Intent;)Landroid/net/Uri;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch all from L4 to L5 using L6
.catch java/lang/Exception from L7 to L8 using L2
.catch all from L9 to L10 using L6
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L18 to L19 using L20
.catch java/lang/Exception from L21 to L22 using L20
.catch all from L23 to L24 using L25
.catch java/lang/Exception from L26 to L27 using L20
.catch java/lang/Exception from L27 to L28 using L20
.catch java/lang/Exception from L29 to L30 using L20
.catch java/lang/Exception from L31 to L32 using L20
.catch all from L33 to L34 using L25
.catch java/lang/Exception from L35 to L36 using L20
.catch java/lang/Exception from L36 to L20 using L20
.catch java/lang/Exception from L37 to L38 using L20
.catch java/lang/Exception from L39 to L40 using L20
.catch java/lang/Exception from L41 to L42 using L43
.catch all from L41 to L42 using L44
.catch java/lang/Exception from L45 to L46 using L43
.catch all from L45 to L46 using L44
.catch all from L47 to L48 using L44
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
ifnonnull L49
aconst_null
astore 2
L50:
aload 2
areturn
L49:
iload 1
iconst_1
if_icmpne L51
L0:
aload 0
new java/io/File
dup
aload 0
getfield com/nd/album/business/PickedCameraPhoto/camerapath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L12
aload 2
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
ifnonnull L3
L1:
aconst_null
areturn
L3:
aload 2
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
astore 2
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 2
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
L4:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 3
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
L5:
iload 1
ifge L9
aconst_null
astore 2
aload 3
ifnull L50
L7:
aload 3
invokeinterface android/database/Cursor/close()V 0
L8:
aconst_null
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aconst_null
areturn
L9:
new java/io/File
dup
aload 3
iload 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
L10:
aload 3
ifnull L12
L11:
aload 3
invokeinterface android/database/Cursor/close()V 0
L12:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L16
L13:
aconst_null
areturn
L6:
astore 2
aload 3
ifnull L15
L14:
aload 3
invokeinterface android/database/Cursor/close()V 0
L15:
aload 2
athrow
L16:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/scaleAndRotateImage(Ljava/lang/String;)V
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
L17:
aload 2
areturn
L51:
iload 1
iconst_2
if_icmpne L52
L18:
aload 2
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
astore 3
L19:
aload 3
astore 2
aload 3
ifnull L50
L21:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 3
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "_data"
aastore
dup
iconst_2
ldc "_size"
aastore
invokestatic android/provider/MediaStore$Images$Media/query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
L22:
aload 4
ifnull L33
L23:
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L33
aload 4
aload 4
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
L24:
aload 4
ifnull L27
L26:
aload 4
invokeinterface android/database/Cursor/close()V 0
L27:
ldc "PickedCameraPhoto"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "photo path: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
aload 4
invokevirtual java/io/File/exists()Z
ifeq L39
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
invokestatic com/common/android/utils/StringUtils/getGUID()Ljava/lang/String;
astore 5
aload 2
invokestatic com/product/android/utils/FileHelper/getTempPath(Ljava/lang/StringBuilder;)I
istore 1
L28:
iload 1
ifne L37
L29:
aload 2
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokestatic com/common/android/utils/FileUtils/getFileExtensionName(Ljava/io/File;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/io/File
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
L30:
aload 3
astore 2
L31:
aload 4
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
ifeq L50
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/scaleAndRotateImage(Ljava/lang/String;)V
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
L32:
aload 2
areturn
L33:
aload 3
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 2
L34:
goto L24
L25:
astore 2
aload 4
ifnull L36
L35:
aload 4
invokeinterface android/database/Cursor/close()V 0
L36:
aload 2
athrow
L20:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aconst_null
areturn
L37:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L38:
aconst_null
areturn
L39:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
getstatic com/nd/album/R$string/please_select_pic_file I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L40:
aconst_null
areturn
L52:
iload 1
iconst_3
if_icmpne L53
L41:
aload 2
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
L42:
aload 2
ifnull L46
L45:
aload 2
ldc "data"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/graphics/Bitmap
astore 2
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mListener Lcom/nd/album/business/PickedCameraPhoto$CropListener;
ifnull L46
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mListener Lcom/nd/album/business/PickedCameraPhoto$CropListener;
aload 2
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokeinterface com/nd/album/business/PickedCameraPhoto$CropListener/cropImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V 2
L46:
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
L54:
aconst_null
areturn
L43:
astore 2
L47:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
L48:
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
goto L54
L44:
astore 2
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 2
athrow
L53:
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aconst_null
areturn
.limit locals 6
.limit stack 6
.end method

.method public openImageCaptureMenu()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
ifnonnull L7
return
L7:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
getstatic com/nd/album/R$string/no_sdcard_for_upload_pic I
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
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/business/PickedCameraPhoto/camerapath Ljava/lang/String;
aload 0
new java/io/File
dup
aload 0
getfield com/nd/album/business/PickedCameraPhoto/camerapath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
ldc "PickedCameraPhoto"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "path:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/album/business/PickedCameraPhoto/camerapath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mTempCameraFile Ljava/io/File;
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
aload 3
ldc "android.intent.extra.videoQuality"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
aload 3
iconst_1
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L4:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
return
L5:
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
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
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
ifnonnull L3
return
L3:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
getstatic com/nd/album/R$string/no_sdcard_for_upload_pic I
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
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
aload 1
iconst_2
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
aload 0
getfield com/nd/album/business/PickedCameraPhoto/mContext Landroid/app/Activity;
getstatic com/nd/album/R$string/system_gallery_err I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 3
.end method
