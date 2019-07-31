.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/activity/PhotoCommentActivity
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$3

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
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
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof java/util/List
ifeq L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$800(Lcom/nd/album/ui/activity/PhotoCommentActivity;)I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$900(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
astore 1
aload 1
invokeinterface java/util/List/size()I 0
iconst_5
if_icmpge L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
iconst_1
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$102(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)Z
pop
L3:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
ifnonnull L4
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1102(Lcom/nd/album/ui/activity/PhotoCommentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L4:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/setCommentList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$200(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
return
L2:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$3/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$808(Lcom/nd/album/ui/activity/PhotoCommentActivity;)I
pop
goto L3
.limit locals 3
.limit stack 3
.end method
