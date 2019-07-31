.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected DeleteFriendTask inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask outer com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;

.method protected <init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
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
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/deleteFriendWeiBo(J)Lcom/common/android/utils/task/genericTask/TaskResult; 2
astore 1
aload 1
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
ldc "DeleteFollowDialog"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "DeleteFriendTask WeiboEntry.deleteFriend fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/deleteFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult; 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
ldc "DeleteFollowDialog"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "DeleteFriendTask OrganizationEntry.deleteFriend fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
