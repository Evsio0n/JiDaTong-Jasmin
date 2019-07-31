.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage

.field public 'isValidInList' Z

.field public 'mvoiceJson' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mvoiceJson Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/isValidInList Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
.limit locals 1
.limit stack 3
.end method

.method private deleteRecentContact()V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 3
aload 3
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 4
aload 4
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L0
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCreateDate()J 0
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getGenerateId()Ljava/lang/String; 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
istore 2
iload 2
istore 1
iload 2
tableswitch 3
L1
L2
L3
L1
L3
L2
default : L4
L4:
iload 2
istore 1
L3:
aload 3
iload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isObjectValid()Z
ifeq L5
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/replaceItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L5:
return
L1:
iconst_1
istore 1
goto L3
L2:
iconst_2
istore 1
goto L3
L0:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 5
.limit stack 5
.end method

.method private insertRecentContact()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidFrom J
lcmp
ifeq L0
iconst_1
istore 1
L1:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/displayContent Ljava/lang/String;
ifnonnull L2
aload 0
ldc "error message"
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/displayContent Ljava/lang/String;
L2:
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/extraflag I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/msgId J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgServerId(J)V
aload 2
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/isAck I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setmAckType(I)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/parentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setParent(I)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setduration(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
iload 1
bipush 100
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/updateList(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;ZI)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 5
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/convertToContentValues()Landroid/content/ContentValues;
astore 1
aload 1
ldc "message"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/oriMessage Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "extraflag"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/extraflag I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "uidto"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidTo J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "local_mulptid"
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "mulptid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/multiId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "filename"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fileName Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/isFromLocal Z
ifeq L0
aload 1
ldc "filesize"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L1:
aload 1
ldc "filepath"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/filePath Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "fkey"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fKey Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "wseq"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/wseq I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "url"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "reserve"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/thumbnailPath Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "voicejson"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mvoiceJson Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "duration"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "acktype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/ackType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
L0:
aload 1
ldc "filesize"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public displayPortrait(Landroid/widget/ImageView;Z)V
iload 2
ifeq L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
return
L0:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
ifne L1
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/msgId J
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/msgId J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/msgId J
lconst_0
lcmp
ifeq L2
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
ifnull L3
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
ifnull L3
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
ifnonnull L0
aload 0
new com/nd/android/u/controller/messageProccess/ImsMessage_Person
dup
aload 0
invokespecial com/nd/android/u/controller/messageProccess/ImsMessage_Person/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dbCondition Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dbCondition Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getUpdateContentValues()Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/updateValue Landroid/content/ContentValues;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/convertToContentValues()Landroid/content/ContentValues;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/updateValue Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isChild()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isValidMessage(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
ifeq L0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/isValidInList Z
ifne L1
iconst_0
ireturn
L1:
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
lload 2
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected onDownloadFail(ILjava/lang/String;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/onDownloadFail(ILjava/lang/String;)V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
bipush 8
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/setExtraflagAndNotify(I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onDownloadProgress(JJ)V
aload 0
bipush 6
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/extraflag I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
lconst_0
lcmp
ifne L0
lload 3
lconst_0
lcmp
ifle L0
aload 0
lload 3
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/saveToDb()V
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "download onProgress:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
lconst_0
lcmp
ifle L1
ldc2_w 100L
lload 1
lmul
l2f
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
l2f
fdiv
fstore 5
aload 0
new java/lang/StringBuilder
dup
new java/text/DecimalFormat
dup
ldc "#"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 5
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/progressString Ljava/lang/String;
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
bipush 9
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 6
.limit stack 6
.end method

.method protected onDownloadSuccess(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/filePath Ljava/lang/String;
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "onSuccess:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
bipush 7
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/setExtraflagAndNotify(I)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onUploadFail(ILjava/lang/String;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/onUploadFail(ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mRepostKey Ljava/lang/String;
ifnull L0
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mRepostKey Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
L1:
aload 0
iconst_4
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/setExtraflagAndNotify(I)V
return
L0:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/filePath Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected onUploadProgress(JJ)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
lconst_0
lcmp
ifne L0
aload 0
lload 3
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
lconst_0
lcmp
ifle L1
ldc2_w 100L
lload 1
lmul
l2f
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
l2f
fdiv
fstore 6
fload 6
fstore 5
fload 6
ldc_w 99.0F
fcmpl
iflt L2
ldc_w 99.0F
fstore 5
L2:
aload 0
new java/lang/StringBuilder
dup
new java/text/DecimalFormat
dup
ldc "#"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 5
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/progressString Ljava/lang/String;
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
bipush 9
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 7
.limit stack 6
.end method

.method protected onUploadSuccess(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fKey Ljava/lang/String;
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "onSuccess:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fKey Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mRepostKey Ljava/lang/String;
ifnull L0
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mRepostKey Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
L1:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dataList Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dataList Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/ImageMessage
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fKey Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/packMsg(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/oriMessage Ljava/lang/String;
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
iconst_3
if_icmpne L3
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/MAX_RECORD_TIME I
if_icmpgt L3
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
sipush 1000
imul
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
L3:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/sendMessage()V 0
return
L0:
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/filePath Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
aload 0
aload 1
aload 1
ldc "extraflag"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/extraflag I
aload 0
aload 1
aload 1
ldc "uidto"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidTo J
aload 0
aload 1
aload 1
ldc "mulptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/multiId J
aload 0
aload 1
aload 1
ldc "filename"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fileName Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "filesize"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/totalSize J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/localFileSize J
aload 0
aload 1
aload 1
ldc "filepath"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/filePath Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "fkey"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/fKey Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "wseq"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/wseq I
aload 0
aload 1
aload 1
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/url Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "reserve"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/thumbnailPath Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "voicejson"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mvoiceJson Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "duration"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/duration I
aload 0
aload 1
aload 1
ldc "acktype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/ackType I
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/prepareMessage()Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method protected saveToDb()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/saveToDb()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUserInBackgroundThread(J)V 2
return
.limit locals 1
.limit stack 3
.end method

.method public send(Z)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
ifeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
iconst_2
if_icmpne L1
L0:
aload 0
bipush 32
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/IMSCmd I
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
iconst_2
if_icmpeq L4
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageContentType I
ifne L3
L4:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/packMsg(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/oriMessage Ljava/lang/String;
L3:
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/send(Z)V
return
L1:
aload 0
sipush 20480
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/IMSCmd I
goto L2
.limit locals 2
.limit stack 3
.end method

.method public setDefaultValue(J)V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
aload 0
lload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/setDefaultValue(J)V
return
.limit locals 3
.limit stack 3
.end method

.method public setOriMessage(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/setOriMessage(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTypeId(Ljava/lang/Object;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
instanceof java/lang/Long
ifeq L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L3
aload 0
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidTo J
return
L3:
aload 0
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/uidFrom J
return
L2:
aload 1
instanceof java/lang/String
ifeq L1
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/dbCondition Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method public setVoiceJson(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/mvoiceJson Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L2:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/deleteRecentContact()V
return
L1:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/extraflag I
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/msgStateChanged(Ljava/lang/String;I)V
return
L0:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/insertRecentContact()V
return
L3:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/getFriendId()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 3
.end method
