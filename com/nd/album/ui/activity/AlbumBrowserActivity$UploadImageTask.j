.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private UploadImageTask inner com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask outer com/nd/album/ui/activity/AlbumBrowserActivity

.field private 'mImageName' Ljava/lang/String;

.field private 'mMyAvatarBig' Landroid/graphics/Bitmap;

.field private 'mParamIntent' Landroid/content/Intent;

.field private 'mRequestCode' I

.field public 'sJfCode' I

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumBrowserActivity;

.field public 'zpCode' I

.method public <init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;ILandroid/content/Intent;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/sJfCode I
aload 0
iconst_0
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/zpCode I
aload 0
aconst_null
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
aload 0
iload 2
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mRequestCode I
aload 0
aload 3
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mParamIntent Landroid/content/Intent;
return
.limit locals 4
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L7
.catch org/json/JSONException from L5 to L6 using L8
.catch java/lang/OutOfMemoryError from L5 to L6 using L9
.catch com/common/android/utils/http/HttpException from L10 to L11 using L7
.catch org/json/JSONException from L10 to L11 using L8
.catch java/lang/OutOfMemoryError from L10 to L11 using L9
.catch com/common/android/utils/http/HttpException from L12 to L13 using L7
.catch org/json/JSONException from L12 to L13 using L8
.catch java/lang/OutOfMemoryError from L12 to L13 using L9
.catch com/common/android/utils/http/HttpException from L13 to L14 using L7
.catch org/json/JSONException from L13 to L14 using L8
.catch java/lang/OutOfMemoryError from L13 to L14 using L9
.catch com/common/android/utils/http/HttpException from L15 to L16 using L7
.catch org/json/JSONException from L15 to L16 using L8
.catch java/lang/OutOfMemoryError from L15 to L16 using L9
.catch com/common/android/utils/http/HttpException from L17 to L18 using L7
.catch org/json/JSONException from L17 to L18 using L8
.catch java/lang/OutOfMemoryError from L17 to L18 using L9
.catch com/common/android/utils/http/HttpException from L19 to L20 using L7
.catch org/json/JSONException from L19 to L20 using L8
.catch java/lang/OutOfMemoryError from L19 to L20 using L9
.catch com/common/android/utils/http/HttpException from L21 to L22 using L7
.catch org/json/JSONException from L21 to L22 using L8
.catch java/lang/OutOfMemoryError from L21 to L22 using L9
.catch com/common/android/utils/http/HttpException from L22 to L23 using L7
.catch org/json/JSONException from L22 to L23 using L8
.catch java/lang/OutOfMemoryError from L22 to L23 using L9
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/business/PickedCameraPhoto;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mRequestCode I
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mParamIntent Landroid/content/Intent;
invokevirtual com/nd/album/business/PickedCameraPhoto/onActivityResult(ILandroid/content/Intent;)Landroid/net/Uri;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 1
aload 0
aload 1
sipush 1200
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
ifnonnull L4
aload 0
aload 1
sipush 600
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
L4:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
ifnull L24
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/utils/TimeUtils/generateLong()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mImageName Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnonnull L25
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 1
athrow
L24:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L25:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
ifnull L26
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
getfield com/nd/album/bean/AlbumInfo/mAlbumId J
lstore 4
L27:
lload 4
lstore 6
lload 4
lconst_0
lcmp
ifne L13
L5:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual com/nd/album/com/AlbumCom/getDefaultAlbumId(J)J
lstore 6
L6:
lload 6
lconst_0
lcmp
ifne L12
L10:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L11:
aload 1
areturn
L26:
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokevirtual com/nd/album/business/AlbumManager/getAlbumIdFormSharePf(Landroid/content/Context;)J
lstore 4
goto L27
L12:
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
lload 6
invokevirtual com/nd/album/business/AlbumManager/saveAlbumIdToSharePf(Landroid/content/Context;J)V
L13:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mMyAvatarBig Landroid/graphics/Bitmap;
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/encode(Landroid/graphics/Bitmap;)[B
astore 1
aload 1
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMD5OfBytes([B)Ljava/lang/String;
astore 8
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
lload 6
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/isExists(Ljava/lang/String;JJ)Z
ifeq L14
aload 0
ldc "1"
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L14:
iconst_0
istore 3
iload 3
istore 2
L15:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
ifnull L19
L16:
iload 3
istore 2
L17:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
invokevirtual com/nd/album/bean/AlbumInfo/isFullViewAlbum()Z
ifeq L19
L18:
iconst_1
istore 2
L19:
aload 8
aload 1
lload 6
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/mImageName Ljava/lang/String;
iload 2
invokestatic com/nd/album/util/PhotoUpload/upoadPhotoByte(Ljava/lang/String;[BJLjava/lang/String;I)Lorg/json/JSONObject;
astore 1
L20:
aload 1
ifnull L28
L21:
aload 1
ldc "exist"
invokevirtual org/json/JSONObject/optBoolean(Ljava/lang/String;)Z
ifeq L22
aload 0
ldc "1"
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/message Ljava/lang/String;
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 8
aload 8
aload 1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
lload 6
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;JJ)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 8
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1200(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Lcom/product/android/commonInterface/album/Image;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L22:
aload 0
aload 1
ldc "jifen_code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/sJfCode I
aload 0
aload 1
ldc "zipai_code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/zpCode I
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 8
aload 8
aload 1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
lload 6
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;JJ)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 8
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1200(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Lcom/product/android/commonInterface/album/Image;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L23:
aload 1
areturn
L7:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L28:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L8:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L28
L9:
astore 1
aload 1
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
goto L28
.limit locals 9
.limit stack 6
.end method
