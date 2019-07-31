.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/DefaultGroup
.super com/nd/android/u/controller/bean/AbstractGroup

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial com/nd/android/u/controller/bean/AbstractGroup/<init>()V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/DefaultGroup/gid Ljava/lang/String;
aload 0
iload 2
putfield com/nd/android/u/controller/bean/DefaultGroup/groupType I
aload 0
ldc_w 65025
putfield com/nd/android/u/controller/bean/DefaultGroup/loginCmd I
aload 0
ldc_w 65026
putfield com/nd/android/u/controller/bean/DefaultGroup/logoutCmd I
aload 0
ldc_w 65027
putfield com/nd/android/u/controller/bean/DefaultGroup/receiveCmd I
return
.limit locals 3
.limit stack 2
.end method

.method protected canReceiveGroupMessage()Z
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/controller/bean/DefaultGroup/gid Ljava/lang/String;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupMsgReceiveType(Ljava/lang/String;)I 1
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected getLastMsgId()J
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/bean/DefaultGroup/gid Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/DefaultGroup/groupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 3
.end method

.method protected removeGroupRecord()V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/remove(Lims/outInterface/IGroup;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/bean/DefaultGroup/gid Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/DefaultGroup/groupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
bipush 10
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method
