.bytecode 50.0
.class synchronized com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/dialog/AddFriendConfirmDialog
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;

.method <init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
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
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$400(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/addFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult; 2
pop
iconst_1
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$400(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)J
ldc ""
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/sendNotify(IJLjava/lang/String;)V
L1:
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$500(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$500(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$500(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
L0:
getstatic com/nd/android/u/chat/R$string/add_friend_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L1
.limit locals 3
.limit stack 4
.end method
