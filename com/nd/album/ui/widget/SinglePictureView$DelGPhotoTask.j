.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private DelGPhotoTask inner com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask outer com/nd/album/ui/widget/SinglePictureView

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method private <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/album/ui/widget/SinglePictureView;Lcom/nd/album/ui/widget/SinglePictureView$1;)V
aload 0
aload 1
invokespecial com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L7
.catch org/json/JSONException from L5 to L6 using L8
.catch com/common/android/utils/http/HttpException from L9 to L10 using L7
.catch org/json/JSONException from L9 to L10 using L8
aload 1
iconst_0
aaload
astore 1
lconst_0
lstore 2
lconst_0
lstore 6
L0:
aload 1
ldc "pid"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getLong(Ljava/lang/String;)J
lstore 4
L1:
lload 4
lstore 2
L3:
aload 1
ldc "gid"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getLong(Ljava/lang/String;)J
lstore 8
L4:
lload 8
lstore 2
lload 4
lstore 6
lload 2
lstore 4
L11:
lload 4
lconst_0
lcmp
ifle L9
L5:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 4
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aconst_null
lload 6
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$300(Lcom/nd/album/ui/widget/SinglePictureView;)I
invokevirtual com/nd/album/com/AlbumCom/delGPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$400(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$400(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/deleteImage(JLjava/lang/String;)Z
pop
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
lload 6
lstore 4
lload 2
lstore 6
goto L11
L9:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L10:
aload 1
areturn
L7:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L8:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 10
.limit stack 5
.end method
