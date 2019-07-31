.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/activity/PhotoCommentActivity
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$4

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 1
checkcast com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask
getfield com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/info Lcom/nd/album/bean/Comment;
astore 1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
ifnonnull L1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1102(Lcom/nd/album/ui/activity/PhotoCommentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
iconst_0
aload 1
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/setCommentList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1300(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
ldc ""
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
invokevirtual com/product/android/commonInterface/album/Image/setCommentcnt(I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$900(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
getstatic com/nd/album/R$string/send_comment_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$500(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$4/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
getstatic com/nd/album/R$string/send_comment_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method
