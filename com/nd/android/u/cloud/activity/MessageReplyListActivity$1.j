.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageReplyListActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/MessageReplyListActivity
.inner class inner com/nd/android/u/cloud/activity/MessageReplyListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
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
ldc "MessageSendListActivity"
ldc "\u53d1\u9001\u6210\u529f"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
ifnonnull L1
ldc "MessageSendListActivity"
ldc "identityadapter == null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
new com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter
dup
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$200(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Ljava/util/List;
invokespecial com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$102(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$200(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/setGroupList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/notifyDataSetChanged()V
goto L0
.limit locals 3
.limit stack 5
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495568
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/MessageReplyListActivity/access$500(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
