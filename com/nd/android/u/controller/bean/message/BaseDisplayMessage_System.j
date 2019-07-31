.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/message/BaseDisplayMessage_System
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage

.field public static final 'APPLY_TO_JOIN_GROUP' I = 1


.field public static final 'JOIN_GROUP_ACCEPTED' I = 1


.field public static final 'JOIN_GROUP_INVITE_OTHER' I = 1


.field public static final 'JOIN_GROUP_JECTED' I = 0


.field public static final 'JOIN_GROUP_JOINTO_OTHER' I = 0


.field public 'approvalResult' I

.field public 'approvalStr' Ljava/lang/String;

.field public 'approvalType' I

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/<init>()V
aload 0
iconst_2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/messageType I
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupId Ljava/lang/String;
aload 0
iload 2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupType I
return
.limit locals 3
.limit stack 2
.end method

.method private insertRecentContact()V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/displayContent Ljava/lang/String;
ifnonnull L0
aload 0
ldc "error message"
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/displayContent Ljava/lang/String;
L0:
aload 1
ldc "0"
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/multiId J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setMultipleId(J)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/extraflag I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/messageContentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/msgId J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgServerId(J)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/isAck I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setmAckType(I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/parentType I
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
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/uidTo J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "grouptype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "appro_result"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalResult I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "appro_type"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "appro_str"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalStr Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "acttype"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/ackType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/messageContentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "mulptid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/multiId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public displayPortrait(Landroid/widget/ImageView;Z)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displaySystem(Landroid/widget/ImageView;)V 1
return
.limit locals 3
.limit stack 2
.end method

.method public getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
ifnonnull L0
aload 0
new com/nd/android/u/controller/messageProccess/ImsMessage_System
dup
aload 0
invokespecial com/nd/android/u/controller/messageProccess/ImsMessage_System/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/dbCondition Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/dbCondition Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getViewType()I
bipush 9
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
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_System
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "uidto"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/uidTo J
aload 0
aload 1
aload 1
ldc "grouptype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupType I
aload 0
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "appro_result"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalResult I
aload 0
aload 1
aload 1
ldc "appro_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalType I
aload 0
aload 1
aload 1
ldc "appro_str"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/approvalStr Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "acttype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/ackType I
aload 0
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/messageContentType I
aload 0
aload 1
aload 1
ldc "mulptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/multiId J
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/displayContent Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method public setTypeId(Ljava/lang/Object;)V
aload 1
instanceof java/lang/Long
ifeq L0
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/groupId Ljava/lang/String;
return
L0:
aload 1
instanceof java/lang/String
ifeq L1
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/dbCondition Ljava/lang/String;
return
L1:
ldc "CHAT"
ldc "setTypeId type error"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
L1
L1
L2
default : L1
L1:
return
L0:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_System/insertRecentContact()V
return
L2:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_2
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ldc "0"
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 2
.end method
