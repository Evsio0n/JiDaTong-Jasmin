.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/GroupSystemMsgReceiver
.super java/lang/Object
.implements ims/outInterface/IGroupSystemMsgNotify

.field public static final 'GROUP_UPDATEMEMBERBYME' I = -1


.field public static final 'JOIN_GROUP_ACCEPTED' I = 1


.field public static final 'JOIN_GROUP_INVITE_OTHER' I = 1


.field public static final 'JOIN_GROUP_JECTED' I = 0


.field public static final 'JOIN_GROUP_JOINTO_OTHER' I = 0


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static notifyGroupDel(Ljava/lang/String;I)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
iload 1
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/remove(Ljava/lang/String;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
bipush 29
putfield android/os/Message/what I
aload 2
aload 0
putfield android/os/Message/obj Ljava/lang/Object;
aload 2
iload 1
putfield android/os/Message/arg1 I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_1
aload 2
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
ldc "notifyGroupDel :"
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/logout()V
return
.limit locals 3
.limit stack 4
.end method

.method private proccessEachAuthUpdate(Lims/bean/NDMessage;J)V
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 6
aload 1
getfield ims/bean/NDMessage/optType I
istore 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 6
lload 2
iload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/groupAuthUpdate(Ljava/lang/String;JI)Ljava/lang/String; 4
astore 5
new java/lang/StringBuilder
dup
ldc "groupAuthUpdate :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
aload 5
ifnull L0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 6
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 6
aload 6
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 6
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 6
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
aload 6
invokestatic ims/IMSdk/computeServertime()J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
L0:
return
.limit locals 7
.limit stack 5
.end method

.method private proccessEachMemberUpdate(Lims/bean/NDMessage;J)V
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 6
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 8
aload 1
getfield ims/bean/NDMessage/groupType I
istore 4
aload 1
getfield ims/bean/NDMessage/optType I
istore 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 8
lload 6
lload 2
iload 5
iload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/groupUpdateMember(Ljava/lang/String;JJII)Ljava/lang/String; 7
astore 9
new java/lang/StringBuilder
dup
ldc "groupUpdateMember :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
aload 9
ifnull L0
aload 9
ldc "DEL_MEMBER"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 8
iload 4
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 8
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 9
aload 9
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 9
aload 8
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTypeId(Ljava/lang/Object;)V 1
aload 9
lload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 9
invokestatic ims/IMSdk/computeServertime()J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 6
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 8
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getLocalGroupName(J)Ljava/lang/String; 2
astore 10
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/GROUP_KICKED I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 10
aastore
dup
iconst_1
aload 8
aastore
dup
iconst_2
aload 1
aastore
dup
iconst_3
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 9
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 9
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
L0:
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 8
iload 4
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
return
.limit locals 11
.limit stack 8
.end method

.method public depMemberChangeNotifi(Lims/bean/NDMessage;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L5
L6:
return
L5:
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
L0:
new org/json/JSONObject
dup
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
ifnull L6
L3:
aload 1
ldc "cmd"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
bipush 6
if_icmpne L6
aload 1
ldc "timestamp"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lconst_0
lcmp
ifle L6
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/depMemberChangeNotifi()V 0
L4:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method

.method public groupApprovalMember(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseLong(Ljava/lang/String;)J
lconst_0
lcmp
ifeq L1
aload 0
aload 1
invokevirtual com/nd/android/u/imSdk/GroupSystemMsgReceiver/requestRefreshGroupListView(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 2
aload 2
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 2
aload 1
getfield ims/bean/NDMessage/uidFrom J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/uidTo J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/msgId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/createDate J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/ackType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
ifnull L2
aload 2
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
L2:
new java/lang/StringBuilder
dup
ldc "groupApprovalMember :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 3
.limit stack 4
.end method

.method public groupAuthUpdate(Lims/bean/NDMessage;)V
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L3
L4:
return
L3:
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
ifnull L4
L0:
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
checkcast [J
astore 4
L1:
iconst_0
istore 2
aload 4
arraylength
istore 3
L5:
iload 2
iload 3
if_icmpge L4
aload 0
aload 1
aload 4
iload 2
laload
invokespecial com/nd/android/u/imSdk/GroupSystemMsgReceiver/proccessEachAuthUpdate(Lims/bean/NDMessage;J)V
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 1
return
.limit locals 5
.limit stack 4
.end method

.method public groupChangeInfo(Lims/bean/NDMessage;)V
new java/lang/StringBuilder
dup
ldc "groupChangeInfo :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/groupChangeInfo(Ljava/lang/String;ILjava/lang/String;)V 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public groupDismissed(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
return
L0:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 3
aload 1
getfield ims/bean/NDMessage/groupType I
istore 2
aload 3
iload 2
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 3
iload 2
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 4
aload 4
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 4
aload 1
getfield ims/bean/NDMessage/createDate J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 4
aload 1
getfield ims/bean/NDMessage/ackType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
aload 4
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/GROUP_DISMISS I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 3
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getLocalGroupName(J)Ljava/lang/String; 2
aastore
dup
iconst_1
aload 3
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 4
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
new java/lang/StringBuilder
dup
ldc "groupDismissed :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 3
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
iload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/groupDismessed(JI)V 3
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 5
.limit stack 8
.end method

.method public groupMemberRefreshStatus(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method public groupMsgQuit(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 7
aload 7
ifnull L1
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 2
aload 7
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
lload 2
aload 1
getfield ims/bean/NDMessage/groupType I
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/groupMsgQuit(JJI)V 5
lload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L2
aload 7
aload 1
getfield ims/bean/NDMessage/groupType I
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
L2:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 6
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getLocalGroupName(J)Ljava/lang/String; 2
astore 8
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 9
aload 9
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/GROUP_MEMBER_QUIT I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 6
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
astore 6
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 7
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 10
lload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L3
aload 9
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/GROUP_SELF_QUIT I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_2
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
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 6
L3:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 7
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/remove(Ljava/lang/String;)V
aload 10
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 10
lload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 10
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 10
invokestatic ims/IMSdk/computeServertime()J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 10
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
aload 10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
pop
new java/lang/StringBuilder
dup
ldc "groupMsgQuit :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 11
.limit stack 6
.end method

.method public groupToApprovalMember(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseLong(Ljava/lang/String;)J
lconst_0
lcmp
ifeq L1
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 2
aload 2
aload 1
getfield ims/bean/NDMessage/messageContentType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 2
aload 1
getfield ims/bean/NDMessage/uidFrom J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/msgId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/createDate J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 2
aload 1
getfield ims/bean/NDMessage/ackType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
ifnull L2
aload 2
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
L2:
new java/lang/StringBuilder
dup
ldc "groupToApprovalMember :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 3
.limit stack 4
.end method

.method public groupUpdateMember(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
ifnull L2
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
checkcast [J
astore 4
iconst_0
istore 2
aload 4
arraylength
istore 3
L3:
iload 2
iload 3
if_icmpge L1
aload 0
aload 1
aload 4
iload 2
laload
invokespecial com/nd/android/u/imSdk/GroupSystemMsgReceiver/proccessEachMemberUpdate(Lims/bean/NDMessage;J)V
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
aload 0
aload 1
aload 1
getfield ims/bean/NDMessage/uidTo J
invokespecial com/nd/android/u/imSdk/GroupSystemMsgReceiver/proccessEachMemberUpdate(Lims/bean/NDMessage;J)V
return
.limit locals 5
.limit stack 4
.end method

.method public joinGroup(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
return
L0:
new java/lang/StringBuilder
dup
ldc "joinGroup :"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/optType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
aload 1
getfield ims/bean/NDMessage/optType I
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/joinGroup(Ljava/lang/String;II)V 3
return
.limit locals 2
.limit stack 4
.end method

.method public requestRefreshGroupListView(Lims/bean/NDMessage;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
instanceof org/json/JSONObject
ifeq L3
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
checkcast org/json/JSONObject
astore 4
iconst_0
istore 2
L0:
aload 4
ldc "approvalResult"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
L1:
iload 3
iconst_1
if_icmpne L4
sipush 201
istore 2
L4:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
iload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/joinGroup(Ljava/lang/String;II)V 3
L3:
return
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 5
.limit stack 4
.end method
