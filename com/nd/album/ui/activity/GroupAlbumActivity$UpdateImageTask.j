.bytecode 50.0
.class synchronized com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class UpdateImageTask inner com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask outer com/nd/album/ui/activity/GroupAlbumActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/GroupAlbumActivity;

.method <init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch java/lang/OutOfMemoryError from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L1 to L5 using L2
.catch org/json/JSONException from L1 to L5 using L3
.catch java/lang/OutOfMemoryError from L1 to L5 using L4
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch java/lang/OutOfMemoryError from L6 to L7 using L4
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch org/json/JSONException from L7 to L8 using L3
.catch java/lang/OutOfMemoryError from L7 to L8 using L4
.catch com/common/android/utils/http/HttpException from L8 to L9 using L2
.catch org/json/JSONException from L8 to L9 using L3
.catch java/lang/OutOfMemoryError from L8 to L9 using L4
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch org/json/JSONException from L9 to L10 using L3
.catch java/lang/OutOfMemoryError from L9 to L10 using L4
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$700(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Landroid/graphics/Bitmap;
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/encode(Landroid/graphics/Bitmap;)[B
astore 2
aload 2
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMD5OfBytes([B)Ljava/lang/String;
astore 1
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/isExists(Ljava/lang/String;J)Z
ifeq L1
getstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
aload 1
aload 2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$800(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/nd/album/util/PhotoUpload/upoadGPhotoByte(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L5:
aload 2
ifnonnull L7
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
aload 2
ldc "extist"
invokevirtual org/json/JSONObject/optBoolean(Ljava/lang/String;)Z
ifeq L9
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 3
aload 3
aload 2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokevirtual com/product/android/commonInterface/album/Image/setGroupExistAlbumJsonObject(Lorg/json/JSONObject;J)V
aload 3
aload 1
invokevirtual com/product/android/commonInterface/album/Image/setFile_dna(Ljava/lang/String;)V
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 3
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$900(Lcom/nd/album/ui/activity/GroupAlbumActivity;Lcom/product/android/commonInterface/album/Image;)Z
pop
L8:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 3
aload 2
ldc "file_md5"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
aload 2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokevirtual com/product/android/commonInterface/album/Image/setGroupExistAlbumJsonObject(Lorg/json/JSONObject;J)V
aload 3
aload 1
invokevirtual com/product/android/commonInterface/album/Image/setFile_dna(Ljava/lang/String;)V
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 3
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$900(Lcom/nd/album/ui/activity/GroupAlbumActivity;Lcom/product/android/commonInterface/album/Image;)Z
pop
L10:
goto L8
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L11:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L11
L4:
astore 1
aload 1
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
goto L11
.limit locals 4
.limit stack 6
.end method

.method protected onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$1000(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 1
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
getstatic com/nd/album/R$string/upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
aload 1
getstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
getstatic com/nd/album/R$string/pic_exist I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
aload 1
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
getstatic com/nd/album/R$string/upload_pic_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$600(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/common/android/utils/task/genericTask/TaskResult
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 2
.limit stack 2
.end method
