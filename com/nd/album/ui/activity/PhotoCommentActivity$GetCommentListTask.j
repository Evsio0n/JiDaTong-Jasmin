.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetCommentListTask inner com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask outer com/nd/album/ui/activity/PhotoCommentActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method private <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 1
iconst_0
aaload
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1200(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/common/android/utils/task/genericTask/TaskParams;)V
aload 0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
putfield com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/paraData Ljava/lang/Object;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/paraData Ljava/lang/Object;
ifnull L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
