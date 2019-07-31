.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$500(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$500(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$500(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$400(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/content/Context;
ldc ""
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$400(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_clearing_history I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$302(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
return
.limit locals 2
.limit stack 5
.end method
