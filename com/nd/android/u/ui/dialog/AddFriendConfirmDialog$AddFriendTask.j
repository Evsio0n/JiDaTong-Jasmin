.bytecode 50.0
.class public synchronized com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected AddFriendTask inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask outer com/nd/android/u/ui/dialog/AddFriendConfirmDialog

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;

.method protected <init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$400(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/agreeToAddFriend(J)Lcom/common/android/utils/task/genericTask/TaskResult; 2
areturn
.limit locals 2
.limit stack 3
.end method
