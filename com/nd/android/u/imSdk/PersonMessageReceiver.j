.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/PersonMessageReceiver
.super java/lang/Object
.implements ims/outInterface/IPersonMessageNotify

.field private static final 'UTF8_HEAD' Ljava/lang/String; = "<?xml version='1.0' encoding='utf-8' ?>"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static assembleVoiceJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "fileOwner"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "fkey"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "sessionId"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 3
.end method

.method public static createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 13
iload 0
lload 1
lload 3
lload 5
aload 7
lload 8
lload 10
iload 12
aload 13
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/setMessageData(IJJJLjava/lang/String;JJILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 13
areturn
.limit locals 14
.limit stack 14
.end method

.method public static createXml()Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 1
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 0
L0:
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 1
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 1
ldc "body"
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "fmt"
aastore
dup
iconst_1
ldc "type"
aastore
dup
iconst_2
ldc "appid"
aastore
dup
iconst_3
ldc "permcode"
aastore
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "3"
aastore
dup
iconst_1
ldc "1"
aastore
dup
iconst_2
ldc "681"
aastore
dup
iconst_3
ldc "102"
aastore
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "uid"
bipush 123
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
ldc "course_id"
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/testId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
ldc "topic_id"
ldc_w 314922
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
ldc "timestamp"
ldc_w 145268445
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 2
aload 1
ldc "app"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "msg"
aastore
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
aload 1
ldc "total"
ldc "15"
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc ""
ldc "app"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L1:
aload 0
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L1
L4:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 7
.end method

.method public static getContentFromERPJson(Ljava/lang/String;JI)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aconst_null
astore 5
aload 5
astore 4
iload 3
bipush 100
if_icmpne L4
aload 5
astore 4
lload 1
lconst_0
lcmp
ifle L4
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 5
astore 4
aload 0
ifnull L4
L3:
aload 0
ldc "body"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L4:
aload 4
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method private static getString(Ljava/io/StringWriter;)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
areturn
L0:
aload 0
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
ldc "<?xml version='1.0' encoding='utf-8' ?>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
iconst_0
istore 4
aload 2
arraylength
istore 5
L0:
iload 4
iload 5
if_icmplt L1
return
L1:
aload 0
ldc ""
aload 2
iload 4
aaload
aload 3
iload 4
aaload
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
iload 4
iconst_1
iadd
istore 4
goto L0
.limit locals 6
.limit stack 5
.end method

.method private static injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 0
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 1
pop
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 3
.limit stack 3
.end method

.method private parseSpecialMessage(Ljava/lang/String;JJIJJI)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 1
ifnull L5
iload 6
sipush 193
if_icmpeq L5
iload 6
sipush 196
if_icmpne L6
L5:
iconst_1
ireturn
L6:
lload 2
lconst_0
lcmp
ifle L7
iload 6
bipush 100
if_icmpne L7
aload 1
lload 2
iload 6
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/getContentFromERPJson(Ljava/lang/String;JI)Ljava/lang/String;
astore 14
aload 14
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
iconst_0
lload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 4
aload 14
lload 7
lload 9
iload 11
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
iconst_0
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iconst_1
ireturn
L7:
iload 6
sipush 197
if_icmpne L8
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 14
aload 14
bipush 27
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 15
aload 15
ldc "uidFrom"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 15
ldc "type"
iload 6
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "success"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
ifne L3
L1:
iconst_1
ireturn
L3:
aload 15
ldc "fileKey"
aload 1
ldc "file_key"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 15
ldc "msgId"
aload 1
ldc "msg_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
L4:
aload 14
aload 15
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 14
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
L8:
iload 6
bipush 100
if_icmpeq L9
iload 6
sipush 200
if_icmpeq L9
iload 6
bipush 101
if_icmpne L10
L9:
iload 6
bipush 101
if_icmpne L11
aload 1
ldc "<app business=\"ERP_TASK\">"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L11
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 12
lload 2
lload 12
lcmp
ifne L12
iconst_1
ireturn
L12:
iload 6
lload 2
lload 12
lload 4
aload 1
lload 7
lload 9
iload 11
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iconst_1
ireturn
L11:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 1
lload 2
lload 4
l2i
iload 6
lload 7
lload 9
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/createAppMessage(Ljava/lang/String;JIIJJ)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
ifnull L10
aload 1
iload 11
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iconst_1
ireturn
L10:
iconst_0
ireturn
.limit locals 16
.limit stack 13
.end method

.method public static setMessageData(IJJJLjava/lang/String;JJILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 13
iload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 13
lload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 13
lload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 13
lload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 13
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 13
lload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 13
lload 10
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMultiId(J)V 2
aload 13
iload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setAckType(I)V 1
return
.limit locals 14
.limit stack 3
.end method

.method public static setMessageData(Lims/bean/NDMessage;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield ims/bean/NDMessage/uidFrom J
lstore 4
aload 0
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 12
aload 0
getfield ims/bean/NDMessage/createDate J
lstore 6
aload 0
getfield ims/bean/NDMessage/messageContentType I
istore 2
aload 0
getfield ims/bean/NDMessage/msgId J
lstore 8
aload 0
getfield ims/bean/NDMessage/multiId J
lstore 10
aload 0
getfield ims/bean/NDMessage/ackType I
istore 3
iload 2
lload 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 6
aload 12
lload 8
lload 10
iload 3
aload 1
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/setMessageData(IJJJLjava/lang/String;JJILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 13
.limit stack 14
.end method

.method getTest(Lims/bean/NDMessage;)V
aload 1
ldc "{\"appid\":11,\"permcode\":\"1110\",\"msgtype\":0,\"msgbody\":\"\u751f\u65e5\u5feb\u4e50\"}"
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 1
lconst_0
putfield ims/bean/NDMessage/uidFrom J
aload 1
bipush 100
putfield ims/bean/NDMessage/messageContentType I
aload 1
iconst_0
putfield ims/bean/NDMessage/ackType I
return
.limit locals 2
.limit stack 3
.end method

.method public notifyMultptOffline(J)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
bipush 31
putfield android/os/Message/what I
aload 3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 3
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 4
.limit stack 3
.end method

.method public notifyOtherPointReceiveFile(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
new java/lang/StringBuilder
dup
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/OP_PC_RECEIVED_FILE I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield ims/bean/NDMessage/fileName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
bipush 80
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 1
getfield ims/bean/NDMessage/uidTo J
aload 1
getfield ims/bean/NDMessage/createDate J
aload 2
lconst_0
lconst_0
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 3
aload 3
ifnull L1
aload 3
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
aload 3
aload 1
getfield ims/bean/NDMessage/fileName Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFileName(Ljava/lang/String;)V 1
aload 3
iconst_1
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 4
.limit stack 13
.end method

.method public notifySignatureChanged(JLjava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 1
aload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifySignatureChanged(JLjava/lang/String;)V 3
return
.limit locals 4
.limit stack 4
.end method

.method public notifySysavaterChanged(JI)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 1
iload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/notifySysavaterChanged(JI)V 3
return
.limit locals 4
.limit stack 4
.end method

.method public receiveAudioMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
return
L0:
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 4
aload 1
getfield ims/bean/NDMessage/multiId J
lstore 6
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 8
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsBlackList(J)Z 2
ifeq L1
aload 1
invokestatic ims/IMSdk/ackReceiveMessage(Lims/bean/NDMessage;)V
return
L1:
aload 1
getfield ims/bean/NDMessage/fKey Ljava/lang/String;
astore 12
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 10
aload 1
getfield ims/bean/NDMessage/ackType I
istore 2
aload 1
getfield ims/bean/NDMessage/duration I
istore 3
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
iconst_3
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 12
aload 1
getfield ims/bean/NDMessage/fileOwner Ljava/lang/String;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 13
sipush 20480
lload 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 10
ldc ""
lload 8
lload 6
iload 2
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 14
aload 14
aload 13
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
aload 14
aload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFkey(Ljava/lang/String;)V 1
aload 14
iload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDuration(I)V 1
aload 14
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 14
aload 1
getfield ims/bean/NDMessage/fileOwner Ljava/lang/String;
aload 12
aload 1
getfield ims/bean/NDMessage/generateId Ljava/lang/String;
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/assembleVoiceJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setVoiceJson(Ljava/lang/String;)V 1
aload 14
aload 1
getfield ims/bean/NDMessage/fileName Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFileName(Ljava/lang/String;)V 1
aload 14
aload 1
getfield ims/bean/NDMessage/totalSize J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTotalSize(J)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 14
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 15
.limit stack 13
.end method

.method public receiveFileMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
return
L0:
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsBlackList(J)Z 2
ifeq L1
aload 1
invokestatic ims/IMSdk/ackReceiveMessage(Lims/bean/NDMessage;)V
return
L1:
aload 1
getfield ims/bean/NDMessage/multiId J
lstore 5
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 7
aload 1
getfield ims/bean/NDMessage/fKey Ljava/lang/String;
astore 11
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 9
aload 1
getfield ims/bean/NDMessage/ackType I
istore 2
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
bipush 80
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 11
aload 1
getfield ims/bean/NDMessage/fileOwner Ljava/lang/String;
bipush 80
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 12
sipush 20481
lload 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 9
ldc ""
lload 7
lload 5
iload 2
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 13
aload 13
aload 12
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
aload 13
bipush 80
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 13
aload 1
getfield ims/bean/NDMessage/fileName Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFileName(Ljava/lang/String;)V 1
aload 13
aload 11
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFkey(Ljava/lang/String;)V 1
aload 13
aload 1
getfield ims/bean/NDMessage/totalSize J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTotalSize(J)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 13
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 14
.limit stack 13
.end method

.method public receiveOtherPointMessage(Lims/bean/NDMessage;)V
aload 1
ldc_w 36868
putfield ims/bean/NDMessage/messageContentType I
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L1:
return
L0:
aload 1
getfield ims/bean/NDMessage/messageContentType I
ldc_w 36868
if_icmpne L2
aload 1
iconst_0
putfield ims/bean/NDMessage/messageContentType I
L2:
aload 1
getfield ims/bean/NDMessage/messageContentType I
istore 2
aload 1
getfield ims/bean/NDMessage/uidTo J
lstore 3
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 5
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 9
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 7
iload 2
iconst_3
if_icmpeq L1
iload 2
iconst_1
if_icmpeq L1
iload 2
bipush 65
if_icmpeq L1
iload 2
sipush 195
if_icmpeq L1
iload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 3
lload 5
aload 9
lload 7
lconst_0
aload 1
getfield ims/bean/NDMessage/ackType I
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
iconst_1
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 10
.limit stack 13
.end method

.method public receiveSystemMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifeq L0
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public receiveTextMessage(Lims/bean/NDMessage;)V
aload 1
getfield ims/bean/NDMessage/uidFrom J
lstore 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 5
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsBlackList(J)Z 2
ifeq L0
aload 1
invokestatic ims/IMSdk/ackReceiveMessage(Lims/bean/NDMessage;)V
L1:
return
L0:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 1
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccessMessage(Lims/bean/NDMessage;)Z
ifne L1
aload 1
getfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
astore 13
aload 1
getfield ims/bean/NDMessage/createDate J
lstore 7
aload 1
getfield ims/bean/NDMessage/messageContentType I
istore 2
aload 1
getfield ims/bean/NDMessage/msgId J
lstore 9
aload 1
getfield ims/bean/NDMessage/multiId J
lstore 11
aload 1
getfield ims/bean/NDMessage/ackType I
istore 4
new java/lang/StringBuilder
dup
ldc "receive message:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",uidFrom="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 9
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",mulptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 11
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/IMLogUtils/debug(Ljava/lang/String;)V
aload 13
astore 1
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/testId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
bipush 101
istore 2
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createXml()Ljava/lang/String;
astore 1
L2:
aload 0
aload 1
lload 5
lload 7
iload 2
lload 9
lload 11
iload 4
invokespecial com/nd/android/u/imSdk/PersonMessageReceiver/parseSpecialMessage(Ljava/lang/String;JJIJJI)Z
ifne L1
iconst_0
istore 3
iload 2
lookupswitch
0 : L3
195 : L4
default : L5
L5:
return
L3:
iload 2
lload 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lload 7
aload 1
lload 9
lload 11
iload 4
invokestatic com/nd/android/u/imSdk/PersonMessageReceiver/createPersonMessage(IJJJLjava/lang/String;JJI)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
iload 3
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
L4:
iconst_1
istore 3
goto L3
.limit locals 14
.limit stack 13
.end method

.method public showMultiLoginStatus(J[I)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 4
aload 4
bipush 25
putfield android/os/Message/what I
aload 4
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "MULTI_POINTS"
aload 3
invokevirtual android/os/Bundle/putIntArray(Ljava/lang/String;[I)V
aload 4
aload 5
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 4
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 6
.limit stack 3
.end method

.method public showOnlineStatus(JILjava/lang/String;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 4
aload 4
bipush 24
putfield android/os/Message/what I
aload 4
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 4
iload 3
putfield android/os/Message/arg1 I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 4
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 5
.limit stack 3
.end method
