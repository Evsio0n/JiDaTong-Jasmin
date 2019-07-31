.bytecode 50.0
.class public synchronized com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessagePreProccess

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 1
aload 2
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 1
aload 2
getfield ims/bean/NDMessage/uidFrom J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 1
aload 2
getfield ims/bean/NDMessage/uidTo J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 1
aload 2
getfield ims/bean/NDMessage/createDate J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 1
aload 2
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 1
aload 2
getfield ims/bean/NDMessage/msgId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 1
aload 2
getfield ims/bean/NDMessage/multiId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMultiId(J)V 2
aload 1
aload 2
getfield ims/bean/NDMessage/ackType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public preProccess(Lims/bean/NDMessage;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 7
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
pop2
aload 1
getfield ims/bean/NDMessage/messageContentType I
lookupswitch
100 : L5
193 : L6
196 : L7
202 : L8
10001 : L9
10003 : L0
10004 : L10
10005 : L11
10006 : L9
10007 : L9
10008 : L9
10009 : L12
default : L9
L9:
iconst_0
ireturn
L8:
new com/nd/android/u/bean4xy/DisplayMessage_Person_Source
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person_Source/<init>()V
astore 6
aload 0
aload 6
aload 1
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 6
iconst_0
iconst_0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person_Source/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 6
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person_Source/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iconst_1
ireturn
L6:
sipush 1000
sipush 193
aload 1
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
iconst_1
ireturn
L7:
iconst_1
ireturn
L0:
new org/json/JSONObject
dup
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "gname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 6
L1:
aload 6
ifnull L13
L3:
aload 6
invokevirtual java/lang/String/length()I
ifeq L13
aload 6
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 5
L4:
iload 5
ifeq L14
L13:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
L14:
aload 1
getfield ims/bean/NDMessage/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L15
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionRenamed
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionRenamed/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 6
L16:
aload 0
aload 6
aload 1
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 6
iconst_0
iconst_0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 6
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
goto L9
L15:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 6
goto L16
L10:
aload 1
getfield ims/bean/NDMessage/groupType I
ifne L9
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 6
aload 0
aload 6
aload 1
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 6
iconst_0
iconst_0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 6
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
goto L9
L11:
aload 1
getfield ims/bean/NDMessage/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L17
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToDiscussion
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToDiscussion/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 6
L18:
aload 0
aload 6
aload 1
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 6
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/object Ljava/lang/Object;
aload 6
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/object Ljava/lang/Object;
ifnull L9
aload 6
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/object Ljava/lang/Object;
instanceof [J
ifeq L9
aload 6
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/object Ljava/lang/Object;
checkcast [J
checkcast [J
astore 8
ldc ""
astore 1
iconst_0
istore 2
L19:
iload 2
aload 8
arraylength
if_icmpge L20
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 8
iload 2
laload
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 7
astore 1
iload 2
aload 8
arraylength
iconst_1
isub
if_icmpeq L21
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u3001"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L21:
iload 2
iconst_1
iadd
istore 2
goto L19
L17:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 6
goto L18
L20:
aload 6
aload 1
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setOriMessage(Ljava/lang/String;)V
ldc "@@"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uidFrom="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 6
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  uidTo="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/getOriMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
iconst_0
iconst_0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 6
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
goto L9
L12:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin
dup
aload 7
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/<init>(Landroid/content/Context;Ljava/lang/String;I)V
astore 8
aload 0
aload 8
aload 1
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/setDisplayMessageData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lims/bean/NDMessage;)V
aload 8
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
aload 8
aload 1
getfield ims/bean/NDMessage/optType I
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/optType I
aload 1
getfield ims/bean/NDMessage/optType I
istore 2
iconst_1
istore 4
aload 7
ldc_w 2131494495
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 9
iload 2
bipush 8
if_icmpne L22
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
ifnull L9
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
instanceof [J
ifeq L9
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
checkcast [J
checkcast [J
astore 10
ldc ""
astore 6
iconst_0
istore 2
L23:
iload 2
aload 10
arraylength
if_icmpge L24
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 10
iload 2
laload
lcmp
ifne L25
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L26:
aload 1
astore 6
iload 2
aload 10
arraylength
iconst_1
isub
if_icmpeq L27
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u3001"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
L27:
iload 2
iconst_1
iadd
istore 2
goto L23
L25:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 10
iload 2
laload
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L26
L24:
aload 8
aload 7
ldc_w 2131494493
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 6
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/setOriMessage(Ljava/lang/String;)V
iconst_0
istore 2
L28:
iload 2
iconst_1
if_icmpne L29
iconst_0
ireturn
L22:
iload 2
iconst_2
if_icmpne L30
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
ifnull L31
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
instanceof [J
ifeq L31
aload 8
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/object Ljava/lang/Object;
checkcast [J
checkcast [J
astore 1
iconst_0
istore 3
L32:
iload 4
istore 2
iload 3
aload 1
arraylength
if_icmpge L28
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 1
iload 3
laload
lcmp
ifne L33
aload 8
aload 7
ldc_w 2131495690
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/setOriMessage(Ljava/lang/String;)V
iconst_0
istore 2
goto L28
L33:
iload 3
iconst_1
iadd
istore 3
goto L32
L31:
iconst_0
ireturn
L30:
iconst_0
ireturn
L29:
aload 8
iconst_0
iconst_0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 8
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
goto L9
L5:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/uidFrom J
aload 1
getfield ims/bean/NDMessage/createDate J
l2i
aload 1
getfield ims/bean/NDMessage/messageContentType I
aload 1
getfield ims/bean/NDMessage/msgId J
aload 1
getfield ims/bean/NDMessage/multiId J
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/createAppMessage(Ljava/lang/String;JIIJJ)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans
ifeq L34
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/prepareMessage()Z 0
pop
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans
astore 1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/uid J
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/msgDesc Ljava/lang/String;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/notifyNewFans(JLjava/lang/String;)V 3
goto L9
L34:
aload 1
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest
ifeq L9
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/prepareMessage()Z 0
pop
goto L9
.limit locals 11
.limit stack 10
.end method
