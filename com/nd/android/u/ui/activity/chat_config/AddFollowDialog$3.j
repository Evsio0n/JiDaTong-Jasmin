.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/activity/chat_config/AddFollowDialog
.inner class inner com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$200(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$200(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/os/Handler;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/os/Handler;
bipush 100
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L2:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/follow_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/follow_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/following_ta I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddFollowDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/wait I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/chat_config/AddFollowDialog/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
