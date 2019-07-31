.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/util/GetImageUtil
.super java/lang/Object
.inner class inner com/nd/schoollife/ui/common/util/GetImageUtil$1
.inner class inner com/nd/schoollife/ui/common/util/GetImageUtil$2

.field public static final 'CAMERA_WITH_DATA' I = 3023


.field private static final 'CROP_PHOTO_WITH_DATA' I = 3024


.field private static final 'KEY_CURRENT_PHOTO_FILE' Ljava/lang/String; = "KEY_CURRENT_PHOTO_FILE"

.field private static final 'PHOTO_DIR' Ljava/io/File;

.field private static final 'PHOTO_PICKED_WITH_DATA' I = 3021


.field private static final 'TAG' Ljava/lang/String;

.field private 'context' Landroid/content/Context;

.field private 'cropImgUri' Landroid/net/Uri;

.field private 'mCurrentPhotoFile' Ljava/io/File;

.field private 'useCameraInLowBattery' Z

.field private 'useCameraWithoutSD' Z

.field private 'usePhotosWithoutSD' Z

.method static <clinit>()V
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/DCIM/Camera"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putstatic com/nd/schoollife/ui/common/util/GetImageUtil/PHOTO_DIR Ljava/io/File;
ldc com/nd/schoollife/ui/common/util/GetImageUtil
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/util/GetImageUtil/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/os/Bundle;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/util/GetImageUtil/cropImgUri Landroid/net/Uri;
aload 0
aload 1
putfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraWithoutSD Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/util/GetImageUtil/usePhotosWithoutSD Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraInLowBattery Z
aload 2
ifnull L0
aload 0
new java/io/File
dup
aload 2
ldc "KEY_CURRENT_PHOTO_FILE"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private getCropPhotoFileName()Ljava/lang/String;
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
astore 1
new java/text/SimpleDateFormat
dup
ldc "'CROPIMG'_yyyy-MM-dd-HH-mm-ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
aload 1
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aconst_null
astore 4
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_data"
aastore
aload 2
aload 3
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
aload 0
ifnull L7
aload 0
astore 4
L3:
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L7
L4:
aload 0
astore 4
L5:
aload 0
aload 0
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L6:
aload 0
ifnull L8
aload 0
invokeinterface android/database/Cursor/close()V 0
L8:
aload 1
areturn
L7:
aload 0
ifnull L9
aload 0
invokeinterface android/database/Cursor/close()V 0
L9:
aconst_null
areturn
L2:
astore 0
aload 4
ifnull L10
aload 4
invokeinterface android/database/Cursor/close()V 0
L10:
aload 0
athrow
.limit locals 5
.limit stack 6
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aconst_null
astore 3
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L0
iconst_1
istore 2
L1:
iload 2
ifeq L2
aload 0
aload 1
invokestatic android/provider/DocumentsContract/isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
ifeq L2
aload 1
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/isExternalStorageDocument(Landroid/net/Uri;)Z
ifeq L3
aload 1
invokestatic android/provider/DocumentsContract/getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
ldc "primary"
aload 0
iconst_0
aaload
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iconst_1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L4:
aload 3
areturn
L0:
iconst_0
istore 2
goto L1
L3:
aload 1
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/isDownloadsDocument(Landroid/net/Uri;)Z
ifeq L5
aload 1
invokestatic android/provider/DocumentsContract/getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 0
ldc "content://downloads/public_downloads"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokestatic android/content/ContentUris/withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
aconst_null
aconst_null
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
areturn
L5:
aload 1
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/isMediaDocument(Landroid/net/Uri;)Z
ifeq L4
aload 1
invokestatic android/provider/DocumentsContract/getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
aload 3
iconst_0
aaload
astore 4
aconst_null
astore 1
ldc "image"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
astore 1
L7:
aload 0
aload 1
ldc "_id=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 3
iconst_1
aaload
aastore
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
areturn
L6:
ldc "video"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
getstatic android/provider/MediaStore$Video$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
astore 1
goto L7
L8:
ldc "audio"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
getstatic android/provider/MediaStore$Audio$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
astore 1
goto L7
L2:
ldc "content"
aload 1
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
aload 1
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/isGooglePhotosUri(Landroid/net/Uri;)Z
ifeq L10
aload 1
invokevirtual android/net/Uri/getLastPathSegment()Ljava/lang/String;
areturn
L10:
aload 0
aload 1
aconst_null
aconst_null
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
areturn
L9:
ldc "file"
aload 1
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 1
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 8
.end method

