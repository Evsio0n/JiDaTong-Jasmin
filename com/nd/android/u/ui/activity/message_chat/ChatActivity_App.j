.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_App
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity

.field protected 'delelteHistoryHint' I

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
iconst_3
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/messageType I
aload 0
aload 1
ldc "APPID"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
i2l
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/generalId J
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/generalId J
lconst_0
lcmp
ifne L0
ldc "CHAT"
ldc "appid is 0"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_App/finish()V
iconst_0
ireturn
L0:
aload 0
aload 1
ldc "APPCODE"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/appcode Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/appcode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "CHAT"
ldc "appcode is null"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_App/finish()V
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/generalId J
l2i
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/appcode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_App
astore 1
aload 1
ifnull L3
aload 0
aload 1
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/getAppName(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/name Ljava/lang/String;
L2:
iconst_1
ireturn
L3:
aload 0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/generalId J
l2i
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/appcode Ljava/lang/String;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getAppName(ILjava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/name Ljava/lang/String;
goto L2
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
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
ifnonnull L0
new com/nd/android/u/bean4xy/DisplayMessage_App
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/generalId J
l2i
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/appcode Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/delelteHistoryHint I
ifne L1
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
return
L1:
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/delelteHistoryHint I
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_App/mDialog Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
goto L0
.limit locals 2
.limit stack 6
.end method
