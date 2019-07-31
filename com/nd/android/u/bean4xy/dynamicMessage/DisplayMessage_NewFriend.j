.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend
.super com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
return
.limit locals 3
.limit stack 3
.end method

.method private insertRecentContact(Ljava/lang/String;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/displayContent Ljava/lang/String;
ifnonnull L0
aload 0
ldc "error message"
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/displayContent Ljava/lang/String;
L0:
aload 2
iconst_0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setUnreadCount(I)V
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 2
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/extraflag I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 2
iconst_0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 2
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/getFriendId()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/isAck I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setmAckType(I)V
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/parentType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setParent(I)V
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/duration I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setduration(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
iconst_0
bipush 100
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/updateList(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;ZI)V
return
.limit locals 3
.limit stack 5
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
return
.limit locals 3
.limit stack 0
.end method

.method public prepareMessage()Z
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/new_friend I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/operatorName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/displayTitle Ljava/lang/String;
iconst_0
ireturn
.limit locals 1
.limit stack 7
.end method

.method public updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
L0
L1
L2
default : L1
L1:
return
L0:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
astore 2
ldc ""
astore 3
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 3
astore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 2
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/uidFrom J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgContent()Ljava/lang/String;
astore 2
L4:
aload 0
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/insertRecentContact(Ljava/lang/String;)V
return
L2:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/getFriendId()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 5
.limit stack 3
.end method
