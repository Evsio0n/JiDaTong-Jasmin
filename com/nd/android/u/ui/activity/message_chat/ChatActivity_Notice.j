.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity

.field private 'mDialog' Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;

.field private 'mGid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getParam(Landroid/os/Bundle;)Z
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/messageType I
aload 0
bipush 20
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/groupType I
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mGid Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mGid Ljava/lang/String;
ldc "-u"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
ifle L0
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mGid Ljava/lang/String;
ldc "-u"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/generalId J
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected getRightButtonRes()I
getstatic com/nd/android/u/chat/R$drawable/delete_title_bg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
ifnonnull L0
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
new com/nd/android/u/bean4xy/DisplayMessage_Group
dup
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mGid Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/groupType I
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Group/<init>(Ljava/lang/String;I)V
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 8
.end method
