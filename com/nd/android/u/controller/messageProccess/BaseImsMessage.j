.bytecode 50.0
.class public synchronized com/nd/android/u/controller/messageProccess/BaseImsMessage
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageProccess
.inner class inner com/nd/android/u/controller/messageProccess/BaseImsMessage$1

.field protected 'dbOperation' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field protected 'displayMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mShareFile' Lcom/nd/android/u/controller/innerInterface/IShareFile;

.method public <init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 2
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iload 2
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/mShareFile Lcom/nd/android/u/controller/innerInterface/IShareFile;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doAction(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;ILjava/lang/String;)Z
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 4
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/mShareFile Lcom/nd/android/u/controller/innerInterface/IShareFile;
ifnonnull L0
aload 0
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iload 2
iload 4
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage/mShareFile Lcom/nd/android/u/controller/innerInterface/IShareFile;
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/mShareFile Lcom/nd/android/u/controller/innerInterface/IShareFile;
ifnonnull L1
iconst_0
ireturn
L1:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
new com/nd/android/u/controller/messageProccess/BaseImsMessage$1
dup
aload 0
aload 3
aload 1
iload 2
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage$1/<init>(Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;Ljava/lang/String;Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/excuteRequest(Ljava/lang/Runnable;)V
iconst_1
ireturn
.limit locals 5
.limit stack 7
.end method

.method public ackAllMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 1
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iload 1
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 2
aload 2
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTypeId(Ljava/lang/Object;)V 1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L0
return
L0:
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
return
.limit locals 3
.limit stack 4
.end method

.method public ackMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
invokestatic ims/IMSdk/ackReceiveMessage(Lims/bean/NDMessage;)V
return
.limit locals 1
.limit stack 1
.end method

.method public deleteAllMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/deleteAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/updateRecentContactItem(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 11
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public deleteMessage()Z
aload 0
invokevirtual com/nd/android/u/controller/messageProccess/BaseImsMessage/ackMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
istore 1
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/updateRecentContactItem(I)V 1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 10
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
L0:
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public doDownload()Z
iconst_0
istore 1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier; 0
astore 3
aload 3
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
ldc "CHAT"
ldc "doDownload:empty url"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
iload 1
ireturn
L0:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 4
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/contains(Ljava/lang/Object;Ljava/lang/String;)Z
ifeq L2
ldc "CHAT"
ldc "doDownload:url downloading"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
aload 0
aload 3
iconst_1
aload 4
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/doAction(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;ILjava/lang/String;)Z
istore 2
iload 2
istore 1
iload 2
ifne L1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method

.method public doRepost()Z
iconst_0
istore 1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier; 0
astore 3
aload 3
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
ldc "CHAT"
ldc "doRepost:empty url"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
iload 1
ireturn
L0:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 4
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/contains(Ljava/lang/Object;Ljava/lang/String;)Z
ifeq L2
ldc "download"
ldc "doRepost:file uploading"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
aload 0
aload 3
iconst_2
aload 4
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/doAction(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;ILjava/lang/String;)Z
istore 2
iload 2
istore 1
iload 2
ifne L1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method

.method public doUpload()Z
iconst_0
istore 4
iconst_0
istore 2
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier; 0
astore 6
iload 2
istore 1
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/isGroup()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 3
iload 3
bipush 80
if_icmpeq L1
iload 2
istore 1
iload 3
sipush 20481
if_icmpne L0
L1:
iconst_3
istore 1
L0:
aload 6
iload 1
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
astore 7
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
ldc "CHAT"
ldc "doUpload:empty url"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L3:
iload 4
ireturn
L2:
new java/io/File
dup
aload 7
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 8
aload 8
ifnull L4
aload 8
invokevirtual java/io/File/exists()Z
ifeq L4
aload 8
invokevirtual java/io/File/length()J
lconst_0
lcmp
ifne L5
L4:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
ldc "CHAT"
ldc "doUpload:empty file"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 7
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/contains(Ljava/lang/Object;Ljava/lang/String;)Z
ifeq L6
ldc "download"
ldc "doUpload:file uploading"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L6:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
aload 0
aload 6
iload 1
aload 7
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/doAction(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;ILjava/lang/String;)Z
istore 5
iload 5
istore 4
iload 5
ifne L3
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
iload 5
ireturn
.limit locals 9
.limit stack 4
.end method

.method public getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isExist()Z
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lstore 1
lload 1
lconst_0
lcmp
ifne L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/isExist(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "repeat message:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
lload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/isExistByMsgId(J)Z 2
ifeq L1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "repeat message:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public notifySendResult(ZJ)V
iconst_0
istore 4
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
lload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
L1:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
return
L0:
iconst_2
istore 4
goto L1
.limit locals 5
.limit stack 3
.end method

.method public receiveMessage(Z)Z
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getGenerateId()Ljava/lang/String; 0
pop
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isNeedSaveDb()Z 0
ifeq L0
aload 0
invokevirtual com/nd/android/u/controller/messageProccess/BaseImsMessage/isExist()Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/prepareMessage()Z 0
ifeq L1
aload 0
invokevirtual com/nd/android/u/controller/messageProccess/BaseImsMessage/ackMessage()V
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isNeedSaveDb()Z 0
ifeq L2
aload 0
invokevirtual com/nd/android/u/controller/messageProccess/BaseImsMessage/saveToDb()Z
ifne L2
ldc "DB"
new java/lang/StringBuilder
dup
ldc "save to db fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
iload 1
ifeq L3
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/showNotify()V 0
L3:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public saveToDb()Z
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lconst_0
lcmp
ifne L0
invokestatic ims/IMSdk/computeServertime()J
lstore 1
invokestatic ims/IMSdk/getWseq()I
i2l
lstore 3
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
lload 1
bipush 32
lshl
lload 3
ladd
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
astore 7
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/isExist(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
istore 6
iload 6
istore 5
iload 6
ifeq L2
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/updateRecentContactItem(I)V 1
iload 6
istore 5
L2:
iload 5
ireturn
L1:
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
istore 6
iload 6
istore 5
iload 6
ifeq L2
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/updateRecentContactItem(I)V 1
iload 6
ireturn
.limit locals 8
.limit stack 5
.end method

.method public sendMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setExtraflagAndNotify(I)V 1
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
iconst_1
putfield ims/bean/NDMessage/isPriority Z
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 1
.limit stack 2
.end method
