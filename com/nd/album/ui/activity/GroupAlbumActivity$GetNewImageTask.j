.bytecode 50.0
.class synchronized com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class GetNewImageTask inner com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask outer com/nd/album/ui/activity/GroupAlbumActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/GroupAlbumActivity;

.method <init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$300(Lcom/nd/album/ui/activity/GroupAlbumActivity;)I
invokevirtual com/nd/album/com/AlbumCom/getFirstGAlbumID(Ljava/lang/String;I)J
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$102(Lcom/nd/album/ui/activity/GroupAlbumActivity;J)J
pop2
ldc2_w -1L
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
lcmp
ifne L1
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/getMaxUpdateTime(J)J
lstore 2
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aconst_null
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aconst_null
aconst_null
iconst_1
invokevirtual com/nd/album/com/AlbumCom/getGPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
astore 1
L3:
aload 1
ifnull L5
L4:
aload 1
invokevirtual java/util/ArrayList/size()I
ifle L5
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 1
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/insertImages(Ljava/util/List;)J
pop2
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 1
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$1100(Lcom/nd/album/ui/activity/GroupAlbumActivity;Ljava/util/List;)V
aload 1
invokeinterface java/util/List/size()I 0
ifle L6
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
aload 1
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/deleteImages(JLjava/util/List;)J
pop2
L6:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$500(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
L7:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L7
.limit locals 4
.limit stack 8
.end method

.method protected onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$600(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/common/android/utils/task/genericTask/TaskResult
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 2
.limit stack 2
.end method
