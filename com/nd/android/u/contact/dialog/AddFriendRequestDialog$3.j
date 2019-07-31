.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendRequestDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/dialog/AddFriendRequestDialog
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
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
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$000(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/CallPlatformIImpl_s_wy_msg(JLjava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/send_repait I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$500(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$500(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$600(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$600(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$600(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/add_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/send_addfriend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$400(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
