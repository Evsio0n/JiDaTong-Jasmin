.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/CommonNotifyImpl
.super java/lang/Object
.implements ims/outInterface/ICommonNotify

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private proccessTrans(Ljava/lang/String;Z)V
iconst_2
istore 3
aload 1
ldc "<>"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
arraylength
iconst_4
if_icmpne L0
aload 5
iconst_1
aaload
astore 1
aload 5
iconst_2
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 4
aload 5
iconst_3
aaload
astore 5
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iload 4
aload 5
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 5
aload 5
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setGenerateId(Ljava/lang/String;)V 1
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L1
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "get nd coin trans message fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
L1:
iload 2
ifeq L2
iconst_0
istore 3
L2:
iload 2
ifeq L3
aload 5
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
L4:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 5
iload 3
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
L3:
aload 5
iconst_0
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
goto L4
.limit locals 6
.limit stack 4
.end method

.method public loginAllGroup()V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
iconst_1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/loginAllGroup(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public notifyIdentityExpired(Z)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyIdentityExpired(Z)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public notifyMessageSendResult(Lims/bean/NDMessage;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
instanceof com/nd/android/u/controller/innerInterface/IMessageDisplay
ifeq L2
aload 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 4
L3:
iconst_2
istore 3
aload 1
getfield ims/bean/NDMessage/isSuccess Z
ifeq L4
aload 4
aload 1
getfield ims/bean/NDMessage/msgId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
iconst_0
istore 2
L5:
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getGenerateId()Ljava/lang/String; 0
ldc "<>"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 0
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getGenerateId()Ljava/lang/String; 0
aload 1
getfield ims/bean/NDMessage/isSuccess Z
invokespecial com/nd/android/u/imSdk/CommonNotifyImpl/proccessTrans(Ljava/lang/String;Z)V
L6:
aload 4
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
return
L2:
aload 1
getfield ims/bean/NDMessage/generateId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
ifnull L1
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L1
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
aload 1
getfield ims/bean/NDMessage/object Ljava/lang/Object;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
L8:
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iload 2
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 6
aload 6
ifnonnull L9
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "unknow message type by dboperation:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L7:
aload 1
getfield ims/bean/NDMessage/generateId Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/getCategoryFromGenerateId(Ljava/lang/String;)I
istore 2
goto L8
L9:
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iload 2
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 5
aload 5
ifnonnull L10
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "unknow message type by message"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L10:
aload 5
astore 4
aload 6
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
aload 1
getfield ims/bean/NDMessage/wseq I
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastMessageBywseq(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z 2
ifne L3
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "getLastMessageBywseq failed:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/wseq I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L4:
iload 3
istore 2
aload 1
getfield ims/bean/NDMessage/msgId J
ldc2_w 404L
lcmp
ifne L5
iload 3
istore 2
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "send message fail and relogin:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
new java/lang/StringBuilder
dup
ldc "send message fail and relogin:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
iload 3
istore 2
goto L5
.limit locals 7
.limit stack 4
.end method

.method public notifyOffline(Z)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifyOffline(Z)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setExpiredSid()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/setExpiredSid()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public setLocalMultiId(J)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
lload 1
putfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setSFSFromLBS(Ljava/lang/String;)V
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 1
putfield com/nd/android/u/controller/ChatConfiguration/SFSLBS Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
