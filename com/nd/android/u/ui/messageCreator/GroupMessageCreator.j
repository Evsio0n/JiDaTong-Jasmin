.bytecode 50.0
.class public synchronized com/nd/android/u/ui/messageCreator/GroupMessageCreator
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
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/groupType I
bipush 20
if_icmpne L0
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice
areturn
L0:
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Group
areturn
.limit locals 2
.limit stack 2
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/bean4xy/DisplayMessage_Group
dup
aload 2
iload 1
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Group/<init>(Ljava/lang/String;I)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/groupType I
bipush 20
if_icmpne L0
new com/nd/android/u/ui/widge/ChatListItemView_Notice
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Notice/<init>(Landroid/content/Context;)V
areturn
L0:
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
lookupswitch
0 : L1
2 : L2
3 : L3
80 : L4
81 : L5
10003 : L6
10004 : L7
10005 : L8
10009 : L9
20480 : L3
20481 : L4
default : L10
L10:
aconst_null
areturn
L3:
new com/nd/android/u/ui/widge/ChatListItemView_Audio
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/<init>(Landroid/content/Context;)V
areturn
L1:
new com/nd/android/u/ui/widge/ChatListItemView_Text
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text/<init>(Landroid/content/Context;)V
areturn
L2:
new com/nd/android/u/ui/widge/ChatListItemView_Image
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/<init>(Landroid/content/Context;)V
areturn
L4:
new com/nd/android/u/ui/widge/ChatListItemView_Files
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/<init>(Landroid/content/Context;)V
areturn
L5:
new com/nd/android/u/ui/widge/ChatListItemView_MultiImage
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/<init>(Landroid/content/Context;)V
areturn
L6:
new com/nd/android/u/ui/widge/messageTip/MessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
areturn
L7:
new com/nd/android/u/ui/widge/messageTip/MessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
areturn
L8:
new com/nd/android/u/ui/widge/messageTip/MessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
areturn
L9:
new com/nd/android/u/ui/widge/messageTip/MessageTip
dup
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