.method private getPhotoFileName()Ljava/lang/String;
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/util/Date/getTime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
new android/content/Intent
dup
ldc "android.intent.action.GET_CONTENT"
aconst_null
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 0
aload 0
ldc "image/*"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 1
.limit stack 4
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "output"
aload 0
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private hasSDCard()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isBatteryLow()Z
iconst_0
istore 1
new android/content/IntentFilter
dup
ldc "android.intent.action.BATTERY_CHANGED"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
astore 2
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
aconst_null
aload 2
invokevirtual android/content/Context/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
astore 2
aload 2
ldc "level"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
bipush 100
imul
aload 2
ldc "scale"
bipush 100
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
idiv
bipush 10
if_icmpge L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
ldc "com.android.providers.downloads.documents"
aload 0
invokevirtual android/net/Uri/getAuthority()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
ldc "com.android.externalstorage.documents"
aload 0
invokevirtual android/net/Uri/getAuthority()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
ldc "com.google.android.apps.photos.content"
aload 0
invokevirtual android/net/Uri/getAuthority()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
ldc "com.android.providers.media.documents"
aload 0
invokevirtual android/net/Uri/getAuthority()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.catch java/io/FileNotFoundException from L0 to L1 using L2
aconst_null
astore 2
L0:
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 1
L1:
aload 1
invokestatic com/nd/schoollife/common/utils/common/FileUtil/decodeInputStreamAsBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
areturn
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 2
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public doCropPhoto(Landroid/net/Uri;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnonnull L0
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
aload 1
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
astore 2
aload 2
invokevirtual android/graphics/Bitmap/getWidth()I
bipush 110
if_icmplt L1
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
bipush 110
if_icmpge L4
L1:
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u56fe\u7247\u50cf\u7d20\u4e0d\u80fd\u5c0f\u4e8e110x110"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L3:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u65e0\u6cd5\u542f\u52a8\u76f8\u518c"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L4:
sipush 3024
aload 1
invokevirtual android/net/Uri/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
checkcast android/app/Activity
sipush 640
sipush 640
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoCropImageActivity(ILjava/lang/String;Landroid/app/Activity;II)V
L5:
return
.limit locals 3
.limit stack 5
.end method

.method public doPickPhotoFromGallery()V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/usePhotosWithoutSD Z
ifne L0
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/hasSDCard()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u8bf7\u63d2\u5165SD\u5361"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u4e3a\u4fdd\u8bc1\u5934\u50cf\u8d28\u91cf\uff0c\u5c06\u81ea\u52a8\u8fc7\u6ee4\u6389\u5c0f\u4e8e110*110\u50cf\u7d20\u7684\u56fe\u7247"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getPhotoPickIntent()Landroid/content/Intent;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
checkcast android/app/Activity
aload 1
sipush 3021
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u65e0\u6cd5\u542f\u52a8\u76f8\u518c"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public doTakePhoto()V
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraWithoutSD Z
ifne L0
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/hasSDCard()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u8bf7\u63d2\u5165SD\u5361"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraInLowBattery Z
ifne L1
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/isBatteryLow()Z
ifeq L1
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc "\u8b66\u544a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "\u7535\u91cf\u8fc7\u4f4e\uff0c\u662f\u5426\u7ee7\u7eed"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "\u786e\u5b9a"
new com/nd/schoollife/ui/common/util/GetImageUtil$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil$1/<init>(Lcom/nd/schoollife/ui/common/util/GetImageUtil;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "\u53d6\u6d88"
new com/nd/schoollife/ui/common/util/GetImageUtil$2
dup
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil$2/<init>(Lcom/nd/schoollife/ui/common/util/GetImageUtil;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L1:
aload 0
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/goToCamera()V
return
.limit locals 2
.limit stack 5
.end method

.method public getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
new android/content/Intent
dup
ldc "com.android.camera.action.CROP"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 1
ldc "image/*"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "crop"
ldc "true"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "aspectX"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "aspectY"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "outputX"
bipush 110
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "outputY"
bipush 110
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "scale"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "scaleUpIfNeeded"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "return-data"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "outputFormat"
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
invokevirtual android/graphics/Bitmap$CompressFormat/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getCropImgUri()Landroid/net/Uri;
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/cropImgUri Landroid/net/Uri;
areturn
.limit locals 1
.limit stack 1
.end method

.method public goToCamera()V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
L0:
getstatic com/nd/schoollife/ui/common/util/GetImageUtil/PHOTO_DIR Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
aload 0
new java/io/File
dup
getstatic com/nd/schoollife/ui/common/util/GetImageUtil/PHOTO_DIR Ljava/io/File;
aload 0
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/getPhotoFileName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
invokestatic com/nd/schoollife/ui/common/util/GetImageUtil/getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
checkcast android/app/Activity
aload 1
sipush 3023
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/context Landroid/content/Context;
ldc "\u6ca1\u6709\u76f8\u5173\u56fe\u7247"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 5
.end method

.method public onActivityResult(IILandroid/content/Intent;)Landroid/graphics/Bitmap;
iload 2
iconst_m1
if_icmpeq L0
aconst_null
areturn
L0:
iload 1
tableswitch 3021
L1
L2
L3
L4
default : L2
L2:
aconst_null
areturn
L1:
aload 0
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doCropPhoto(Landroid/net/Uri;)V
aconst_null
areturn
L3:
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L5
aload 0
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doCropPhoto(Landroid/net/Uri;)V
aconst_null
areturn
L5:
aload 3
ifnull L6
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
ifnull L6
aload 0
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doCropPhoto(Landroid/net/Uri;)V
aconst_null
areturn
L6:
getstatic com/nd/schoollife/ui/common/util/GetImageUtil/TAG Ljava/lang/String;
ldc "mCurrentPhotoFile null and data null"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/w(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L4:
aload 0
aload 3
ldc "mCropUri"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield com/nd/schoollife/ui/common/util/GetImageUtil/cropImgUri Landroid/net/Uri;
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/cropImgUri Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
ifnull L0
aload 1
ldc "KEY_CURRENT_PHOTO_FILE"
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil/mCurrentPhotoFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
aload 2
invokevirtual java/io/File/delete()Z
pop
L0:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 90
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/FileOutputStream/flush()V
aload 2
invokevirtual java/io/FileOutputStream/close()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
return
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method

.method public setUseCameraInLowBattery(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraInLowBattery Z
return
.limit locals 2
.limit stack 2
.end method

.method public setUseCameraWithoutSD(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/util/GetImageUtil/useCameraWithoutSD Z
return
.limit locals 2
.limit stack 2
.end method

.method public setUsePhotosWithoutSD(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/util/GetImageUtil/usePhotosWithoutSD Z
return
.limit locals 2
.limit stack 2
.end method
