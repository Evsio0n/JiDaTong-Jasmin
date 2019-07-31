.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatInterfaceImpl/ChatCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/Exception from L0 to L1 using L2
bipush -2
istore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
iload 1
lookupswitch
20001 : L3
20002 : L3
20003 : L4
20004 : L5
20005 : L6
20006 : L7
20007 : L8
20008 : L9
20009 : L10
20010 : L11
20011 : L12
20012 : L13
20013 : L14
20014 : L15
20015 : L16
20017 : L17
20018 : L18
20059 : L19
20062 : L20
20066 : L21
20068 : L22
20069 : L23
20070 : L24
20071 : L25
20072 : L26
20074 : L26
20075 : L26
20077 : L26
20078 : L27
20079 : L28
20080 : L29
20081 : L30
21073 : L26
22016 : L31
22060 : L32
default : L33
L33:
sipush -1001
istore 1
L34:
iload 1
ireturn
L3:
aload 2
ifnull L35
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L35
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/commonInterface/chat/ErpInfo
ifne L36
L35:
iconst_m1
ireturn
L36:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/ErpInfo
astore 6
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 7
aload 7
aload 6
getfield com/product/android/commonInterface/chat/ErpInfo/generateId Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setGenerateId(Ljava/lang/String;)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
iconst_0
ireturn
L4:
aload 2
ifnull L37
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L37
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L38
L37:
iconst_m1
ireturn
L38:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L39
bipush -3
ireturn
L39:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L40
bipush -4
ireturn
L40:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ldc "TRANSFER"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/transferGroup(Ljava/lang/String;IJ)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L5:
aload 2
ifnull L41
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L42
L41:
iconst_m1
ireturn
L42:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L43
bipush -3
ireturn
L43:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L44
bipush -4
ireturn
L44:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/addGroupRequest(JLjava/lang/String;)V
iconst_0
ireturn
L6:
aload 2
ifnull L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifeq L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L46
L45:
iconst_m1
ireturn
L46:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
new com/nd/android/u/bean4xy/DisplayMessage_Group
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Group/<init>(Ljava/lang/String;I)V
astore 6
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
aload 6
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
iconst_0
ireturn
L7:
aload 2
ifnull L47
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L47
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [J
ifne L48
L47:
iconst_m1
ireturn
L48:
invokestatic ims/IMSdk/getWseq()I
istore 1
ldc "ADD_MEMBER"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
iload 1
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/group_cmd_c2n_add_member(Ljava/lang/String;I[JI)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L8:
aload 2
ifnull L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L50
L49:
iconst_m1
ireturn
L50:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [J
ifne L51
iconst_m1
ireturn
L51:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 6
invokestatic ims/IMSdk/getWseq()I
istore 1
ldc "DEL_MEMBER"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 7
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aload 6
iload 1
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/group_cmd_c2n_remove_member(Ljava/lang/String;I[JI)V
aload 2
aload 7
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L9:
aload 2
ifnull L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L53
L52:
iconst_m1
ireturn
L53:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
iload 1
iconst_2
if_icmpne L54
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/quitGroup(Ljava/lang/String;I)V
L55:
iconst_0
ireturn
L54:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "QUIT_GROUP"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/quitGroup(Ljava/lang/String;I)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L10:
aload 2
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L57
L56:
iconst_m1
ireturn
L57:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "DISMISS_GROUP"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/dimssGroup(Ljava/lang/String;I)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L11:
aload 2
ifnonnull L58
iconst_m1
ireturn
L58:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L59
bipush -3
ireturn
L59:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L60
bipush -4
ireturn
L60:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L61
iconst_m1
ireturn
L61:
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
iconst_0
ireturn
L12:
aload 2
ifnonnull L62
iconst_m1
ireturn
L62:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L63
bipush -3
ireturn
L63:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L64
bipush -4
ireturn
L64:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
iconst_0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/loginAllGroup(Z)V
iconst_0
ireturn
L13:
aload 2
ifnull L65
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L66
L65:
iconst_m1
ireturn
L66:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L67
bipush -3
ireturn
L67:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L68
bipush -4
ireturn
L68:
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/logout()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L69
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
checkcast com/nd/android/u/bean4xy/GroupContactItem
astore 6
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setId(Ljava/lang/String;)V
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setSubtype(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 6
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L69:
iconst_0
ireturn
L14:
aload 2
ifnull L70
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L71
L70:
iconst_m1
ireturn
L71:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L72
bipush -3
ireturn
L72:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L73
bipush -4
ireturn
L73:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/sendModifyJoinperm(JI)V
iload 3
istore 1
goto L34
L15:
aload 2
ifnonnull L74
iconst_m1
ireturn
L74:
invokestatic ims/IMSdk/getWseq()I
istore 1
ldc "MODIFY_NOTICE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 1
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/sendModifyIntroduction(JILjava/lang/String;I)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L16:
aload 2
ifnonnull L75
iconst_m1
ireturn
L75:
invokestatic ims/IMSdk/getWseq()I
istore 1
ldc "MODIFY_NOTICE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 1
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/sendModifyGroupNotice(JILjava/lang/String;I)V
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L31:
aload 2
ifnull L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L0
L76:
iconst_m1
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
L1:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
aload 6
ldc "ownerid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "gid"
lload 4
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "category"
iload 1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
aload 2
ldc com/nd/teamfile/ui/FileListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 7
aload 7
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 2
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
L2:
astore 2
iconst_m1
ireturn
L17:
aload 2
ifnull L77
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L78
L77:
iconst_m1
ireturn
L78:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L79
bipush -3
ireturn
L79:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L80
bipush -4
ireturn
L80:
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
iconst_0
ireturn
L18:
aload 2
ifnull L81
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L82
L81:
iconst_m1
ireturn
L82:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iconst_0
ireturn
L19:
aload 2
ifnonnull L83
iconst_m1
ireturn
L83:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L84
bipush -3
ireturn
L84:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L85
bipush -4
ireturn
L85:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
l2i
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/changeUserAvatar(II)V
iconst_0
ireturn
L32:
aload 2
ifnull L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifeq L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L87
L86:
iconst_m1
ireturn
L87:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 7
aload 7
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
iload 1
tableswitch 0
L88
L89
L90
L91
L91
default : L92
L92:
sipush -1001
ireturn
L88:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof [Ljava/lang/String;
ifeq L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast [Ljava/lang/String;
checkcast [Ljava/lang/String;
astore 2
aload 2
ifnull L93
aload 6
ldc "quick_reply_type"
iconst_2
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "QUICKREPLY"
aload 2
invokevirtual android/os/Bundle/putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
L93:
aload 7
aload 8
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 6
ldc "fid"
lload 4
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 7
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 8
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
L89:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
istore 1
L94:
aload 6
ldc "gid"
lload 4
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "grouptype"
iload 1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 7
aload 8
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Group
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 7
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 8
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
L90:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
istore 1
goto L94
L91:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
istore 1
goto L94
L20:
aload 2
ifnull L95
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L96
L95:
iconst_m1
ireturn
L96:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L97
bipush -3
ireturn
L97:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L98
bipush -4
ireturn
L98:
bipush 65
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/sendNotify(IJLjava/lang/String;)V
iconst_0
ireturn
L21:
aload 2
ifnull L99
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L99
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/lang/String
ifne L100
L99:
iconst_m1
ireturn
L100:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/String
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 6
aload 6
ifnonnull L101
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unknow app:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
bipush -2
ireturn
L101:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
checkcast com/nd/android/u/bean4xy/AppContactItem
astore 7
aload 7
ifnonnull L102
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unknow app:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
bipush -2
ireturn
L102:
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackAllMessage()V 0
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setId(Ljava/lang/String;)V
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/String
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 7
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/clearUnreadCount(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/callbackSetNotiType()V
iconst_0
ireturn
L22:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L103:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L104
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 8
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
ifne L103
aload 6
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L103
L104:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
L23:
aload 2
ifnull L105
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L106
L105:
iconst_m1
ireturn
L106:
iconst_0
ireturn
L24:
aload 2
ifnull L107
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifle L107
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L108
L107:
iconst_m1
ireturn
L108:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 6
aload 6
ifnonnull L109
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unknow app:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
bipush -2
ireturn
L109:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
checkcast com/nd/android/u/bean4xy/AppContactItem
astore 7
aload 7
ifnonnull L110
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unknow app:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
bipush -2
ireturn
L110:
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setId(Ljava/lang/String;)V
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 7
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/clearUnreadCount(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackAllMessage()V 0
iconst_0
ireturn
L25:
aload 2
ifnull L111
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifle L111
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L112
L111:
iconst_m1
ireturn
L112:
new com/nd/android/u/bean4xy/AppContactItem
dup
invokespecial com/nd/android/u/bean4xy/AppContactItem/<init>()V
astore 6
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setId(Ljava/lang/String;)V
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 6
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
checkcast com/nd/android/u/bean4xy/AppContactItem
astore 6
aload 6
ifnonnull L113
aload 2
iconst_m1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
L114:
iconst_0
ireturn
L113:
aload 2
aload 6
invokevirtual com/nd/android/u/bean4xy/AppContactItem/getUnreadCount()I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
goto L114
L26:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 13
iload 1
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L27:
aload 2
ifnull L115
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L115
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L116
L115:
iconst_m1
ireturn
L116:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 7
aload 7
bipush 28
putfield android/os/Message/what I
aload 6
ldc "name"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "fid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 7
aload 6
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L117
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_1
aload 7
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L118:
iconst_0
ireturn
L117:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 7
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
goto L118
L28:
aload 2
ifnonnull L119
iconst_m1
ireturn
L119:
aload 2
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
ireturn
L29:
aload 2
ifnull L120
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L121
L120:
iconst_m1
ireturn
L121:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 6
new android/content/Intent
dup
aload 6
ldc com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 7
aload 7
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/getFwdPic(Ljava/lang/String;)Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 6
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
L30:
aload 2
ifnull L122
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L122
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L123
L122:
iconst_m1
ireturn
L123:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
new com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller
dup
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
lload 4
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/creatNewFriendDynamicMessage(Landroid/content/Context;J)V
iconst_0
ireturn
.limit locals 9
.limit stack 5
.end method
