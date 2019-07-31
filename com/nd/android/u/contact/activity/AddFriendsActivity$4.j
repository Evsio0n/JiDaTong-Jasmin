.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/AddFriendsActivity
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$600(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$200(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$200(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$700(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
return
L1:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ifnull L2
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "200"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$800(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/unkonwn_reason I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$4/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_search_result I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$300(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
