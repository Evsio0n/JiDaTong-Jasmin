.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog
.inner class inner com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
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
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$500(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddFollowListener;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$500(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddFollowListener;
invokeinterface com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddFollowListener/addFollowSucess()V 0
L1:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$600(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$600(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$700(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$700(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$700(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L0:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L1
L4:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/add_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 3
.limit stack 6
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$3/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/send_addfriend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$400(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
