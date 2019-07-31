.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/PublicNumberMessageParser
.super java/lang/Object
.implements ims/outInterface/IMessageParserInterface
.inner class public PublicNumberParseCmd inner com/nd/android/u/publicNumber/controller/PublicNumberMessageParser$PublicNumberParseCmd outer com/nd/android/u/publicNumber/controller/PublicNumberMessageParser

.field public static final 'ACKPSPGROUPACKTPTY' I = -10


.field public static final 'ACKPSPUSERACKTPTY' I = -9


.field private 'cmdutil' Lims/utils/ParseCmdUtil;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic ims/utils/ParseCmdUtil/getInstance()Lims/utils/ParseCmdUtil;
putfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
return
.limit locals 1
.limit stack 2
.end method

.method public CMD_65142(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getwStatusCode()I
istore 2
iload 2
sipush 200
if_icmpne L0
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 5
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 5
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
iconst_2
invokevirtual ims/utils/ParseCmdUtil/moveIndex(I)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getLong()J
lstore 3
invokestatic ims/manager/MessageACKManager/getInstance()Lims/manager/MessageACKManager;
aload 1
invokevirtual ims/bean/MsgData/getDwSeq()I
lload 3
ldc com/nd/android/u/publicNumber/controller/PublicNumberMessageParser$PublicNumberParseCmd
iconst_1
invokevirtual ims/manager/MessageACKManager/AckMessage(IJLjava/lang/Class;Z)V
return
L0:
ldc "sendmessage trace"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "rec fail stautscode 65088:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
invokestatic ims/manager/MessageACKManager/getInstance()Lims/manager/MessageACKManager;
aload 1
invokevirtual ims/bean/MsgData/getDwSeq()I
lconst_0
ldc com/nd/android/u/publicNumber/controller/PublicNumberMessageParser$PublicNumberParseCmd
iconst_0
invokevirtual ims/manager/MessageACKManager/AckMessage(IJLjava/lang/Class;Z)V
return
.limit locals 6
.limit stack 6
.end method

.method public D_CMD_65137(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 3
aload 1
invokevirtual ims/bean/MsgData/getwStatusCode()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 3
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
iload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/pspNotifySubscriberCallBack(Ljava/lang/String;II)V
return
.limit locals 4
.limit stack 4
.end method

.method public D_CMD_65138(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 3
aload 1
invokevirtual ims/bean/MsgData/getwStatusCode()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 3
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
iload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/pspNotifyUnsubscriberCallBack(Ljava/lang/String;II)V
return
.limit locals 4
.limit stack 4
.end method

.method public D_CMD_65393(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 1
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
istore 3
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
istore 4
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberPermissionManager/getFixPspGroupSetType(Ljava/lang/String;)I
ifne L0
L1:
return
L0:
iconst_0
istore 2
L2:
iload 2
iload 4
if_icmpge L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getLong()J
lstore 6
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getInt()I
istore 5
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
astore 8
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
aload 1
iload 3
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 9
aload 9
iload 5
i2l
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 9
lload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 9
aload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 9
bipush -10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 10
.limit stack 4
.end method

.method public D_CMD_65394(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 1
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
istore 3
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
istore 4
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberPermissionManager/getFixPspGroupSetType(Ljava/lang/String;)I
ifne L0
L1:
return
L0:
iconst_0
istore 2
L2:
iload 2
iload 4
if_icmpge L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getLong()J
lstore 6
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getInt()I
istore 5
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
astore 8
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
aload 1
iload 3
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 9
aload 9
iload 5
i2l
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 9
lload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 9
aload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 9
bipush -9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 10
.limit stack 4
.end method

.method public D_CMD_65395(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 3
aload 1
invokevirtual ims/bean/MsgData/getwStatusCode()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 3
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
iload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/pspNotifySubscriber(Ljava/lang/String;II)V
return
.limit locals 4
.limit stack 4
.end method

.method public D_CMD_65396(Lims/bean/MsgData;)V
aload 1
invokevirtual ims/bean/MsgData/getBody()[B
astore 3
aload 1
invokevirtual ims/bean/MsgData/getwStatusCode()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
aload 3
invokevirtual ims/utils/ParseCmdUtil/setSrc([B)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/cmdutil Lims/utils/ParseCmdUtil;
invokevirtual ims/utils/ParseCmdUtil/getShort()I
iload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/pspNotifyUnsubscriber(Ljava/lang/String;II)V
return
.limit locals 4
.limit stack 4
.end method

.method public parseMessage(ILims/bean/MsgData;)V
iload 1
lookupswitch
65137 : L0
65138 : L1
65142 : L2
65393 : L3
65394 : L4
65395 : L5
65396 : L6
default : L7
L7:
return
L3:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65393(Lims/bean/MsgData;)V
return
L4:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65394(Lims/bean/MsgData;)V
return
L5:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65395(Lims/bean/MsgData;)V
return
L6:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65396(Lims/bean/MsgData;)V
return
L2:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/CMD_65142(Lims/bean/MsgData;)V
return
L0:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65137(Lims/bean/MsgData;)V
return
L1:
aload 0
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/D_CMD_65138(Lims/bean/MsgData;)V
return
.limit locals 3
.limit stack 2
.end method

.method public pspNotifySubscriber(Ljava/lang/String;II)V
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pspNotifySubscriber\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ifnonnull L0
ldc "public"
ldc "error groupkey"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 1
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
astore 4
aload 4
iconst_1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 5
aload 5
bipush 17
putfield android/os/Message/what I
aload 5
sipush 200
putfield android/os/Message/arg1 I
aload 5
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 5
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
aload 4
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/loginInit()V
return
.limit locals 6
.limit stack 3
.end method

.method public pspNotifySubscriberCallBack(Ljava/lang/String;II)V
aload 1
ldc "FOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L0:
iload 3
sipush 201
if_icmpne L1
sipush 200
istore 3
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sub psp success:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 1
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
astore 4
aload 4
iconst_1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L2
ldc "CHAT"
ldc "pspNotifySubscriberCallBack insert db fail"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfoFromServer(Ljava/lang/String;)V
aload 4
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/loginInit()V
L3:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 4
aload 4
bipush 17
putfield android/os/Message/what I
aload 4
iload 3
putfield android/os/Message/arg1 I
aload 4
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 4
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
L1:
iload 3
sipush 404
if_icmpne L4
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sub psp fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L4:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sub psp fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
goto L3
.limit locals 5
.limit stack 3
.end method

.method public pspNotifyUnsubscriber(Ljava/lang/String;II)V
aload 1
ifnonnull L0
ldc "public"
ldc "error groupkey"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumber(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public pspNotifyUnsubscriberCallBack(Ljava/lang/String;II)V
aload 1
ldc "UNFOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iload 3
sipush 200
if_icmpne L1
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsub psp success:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumber(Ljava/lang/String;)V
L0:
return
L1:
iload 3
sipush 404
if_icmpne L2
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsub psp fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
L2:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsub psp fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 4
aload 4
bipush 18
putfield android/os/Message/what I
aload 4
iload 3
putfield android/os/Message/arg1 I
aload 4
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 4
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 5
.limit stack 3
.end method
