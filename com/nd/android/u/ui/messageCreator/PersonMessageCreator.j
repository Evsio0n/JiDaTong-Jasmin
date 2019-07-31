.bytecode 50.0
.class public synchronized com/nd/android/u/ui/messageCreator/PersonMessageCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/bean4xy/DisplayMessage_Person
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person/<init>()V
areturn
.limit locals 3
.limit stack 2
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
lookupswitch
0 : L0
2 : L1
3 : L2
80 : L3
81 : L4
101 : L5
20001 : L6
20002 : L7
20003 : L8
20004 : L9
20480 : L2
20481 : L3
default : L10
L10:
aconst_null
areturn
L2:
new com/nd/android/u/ui/widge/ChatListItemView_Audio
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/<init>(Landroid/content/Context;)V
astore 1
L11:
aload 1
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
aload 1
areturn
L0:
new com/nd/android/u/ui/widge/ChatListItemView_Text
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text/<init>(Landroid/content/Context;)V
astore 1
goto L11
L1:
new com/nd/android/u/ui/widge/ChatListItemView_Image
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/<init>(Landroid/content/Context;)V
astore 1
goto L11
L3:
new com/nd/android/u/ui/widge/ChatListItemView_Files
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/<init>(Landroid/content/Context;)V
astore 1
goto L11
L5:
new com/nd/android/u/ui/widge/ChatListItemView_Erp
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Erp/<init>(Landroid/content/Context;)V
astore 1
goto L11
L4:
new com/nd/android/u/ui/widge/ChatListItemView_MultiImage
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/<init>(Landroid/content/Context;)V
astore 1
goto L11
L6:
new com/nd/android/u/ui/widge/messageTip/SignatureMessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/<init>(Landroid/content/Context;)V
astore 1
goto L11
L8:
new com/nd/android/u/ui/widge/messageTip/ImageMessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip/<init>(Landroid/content/Context;)V
astore 1
goto L11
L7:
new com/nd/android/u/ui/widge/messageTip/ImageMessageTip
dup
aload 1
iconst_1
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip/<init>(Landroid/content/Context;Z)V
astore 1
goto L11
L9:
new com/nd/android/u/ui/widge/messageTip/MessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
astore 1
goto L11
.limit locals 4
.limit stack 4
.end method
