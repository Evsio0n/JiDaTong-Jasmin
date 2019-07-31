.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SendCommentTask inner com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask outer com/nd/album/ui/activity/PhotoCommentActivity

.field public 'info' Lcom/nd/album/bean/Comment;

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method private <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
new com/nd/album/com/CommentCom
dup
invokespecial com/nd/album/com/CommentCom/<init>()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1300(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/nd/album/com/CommentCom/postComment(JLjava/lang/String;)Lcom/nd/album/bean/Comment;
putfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/info Lcom/nd/album/bean/Comment;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/info Lcom/nd/album/bean/Comment;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
iconst_1
iadd
invokevirtual com/product/android/commonInterface/album/Image/setCommentcnt(I)V
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 5
.end method
