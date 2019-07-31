.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/DisplayMessage_Group
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage_Group

.method public <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Group/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
iload 1
ifeq L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/uidFrom J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public isChild()Z
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Group/getMessageContentType()I
tableswitch 10003
L0
L0
L0
L1
L1
L1
L0
default : L1
L1:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Group/isChild()Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public showNotify()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 0
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/noNeedNotify(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L0
return
L0:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 6
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 4
ldc ""
astore 3
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupId Ljava/lang/String;
invokestatic ims/utils/CommUtil/parseLong(Ljava/lang/String;)J
lstore 1
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUnitid()I 0
i2l
lstore 1
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
lload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupName(IJ)Ljava/lang/String; 3
astore 5
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L2
aload 6
getstatic com/nd/android/u/chat/R$string/notify_group I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 5
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
L3:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/displayContent Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 7
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Group/getUnreadMessage()Ljava/lang/String;
astore 8
aload 4
aload 6
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Group/getDisplayClass()Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "gid"
lload 1
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "generalid"
lload 1
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "grouptype"
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "name"
aload 5
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 4
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 3
aload 8
aload 7
aload 4
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
astore 3
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 3
aload 0
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aload 6
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;Landroid/os/Bundle;)V
return
L2:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L4
aload 6
getstatic com/nd/android/u/chat/R$string/notify_discussion I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 5
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
goto L3
L4:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L5
aload 6
getstatic com/nd/android/u/chat/R$string/notify_group I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 5
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
goto L3
L5:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L3
aload 6
getstatic com/nd/android/u/chat/R$string/notify_broadcast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 3
goto L3
.limit locals 9
.limit stack 6
.end method
