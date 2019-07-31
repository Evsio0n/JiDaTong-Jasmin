.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$LikeTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private LikeTask inner com/nd/album/ui/activity/PhotoCommentActivity$LikeTask outer com/nd/album/ui/activity/PhotoCommentActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method private <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
ifne L0
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual com/nd/album/com/PraiseCom/praisePic(J)Z
istore 4
L1:
iload 4
ifeq L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
istore 2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
istore 3
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
iconst_1
iload 2
isub
invokevirtual com/product/android/commonInterface/album/Image/setMyPraise(I)V
iload 2
ifne L3
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
iload 3
iconst_1
iadd
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
L4:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual com/nd/album/com/PraiseCom/delPraisePic(J)Z
istore 4
goto L1
L3:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
iload 3
iconst_1
isub
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
goto L4
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 3
.end method
