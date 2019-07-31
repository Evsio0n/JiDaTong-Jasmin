.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_System
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity

.field private 'mDialog' Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getParam(Landroid/os/Bundle;)Z
aload 0
iconst_2
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_System/messageType I
aload 0
aload 0
getstatic com/nd/android/u/chat/R$string/notify_system I
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_System/getString(I)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_System/name Ljava/lang/String;
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getRightButtonRes()I
getstatic com/nd/android/u/chat/R$drawable/delete_title_bg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_System/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
ifnonnull L0
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
new com/nd/android/u/bean4xy/DisplayMessage_System
dup
ldc ""
iconst_0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_System/<init>(Ljava/lang/String;I)V
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_System/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_System/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 8
.end method
