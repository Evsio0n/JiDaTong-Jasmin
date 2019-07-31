.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/activity/chat_config/ChatConfigActivity
.inner class inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 3
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
iload 3
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$600(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/removeblacklist I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getstatic com/nd/android/u/chat/R$string/add_blacklist_sucess I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/switchUser()V
L2:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$700(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/app/ProgressDialog;
ifnull L3
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$700(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L3:
return
L1:
iload 3
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$600(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/addblacklist I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getstatic com/nd/android/u/chat/R$string/delete_blacklist_success I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L2
L0:
iload 3
iconst_1
if_icmpne L4
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getstatic com/nd/android/u/chat/R$string/add_blacklist_error I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L2
L4:
iload 3
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getstatic com/nd/android/u/chat/R$string/delete_blacklist_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 4
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$800(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
return
.limit locals 2
.limit stack 1
.end method
