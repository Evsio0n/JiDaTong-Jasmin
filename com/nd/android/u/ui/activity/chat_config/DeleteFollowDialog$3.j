.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$200(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$200(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/os/Handler;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/os/Handler;
bipush 100
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L2:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/unfollow_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/unfollow_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/unfollow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/wait I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
