.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage

.field private static final 'FMT_LINK' I = 2


.field private static final 'FMT_TEXT' I = 0


.field public 'appCode' Ljava/lang/String;

.field public 'appId' I

.field public 'appMsgType' I

.field public 'appType' Ljava/lang/String;

.field public 'bussinessId' Ljava/lang/String;

.field public 'isReceiveMessage' Z

.field protected 'soundResId' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/<init>()V
aload 0
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/NOTI_BREEDING I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/soundResId I
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isReceiveMessage Z
aload 0
iconst_3
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageType I
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageType I
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
.limit locals 1
.limit stack 3
.end method

.method private insertRecentContact()V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
ifnonnull L0
aload 0
ldc "error message"
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
L0:
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setCode(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/multiId J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setMultipleId(J)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/extraflag I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageContentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/msgId J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgServerId(J)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isAck I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setmAckType(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/parentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setParent(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 1
iconst_1
bipush 100
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/updateList(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;ZI)V
return
.limit locals 2
.limit stack 5
.end method

.method private parseXml()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
ldc "body"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "fmt"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 2
aload 2
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
L0:
aload 2
iconst_0
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 1
iload 1
ifne L1
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
ldc "span"
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
L1:
iload 1
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
ldc "hyperlink"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "href"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 2
aload 2
ifnonnull L3
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
L3:
aload 0
aload 2
iconst_0
aaload
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/url Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
ldc "msg"
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
L2:
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
.limit locals 3
.limit stack 6
.end method

.method public analyseXmlDetail(Lorg/xmlpull/v1/XmlPullParser;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
return
.limit locals 3
.limit stack 0
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/convertToContentValues()Landroid/content/ContentValues;
astore 1
aload 1
ldc "uidto"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/uidTo J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "appid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "code"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "businessid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/bussinessId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "acttype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/ackType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "apptype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appType Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "appmsgtype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appMsgType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "mulptid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/multiId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/groupId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "grouptype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/groupType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "content_type"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageContentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public displayPortrait(Landroid/widget/ImageView;Z)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L1
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
astore 1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
if_icmpne L1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
ifnull L1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/generateId Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/generateId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/msgId J
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/msgId J
lcmp
ifne L1
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
ldc "app"
areturn
.limit locals 2
.limit stack 1
.end method

.method protected getBundle(Landroid/content/Context;)Landroid/os/Bundle;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "APPID"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "APPCODE"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "name"
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/getAppName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public getConcreteAppMessage(Landroid/database/Cursor;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
aload 1
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
aload 1
aload 1
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iload 2
aload 3
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 3
areturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/parseFromCursor(Landroid/database/Cursor;)V
aload 0
areturn
.limit locals 4
.limit stack 3
.end method

.method public getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
ifnonnull L0
aload 0
new com/nd/android/u/controller/messageProccess/ImsMessage_App
dup
aload 0
invokespecial com/nd/android/u/controller/messageProccess/ImsMessage_App/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/dbCondition Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/dbCondition Ljava/lang/String;
areturn
L0:
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
aastore
areturn
.limit locals 1
.limit stack 6
.end method

.method public getViewType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public goDisplayActivity(Landroid/content/Context;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
aload 1
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/getDisplayClass()Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
ldc "APPID"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "APPCODE"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "name"
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/getAppName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public hashCode()I
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isChild()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isValidMessage(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
if_icmpne L0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/groupId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "grouptype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/groupType I
aload 0
aload 1
aload 1
ldc "uidto"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/uidTo J
aload 0
aload 1
aload 1
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 0
aload 1
aload 1
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "businessid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/bussinessId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "apptype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appType Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "appmsgtype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appMsgType I
aload 0
aload 1
aload 1
ldc "acttype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/ackType I
aload 0
aload 1
aload 1
ldc "mulptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/multiId J
aload 0
aload 1
aload 1
ldc "content_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageContentType I
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/prepareMessage()Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageContentType I
bipush 101
if_icmpne L0
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/parseXml()Z
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appType Ljava/lang/String;
aload 0
aload 1
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
L1:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public setTimeString(J)J
aload 0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/createDate()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/timeString Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/createDate J
lreturn
.limit locals 3
.limit stack 2
.end method

.method public setTypeId(Ljava/lang/Object;)V
aload 1
instanceof [Ljava/lang/Object;
ifeq L0
aload 1
checkcast [Ljava/lang/Object;
astore 1
aload 1
ifnull L1
aload 1
arraylength
iconst_1
if_icmple L1
aload 0
aload 1
iconst_0
aaload
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 1
iconst_1
aaload
instanceof java/lang/String
ifeq L1
aload 0
aload 1
iconst_1
aaload
checkcast java/lang/String
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
L1:
return
L0:
aload 1
instanceof java/lang/String
ifeq L2
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/dbCondition Ljava/lang/String;
return
L2:
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
return
.limit locals 2
.limit stack 3
.end method

.method public showContactPortrait(Landroid/widget/ImageView;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
return
.limit locals 2
.limit stack 4
.end method

.method public showNotify()V
return
.limit locals 1
.limit stack 0
.end method

.method public specialProccessOnReceive()V
return
.limit locals 1
.limit stack 0
.end method

.method public updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
L1
L2
L3
default : L2
L2:
return
L1:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/extraflag I
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/msgStateChanged(Ljava/lang/String;I)V
return
L0:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/insertRecentContact()V
return
L3:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 0
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/getParentType(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I
istore 1
iload 1
iconst_m1
if_icmple L2
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iload 1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 4
.end method
