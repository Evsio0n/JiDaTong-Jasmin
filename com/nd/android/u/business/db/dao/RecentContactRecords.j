.bytecode 50.0
.class public final synchronized enum com/nd/android/u/business/db/dao/RecentContactRecords
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/business/db/dao/RecentContactRecords;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/business/db/dao/RecentContactRecords;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/business/db/dao/RecentContactRecords;

.field private 'mRecentContactSet' Ljava/util/SortedSet; signature "Ljava/util/SortedSet<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"

.method static <clinit>()V
new com/nd/android/u/business/db/dao/RecentContactRecords
dup
ldc "INSTANCE"
iconst_0
bipush 100
invokespecial com/nd/android/u/business/db/dao/RecentContactRecords/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
iconst_1
anewarray com/nd/android/u/business/db/dao/RecentContactRecords
dup
iconst_0
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aastore
putstatic com/nd/android/u/business/db/dao/RecentContactRecords/ENUM$VALUES [Lcom/nd/android/u/business/db/dao/RecentContactRecords;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
invokestatic java/util/Collections/synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
putfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 0
iload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/loadFromDB(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/business/db/dao/RecentContactRecords;
ldc com/nd/android/u/business/db/dao/RecentContactRecords
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/business/db/dao/RecentContactRecords
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/business/db/dao/RecentContactRecords;
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/ENUM$VALUES [Lcom/nd/android/u/business/db/dao/RecentContactRecords;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/business/db/dao/RecentContactRecords
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public clearAllUnreadFlag()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 1
monitorexit
L3:
aload 2
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/clearUnreadCount(Ljava/util/Collection;)V
return
L4:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 4
aload 4
iconst_0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setUnreadCount(I)V
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L1
L2:
astore 2
L6:
aload 1
monitorexit
L7:
aload 2
athrow
.limit locals 5
.limit stack 2
.end method

.method public clearUnreadCount(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L5
L3:
aload 2
monitorexit
L4:
aload 3
invokeinterface java/util/List/isEmpty()Z 0
ifne L9
aload 3
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/clearUnreadCount(Ljava/util/Collection;)V
L9:
return
L5:
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
aload 1
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
aload 5
iconst_0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setUnreadCount(I)V
aload 3
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
goto L3
L2:
astore 1
L7:
aload 2
monitorexit
L8:
aload 1
athrow
.limit locals 6
.limit stack 2
.end method

.method public deleteAll()V
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/clear()V 0
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/deleteAll()V
return
.limit locals 1
.limit stack 1
.end method

.method public deleteAllSpecificType(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 2
monitorexit
L3:
iload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/deleteAllSpecificType(I)V
return
L4:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
iload 1
if_icmpne L1
aload 3
invokeinterface java/util/Iterator/remove()V 0
L5:
goto L1
L2:
astore 3
L6:
aload 2
monitorexit
L7:
aload 3
athrow
.limit locals 4
.limit stack 2
.end method

.method public deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
aconst_null
astore 3
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 5
aload 5
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L6
L3:
aload 3
astore 1
L4:
aload 5
monitorexit
L5:
aload 1
ifnull L12
aload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/delete(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L12:
return
L6:
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 4
iload 2
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
if_icmpne L1
aload 1
aload 4
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
L7:
aload 4
astore 1
L8:
aload 6
invokeinterface java/util/Iterator/remove()V 0
L9:
goto L4
L2:
astore 1
L10:
aload 5
monitorexit
L11:
aload 1
athrow
.limit locals 7
.limit stack 2
.end method

.method public deleteParentItem(I)V
iload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/getSubContactItemList(I)Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iload 1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public getAllUnreadMsgCount()I
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
iconst_0
istore 1
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 2
monitorexit
L3:
iload 1
ireturn
L4:
iload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
iadd
istore 1
L5:
goto L1
L2:
astore 3
L6:
aload 2
monitorexit
L7:
aload 3
athrow
.limit locals 4
.limit stack 2
.end method

.method public getItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isPrimaryKeyValid()Z
ifne L8
aconst_null
areturn
L8:
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 3
monitorexit
L3:
aconst_null
areturn
L4:
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
iload 2
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
if_icmpne L1
aload 5
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
aload 3
monitorexit
L5:
aload 5
areturn
L2:
astore 1
L6:
aload 3
monitorexit
L7:
aload 1
athrow
.limit locals 6
.limit stack 2
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 1
aload 1
monitorenter
L0:
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
monitorexit
L1:
aload 2
areturn
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public getRencentContacts(JJ)[J
lload 1
lload 3
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/getRecentFriends(JJ)[J
areturn
.limit locals 5
.limit stack 4
.end method

.method public isEmpty()Z
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/isEmpty()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public loadFromDB(I)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lconst_0
lcmp
ifne L0
new java/util/ArrayList
dup
iconst_0
invokespecial java/util/ArrayList/<init>(I)V
astore 2
L1:
aload 0
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/setList(Ljava/util/List;)V
return
L0:
iload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/query(I)Ljava/util/List;
astore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method public msgStateChanged(Ljava/lang/String;I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L5
L3:
aload 3
monitorexit
L4:
aload 1
iload 2
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/updateMsgState(Ljava/lang/String;I)I
pop
return
L5:
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgId()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 5
iload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
L6:
goto L3
L2:
astore 1
L7:
aload 3
monitorexit
L8:
aload 1
athrow
.limit locals 6
.limit stack 2
.end method

.method public replaceItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isObjectValid()Z
ifne L11
ldc "RecentContactRecords"
new java/lang/StringBuilder
dup
ldc "replaceItem\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L11:
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 3
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 4
aload 4
monitorenter
iconst_0
istore 2
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L7
L3:
iload 2
ifeq L5
L4:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 1
invokeinterface java/util/SortedSet/add(Ljava/lang/Object;)Z 1
pop
L5:
aload 4
monitorexit
L6:
aload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/replace(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)J
pop2
return
L7:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 6
iload 3
aload 6
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
if_icmpne L1
aload 1
aload 6
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
aload 5
invokeinterface java/util/Iterator/remove()V 0
L8:
iconst_1
istore 2
goto L3
L2:
astore 1
L9:
aload 4
monitorexit
L10:
aload 1
athrow
.limit locals 7
.limit stack 4
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/clear()V 0
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 1
invokeinterface java/util/SortedSet/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
monitorexit
L1:
return
L2:
astore 1
L3:
aload 2
monitorexit
L4:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public updateList(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;ZI)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isObjectValid()Z
ifne L32
ldc "RecentContactRecords"
new java/lang/StringBuilder
dup
ldc "updateList\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L33:
return
L32:
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getParent()I
istore 4
aload 1
astore 7
iload 4
iconst_m1
if_icmple L34
aload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/replace(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)J
pop2
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iload 4
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 7
aload 7
ifnull L35
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgContent()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgId()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgId(Ljava/lang/String;)V
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastContactTime()J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastContactTime(J)V
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgContentType()I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgContentType(I)V
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgServerId()J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgServerId(J)V
aload 7
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgState()I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setLastMsgState(I)V
aload 7
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/parentChecker Lcom/nd/android/u/controller/outInterface/IParentChecker;
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IParentChecker/getParentId(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Ljava/lang/String; 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 7
iconst_m1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setParent(I)V
L34:
aconst_null
astore 9
aload 7
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 6
iconst_0
istore 4
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
astore 10
aload 10
monitorenter
iconst_0
istore 5
L0:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/iterator()Ljava/util/Iterator; 0
astore 11
L1:
aconst_null
astore 1
L3:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L15
L4:
aload 1
astore 8
aload 9
astore 1
L36:
iload 5
ifeq L37
aload 8
ifnull L6
L5:
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getTopTime()J
lconst_0
lcmp
ifeq L6
aload 7
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getTopTime()J
lconst_0
lcmp
ifne L6
aload 7
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getTopTime()J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setTopTime(J)V
L6:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 7
invokeinterface java/util/SortedSet/add(Ljava/lang/Object;)Z 1
pop
L7:
goto L37
L8:
aload 7
iload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setUnreadCount(I)V
L9:
aload 7
astore 1
L10:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 7
invokeinterface java/util/SortedSet/add(Ljava/lang/Object;)Z 1
pop
L11:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/isEmpty()Z 0
ifne L13
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/size()I 0
istore 4
L12:
goto L38
L13:
aload 10
monitorexit
L14:
aload 1
ifnull L33
aload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/replace(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)J
lconst_0
lcmp
ifge L33
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "updateList error:update item fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L35:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "updateList error:can't find parent item:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L15:
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 8
L16:
aload 8
astore 1
L17:
iload 6
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
if_icmpne L3
L18:
aload 8
astore 1
L19:
aload 7
aload 8
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L3
aload 7
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastContactTime()J
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastContactTime()J
lcmp
ifgt L20
aload 7
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getIdentity()Ljava/lang/String;
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getIdentity()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L26
L20:
aload 8
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
istore 5
L21:
iload 5
istore 4
iload 2
ifeq L22
iload 5
iconst_1
iadd
istore 4
L22:
aload 7
iload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setUnreadCount(I)V
L23:
aload 7
astore 1
L24:
aload 11
invokeinterface java/util/Iterator/remove()V 0
L25:
iconst_1
istore 5
iconst_1
istore 4
goto L36
L26:
aload 10
monitorexit
L27:
return
L2:
astore 1
L28:
aload 10
monitorexit
L29:
aload 1
athrow
L39:
iconst_0
istore 4
goto L8
L30:
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
invokeinterface java/util/SortedSet/last()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 7
aload 0
getfield com/nd/android/u/business/db/dao/RecentContactRecords/mRecentContactSet Ljava/util/SortedSet;
aload 7
invokeinterface java/util/SortedSet/remove(Ljava/lang/Object;)Z 1
pop
L31:
iload 4
iconst_1
isub
istore 4
goto L38
L37:
iload 4
ifne L11
iload 2
ifeq L39
iconst_1
istore 4
goto L8
L38:
iload 4
iload 3
if_icmpgt L30
goto L13
.limit locals 12
.limit stack 4
.end method
