.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/dialog/UserFunctionAlertDialog
.inner class inner com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$400(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$400(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
iconst_0
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$300(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/follow_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/follow_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/following_ta I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
