.bytecode 50.0
.class synchronized com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class GetGAlbumTask inner com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask outer com/nd/album/ui/activity/GroupAlbumActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/GroupAlbumActivity;

.method <init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L1 to L4 using L2
.catch com/common/android/utils/http/HttpException from L1 to L4 using L3
.catch org/json/JSONException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$300(Lcom/nd/album/ui/activity/GroupAlbumActivity;)I
invokevirtual com/nd/album/com/AlbumCom/getFirstGAlbumID(Ljava/lang/String;I)J
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$102(Lcom/nd/album/ui/activity/GroupAlbumActivity;J)J
pop2
ldc2_w -1L
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
lcmp
ifne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create default album for group"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
ldc "default_group_album"
aload 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/album/com/AlbumCom/addGAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$102(Lcom/nd/album/ui/activity/GroupAlbumActivity;J)J
pop2
L1:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$500(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
L4:
aconst_null
areturn
L5:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
iconst_1
invokevirtual com/nd/album/com/AlbumCom/getGPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$402(Lcom/nd/album/ui/activity/GroupAlbumActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$400(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Ljava/util/ArrayList;
ifnull L1
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$400(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Ljava/util/ArrayList;
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/insertImages(Ljava/util/List;)J
pop2
L6:
goto L1
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 9
.end method

.method protected onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$600(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/common/android/utils/task/genericTask/TaskResult
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 2
.limit stack 2
.end method
