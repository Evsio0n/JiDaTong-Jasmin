.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/DisplayMessage_System
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage_System

.method public <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private getGroupName(J)Ljava/lang/String;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupNameByGUid(JJ)Ljava/lang/String; 4
areturn
.limit locals 3
.limit stack 5
.end method

.method public onItemClick(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L10 to L11 using L2
.catch org/json/JSONException from L12 to L13 using L2
.catch org/json/JSONException from L14 to L15 using L2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/displayContent Ljava/lang/String;
ifnull L0
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 6
aload 0
aload 6
ldc "approvalStr"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalStr Ljava/lang/String;
aload 0
aload 6
ldc "approvalType"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
aload 0
aload 6
ldc "approvalResult"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalResult I
aload 6
ldc "ToApply"
invokevirtual org/json/JSONObject/getBoolean(Ljava/lang/String;)Z
istore 1
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 6
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getFriendId()J
lstore 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 7
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseLong(Ljava/lang/String;)J
lstore 4
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
astore 8
aload 0
lload 4
invokespecial com/nd/android/u/bean4xy/DisplayMessage_System/getGroupName(J)Ljava/lang/String;
astore 8
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
iconst_1
if_icmpne L6
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalResult I
iconst_1
if_icmpne L4
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/your_friend_agree_joined_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 7
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 8
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
L1:
aload 0
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/displayContent Ljava/lang/String;
L3:
iconst_0
ireturn
L2:
astore 6
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/analyseMessage(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)V 1
iconst_0
ireturn
L4:
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/your_friend_reject_joined_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 7
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 8
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
L5:
goto L1
L6:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
ifne L1
L7:
iload 1
ifeq L12
L8:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
iconst_1
if_icmpeq L10
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/your_friend_request_to_join_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 7
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 8
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
L9:
goto L1
L10:
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/your_friend_ask_u_to_join_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 7
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 8
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
L11:
goto L1
L12:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalResult I
iconst_1
if_icmpne L14
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/manager_agree_you_joined_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 8
aastore
dup
iconst_1
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 7
aastore
dup
iconst_3
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupType I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
L13:
goto L1
L14:
aload 0
aload 6
getstatic com/nd/android/u/chat/R$string/manager_reject_you_joined_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 8
aastore
dup
iconst_1
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 7
aastore
dup
iconst_3
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_System/oriMessage Ljava/lang/String;
L15:
goto L1
.limit locals 9
.limit stack 7
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
astore 3
aload 3
getstatic com/nd/android/u/chat/R$string/notify_system I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getUnreadMessage()Ljava/lang/String;
astore 2
new android/content/Intent
dup
aload 3
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getDisplayClass()Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "name"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 1
aload 2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_System/displayContent Ljava/lang/String;
aload 3
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
astore 1
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 1
aload 0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;)V
return
.limit locals 5
.limit stack 5
.end method
