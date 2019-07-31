.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/dataSupplier/BaseDataSupplier
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IUIDataSupplier

.field protected 'dbOperation' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field protected 'displayMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field protected 'firstMessageId' J

.field protected 'mainId' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearUnreadCount()V
aload 0
invokevirtual com/nd/android/u/controller/dataSupplier/BaseDataSupplier/getUnreadMessageCount()I
ifle L0
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
invokevirtual com/nd/android/u/controller/dataSupplier/BaseDataSupplier/createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/clearUnreadCount(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 30
putfield android/os/Message/what I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected abstract createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
.end method

.method public abstract getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
.end method

.method public getData(JI)Ljava/util/List;
.signature "(JI)Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
lload 1
iload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getEarlierMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;JI)Landroid/database/Cursor; 4
astore 7
aload 7
ifnonnull L0
L1:
aload 6
areturn
L0:
aload 7
invokeinterface android/database/Cursor/getCount()I 0
ifne L2
aload 7
invokeinterface android/database/Cursor/close()V 0
aload 6
areturn
L3:
aload 0
invokevirtual com/nd/android/u/controller/dataSupplier/BaseDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 8
aload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 6
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
aload 7
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L3
aload 7
invokeinterface android/database/Cursor/close()V 0
aload 6
invokevirtual java/util/ArrayList/size()I
istore 4
iload 4
ifle L1
aload 6
invokestatic java/util/Collections/reverse(Ljava/util/List;)V
aload 0
aload 6
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
putfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/firstMessageId J
lconst_0
lstore 1
iconst_0
istore 3
L4:
iload 3
iload 4
if_icmpge L1
aload 6
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 7
aload 7
lload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTimeString(J)J 2
lstore 1
iload 3
iload 4
iconst_1
isub
if_icmpne L5
iconst_1
istore 5
L6:
aload 7
iload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/checkExtraFlag(Z)V 1
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
iconst_0
istore 5
goto L6
.limit locals 9
.limit stack 5
.end method

.method public getFirstMessageId()J
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/firstMessageId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getId()J
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/mainId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getNewMessageCount()I
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
aload 0
invokevirtual com/nd/android/u/controller/dataSupplier/BaseDataSupplier/getUnreadMessageCount()I
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getMessageCountByUnreadMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)I 2
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getUnreadMessageCount()I
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
invokevirtual com/nd/android/u/controller/dataSupplier/BaseDataSupplier/createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isValidMessage(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/dataSupplier/BaseDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isValidMessage(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method
