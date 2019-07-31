.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TransferGroupActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/TransferGroupActivity
.inner class inner com/nd/android/u/contact/activity/TransferGroupActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TransferGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$300(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$300(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$400(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$100(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/setMemberList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$400(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/notifyDataSetChanged()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$500(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$500(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$500(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
getstatic com/nd/android/u/contact/R$string/get_group_member_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
getstatic com/nd/android/u/contact/R$string/get_group_member_list I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
getstatic com/nd/android/u/contact/R$string/waiting_for_refresh I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$302(Lcom/nd/android/u/contact/activity/TransferGroupActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$300(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$300(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 2
.limit stack 5
.end method
