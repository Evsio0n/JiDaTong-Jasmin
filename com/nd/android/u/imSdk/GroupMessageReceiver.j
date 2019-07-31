.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/GroupMessageReceiver
.super java/lang/Object
.implements ims/outInterface/IGroupMsgNotify

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createGroupMessage(ILjava/lang/String;JIJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 1
iload 0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
iload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 1
lload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 1
lload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 1
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 1
lload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 1
iload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
aload 1
lload 10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMultiId(J)V 2
aload 1
areturn
.limit locals 13
.limit stack 3
.end method

.method public receiveAppMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/messageContentType I
istore 3
iload 3
istore 2
iload 3
sipush 200
if_icmpne L2
bipush 100
istore 2
L2:
aload 1
getfield ims/bean/NDMessage/groupType I
istore 3
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 7
aload 1
getfield ims/bean/NDMessage/createDate J
l2i
istore 4
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 5
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 1
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 7
iload 3
lload 5
iload 2
iload 4
aload 1
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getGroupAppMessage(Ljava/lang/String;IJIILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
ifnull L1
iload 2
bipush 100
if_icmpne L1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 8
.limit stack 8
.end method

.method public receiveAudioMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
lstore 4
aload 1
getfield ims/bean/NDMessage/multiId J
lstore 6
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 8
lload 6
lload 4
lcmp
ifne L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 8
lcmp
ifeq L1
L2:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 12
aload 1
getfield ims/bean/NDMessage/groupType I
istore 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 12
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupMsgReceiveType(Ljava/lang/String;)I 1
istore 3
iconst_1
istore 10
iload 3
ifeq L1
iload 3
iconst_2
if_icmpne L3
iconst_0
istore 10
L3:
aload 1
getfield ims/bean/NDMessage/fileOwner Ljava/lang/String;
astore 13
aload 1
getfield ims/bean/NDMessage/fKey Ljava/lang/String;
astore 11
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
iconst_3
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 11
aload 13
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 13
iload 2
aload 12
lload 8
iconst_3
aload 1
getfield ims/bean/NDMessage/createDate J
aload 13
aload 1
getfield ims/bean/NDMessage/msgId J
aload 1
getfield ims/bean/NDMessage/multiId J
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/GroupMessageReceiver/createGroupMessage(ILjava/lang/String;JIJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 12
aload 12
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 12
aload 13
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
aload 12
aload 11
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFkey(Ljava/lang/String;)V 1
aload 12
aload 1
getfield ims/bean/NDMessage/ackType I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
aload 12
aload 1
getfield ims/bean/NDMessage/duration I
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDuration(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iload 10
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 14
.limit stack 13
.end method

.method public receiveGroupXmlNotifyMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
return
L0:
aload 1
getfield ims/bean/NDMessage/groupType I
istore 2
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 7
aload 1
getfield ims/bean/NDMessage/createDate J
l2i
istore 3
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 5
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 8
aload 1
getfield ims/bean/NDMessage/messageContentType I
istore 4
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 8
aload 7
iload 2
iload 3
iload 4
lload 5
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/createGroupxmlMessage(Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
bipush -3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 9
.limit stack 8
.end method

.method public receiveShareFileMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
iconst_1
istore 3
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 12
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 12
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupMsgReceiveType(Ljava/lang/String;)I 1
istore 2
iload 2
ifeq L1
iload 2
iconst_2
if_icmpne L2
iconst_0
istore 3
L2:
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 4
aload 1
getfield ims/bean/NDMessage/fKey Ljava/lang/String;
astore 10
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 6
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 8
aload 1
getfield ims/bean/NDMessage/groupType I
istore 2
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
bipush 80
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 10
new java/lang/StringBuilder
dup
lload 4
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
bipush 80
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 11
iload 2
aload 12
lload 4
bipush 80
lload 6
aload 11
lload 8
lconst_0
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/GroupMessageReceiver/createGroupMessage(ILjava/lang/String;JIJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 12
aload 12
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 12
aload 1
getfield ims/bean/NDMessage/fileName Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFileName(Ljava/lang/String;)V 1
aload 12
aload 11
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
aload 12
aload 10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFkey(Ljava/lang/String;)V 1
aload 12
aload 1
getfield ims/bean/NDMessage/totalSize J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTotalSize(J)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iload 3
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 13
.limit stack 13
.end method

.method public receiveTextMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
lstore 8
aload 1
getfield ims/bean/NDMessage/multiId J
lstore 4
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 6
new java/lang/StringBuilder
dup
ldc "receive message:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",uidFrom="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/uidFrom J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/messageType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/msgId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",mulptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield ims/bean/NDMessage/multiId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
lload 4
lload 8
lcmp
ifne L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 6
lcmp
ifne L2
ldc "IMS_ERROR"
ldc "same mult_id"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
ldc "server mult_id="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",localMultiId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 8
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
aload 1
invokestatic com/nd/android/u/allCommonUtils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 11
aload 1
getfield ims/bean/NDMessage/groupType I
istore 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 11
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupMsgReceiveType(Ljava/lang/String;)I 1
istore 3
iconst_1
istore 10
iload 3
ifeq L1
iload 3
iconst_2
if_icmpne L3
iconst_0
istore 10
L3:
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 8
iload 2
aload 11
lload 6
aload 1
getfield ims/bean/NDMessage/messageContentType I
lload 8
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/msgId J
lload 4
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/GroupMessageReceiver/createGroupMessage(ILjava/lang/String;JIJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
lload 6
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L4
iconst_0
istore 10
L4:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iload 10
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 12
.limit stack 13
.end method

.method public receiveUnitMessage(Lims/bean/NDMessage;)V
.catch org/json/JSONException from L0 to L1 using L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L3
L4:
return
L3:
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
L0:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
getfield ims/bean/NDMessage/groupType I
aload 1
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 1
getfield ims/bean/NDMessage/uidFrom J
aload 1
getfield ims/bean/NDMessage/messageContentType I
aload 1
getfield ims/bean/NDMessage/createDate J
aload 2
aload 1
getfield ims/bean/NDMessage/msgId J
aload 1
getfield ims/bean/NDMessage/multiId J
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/GroupMessageReceiver/createGroupMessage(ILjava/lang/String;JIJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 3
.limit stack 13
.end method
