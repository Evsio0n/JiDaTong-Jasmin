.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/GroupFeedbackReceiver
.super java/lang/Object
.implements ims/outInterface/IGroupFeedbackNotify

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addGroupMemmber(II)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
ifnull L0
aload 4
ldc "ADD_MEMBER"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 4
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
ifnull L0
aload 5
arraylength
iconst_2
if_icmpne L0
iload 1
aload 5
iconst_1
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
if_icmpne L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iload 2
sipush 200
if_icmpeq L2
iload 2
sipush 201
if_icmpne L3
L2:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupAddMemberResult(I)V 1
return
L3:
iload 2
sipush 404
if_icmpne L4
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
return
L4:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "addGroupMemmber statusCode:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",key="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
bipush -2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupAddMemberResult(I)V 1
return
.limit locals 6
.limit stack 4
.end method

.method public deleteGroupMemmber(II)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
ifnull L0
aload 4
ldc "DEL_MEMBER"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 4
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
ifnull L0
aload 5
arraylength
iconst_2
if_icmpne L0
iload 1
aload 5
iconst_1
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
if_icmpne L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iload 2
sipush 200
if_icmpne L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupDelMemberResult(I)V 1
return
L2:
iload 2
sipush 404
if_icmpne L3
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "deleteGroupMemmber fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
return
L3:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
bipush -2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupDelMemberResult(I)V 1
return
.limit locals 6
.limit stack 4
.end method

.method public groupDismiss(Ljava/lang/String;II)V
aload 1
ldc "DISMISS_GROUP"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 5
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 5
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iconst_0
istore 4
iload 3
sipush 200
if_icmpne L1
aload 1
iload 2
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
iload 4
istore 2
L2:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
iload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupDismissResult(Ljava/lang/String;I)V 2
L0:
return
L1:
iload 3
sipush 404
if_icmpne L3
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "groupDismiss fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L3:
bipush -2
istore 2
goto L2
.limit locals 6
.limit stack 4
.end method

.method public groupLoginFeedbak(Ljava/lang/String;II)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getGroup(Ljava/lang/String;)Lims/outInterface/IGroup;
astore 1
aload 1
ifnull L0
aload 1
iload 3
invokeinterface ims/outInterface/IGroup/onLoginFeedback(I)V 1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public groupReceiveMsgFeedbak(Ljava/lang/String;II)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getGroup(Ljava/lang/String;)Lims/outInterface/IGroup;
astore 1
aload 1
ifnull L0
aload 1
iload 3
invokeinterface ims/outInterface/IGroup/onReceiveMessageFeedback(I)V 1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public groupTransf(Ljava/lang/String;II)V
aload 1
ldc "TRANSFER"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iconst_0
istore 2
iload 3
sipush 200
if_icmpeq L1
iload 3
sipush 404
if_icmpne L2
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "groupTransf fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L2:
bipush -2
istore 2
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupTransferResult(I)V 1
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public modGroupNotice(II)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
ifnull L0
aload 4
ldc "MODIFY_NOTICE"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 4
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
ifnull L0
aload 5
arraylength
iconst_2
if_icmpne L0
iload 1
aload 5
iconst_1
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
if_icmpne L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iload 2
sipush 200
if_icmpne L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupInfoModResult(I)V 1
return
L2:
iload 2
sipush 404
if_icmpne L3
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "modGroupNotice fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L3:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
bipush -2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupInfoModResult(I)V 1
return
.limit locals 6
.limit stack 4
.end method

.method public quitGroup(Ljava/lang/String;II)V
iload 2
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getNormalGroupType()I
if_icmpne L0
aload 1
ldc "QUIT_GROUP"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 5
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 5
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iconst_0
istore 4
iload 3
sipush 200
if_icmpne L1
aload 1
iload 2
invokestatic com/nd/android/u/imSdk/GroupSystemMsgReceiver/notifyGroupDel(Ljava/lang/String;I)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 5
aload 5
iload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setSubtype(I)V
aload 5
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 5
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/remove(Ljava/lang/String;)V
iload 4
istore 3
L2:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyGroupQuitResult(Ljava/lang/String;II)V 3
L0:
return
L1:
iload 3
sipush 404
if_icmpne L3
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "quitGroup fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L3:
bipush -2
istore 3
goto L2
.limit locals 6
.limit stack 4
.end method
