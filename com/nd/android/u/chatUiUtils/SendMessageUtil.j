.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/SendMessageUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static notifyOtherMessage(IILjava/lang/Object;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
iload 1
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iload 0
aload 3
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 4
.limit stack 3
.end method

.method public static repost(Ljava/lang/String;Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
iconst_0
istore 3
aload 0
invokestatic com/nd/android/u/controller/utils/CommonUtils/getCategoryFromGenerateId(Ljava/lang/String;)I
istore 2
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iload 2
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 4
aload 4
ifnonnull L0
L1:
return
L0:
aload 4
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setGenerateId(Ljava/lang/String;)V 1
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iload 2
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 0
aload 0
ifnull L1
aload 4
ifnull L1
aload 0
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
astore 0
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/groupType I
istore 2
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
astore 5
aload 4
aload 0
invokestatic com/nd/android/u/chatUtil/ReflectUtil/copy(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getId()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDefaultValue(J)V 2
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
iload 2
putfield ims/bean/NDMessage/groupType I
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
aload 5
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
iconst_4
if_icmpne L2
iconst_1
istore 3
L2:
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 2
iload 2
iconst_3
if_icmpeq L3
iload 2
sipush 20480
if_icmpeq L3
iload 2
bipush 80
if_icmpeq L3
iload 2
sipush 20481
if_icmpne L4
L3:
iconst_1
istore 3
L4:
aload 0
iload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/send(Z)V 1
return
.limit locals 6
.limit stack 4
.end method

.method public static sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
astore 6
aload 6
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getId()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDefaultValue(J)V 2
aload 6
iload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
iconst_1
istore 5
iload 0
lookupswitch
0 : L5
2 : L6
3 : L7
6 : L8
80 : L9
default : L10
L10:
return
L5:
aload 6
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
iconst_0
istore 5
L11:
aload 6
iload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/send(Z)V 1
aload 4
instanceof com/nd/android/u/controller4xy/XYPeronDataSupplier
ifeq L10
aload 4
checkcast com/nd/android/u/controller4xy/XYPeronDataSupplier
invokevirtual com/nd/android/u/controller4xy/XYPeronDataSupplier/getMessageSource()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getId()J 0
aload 1
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendSourceMessage(JLjava/lang/String;)V
return
L7:
aload 2
aload 6
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/setFileName(Ljava/io/File;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L10
aload 6
iload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDuration(I)V 1
aload 6
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
goto L11
L9:
aload 2
aload 6
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/setFileName(Ljava/io/File;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L10
aload 6
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
goto L11
L6:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 2
aload 6
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/setFileName(Ljava/io/File;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L10
new com/nd/android/u/controller/bean/ImageMessage
dup
invokespecial com/nd/android/u/controller/bean/ImageMessage/<init>()V
astore 1
aload 1
iconst_0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setPosition(I)V
aload 1
sipush 259
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setType(I)V
aload 1
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
aload 1
aload 2
invokevirtual java/io/File/length()J
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setLength(J)V
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 6
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_img I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
goto L11
L0:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 0
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
ifnonnull L3
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "send message cat fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L2:
astore 2
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "send message cat fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L3:
new com/nd/android/u/controller/bean/ImageMessage
dup
invokespecial com/nd/android/u/controller/bean/ImageMessage/<init>()V
astore 2
aload 2
iconst_0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setPosition(I)V
aload 2
sipush 257
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setType(I)V
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDisPlayContent(Ljava/lang/String;)V 1
L4:
iconst_0
istore 5
goto L11
L8:
aload 6
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
iconst_0
istore 5
goto L11
.limit locals 7
.limit stack 3
.end method

.method public static sendSourceMessage(JLjava/lang/String;)V
new com/nd/android/u/bean4xy/DisplayMessage_Person_Source
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person_Source/<init>()V
astore 3
aload 3
lload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person_Source/setDefaultValue(J)V
aload 3
aload 2
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person_Source/setDisPlayContent(Ljava/lang/String;)V
aload 3
iconst_0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person_Source/send(Z)V
return
.limit locals 4
.limit stack 3
.end method

.method private static setFileName(Ljava/io/File;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/exists()Z
ifne L1
L0:
ldc "CHAT"
ldc "send message audio fail:null file"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 1
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFileName(Ljava/lang/String;)V 1
aload 1
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFilePath(Ljava/lang/String;)V 1
aload 1
aload 0
invokevirtual java/io/File/length()J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTotalSize(J)V 2
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method
