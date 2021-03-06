.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dao/ChatMessageDao_Group
.super com/nd/android/u/business/db/dao/AbstractChatDao

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/<init>()V
aload 0
ldc "uu_chatgrouprecord"
putfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private checkExistByFkey(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getSearchCondition(I)Ljava/lang/Object; 1
astore 1
aload 1
ifnull L0
aload 1
instanceof android/os/Bundle
ifne L1
L0:
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "checkExistByFkey:unknow fkey="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 1
checkcast android/os/Bundle
astore 5
aload 5
ldc "FILE_NAME"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 5
ldc "FILE_SIZE"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 3
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 5
aload 5
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "filename = ?"
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "filesize = ?"
lload 3
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;J)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 5
invokevirtual com/nd/android/u/business/db/dao/ChatMessageDao_Group/checkExistByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ireturn
.limit locals 6
.limit stack 4
.end method

.method private updateExtraflag(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;Ljava/lang/Object;)Z
.catch java/lang/ClassCastException from L0 to L1 using L2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getGenerateId()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "updateExtraflag fail:null generateId of "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 2
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 3
L1:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "extraflag"
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "generateid = ?"
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 4
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
iconst_m1
if_icmple L3
iconst_1
ireturn
L2:
astore 1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "updateExtraflag fail:value is not a number: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
iload 2
tableswitch 2
L0
default : L1
L1:
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
ireturn
L0:
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_Group/checkExistByFkey(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
astore 2
aload 2
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 2
ldc " 1 = 1 "
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L2:
new java/lang/StringBuilder
dup
ldc "gid = '"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMessageCountByUnreadMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)I
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
instanceof java/lang/String
ifeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
checkcast java/lang/String
astore 6
L1:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 7
aload 7
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/ChatMessageDao_Group/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 8
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 7
aload 8
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L2:
aload 7
ldc "uidfrom <> ?"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;J)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 7
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 7
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 7
aload 7
ifnonnull L3
L4:
iconst_m1
ireturn
L0:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
instanceof java/lang/Long
ifeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
goto L1
L5:
ldc "CHAT"
ldc "ChatMessageDao_Group.getMessageCountByUnreadMessageCount error"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_m1
ireturn
L3:
aload 7
invokeinterface android/database/Cursor/getCount()I 0
ifgt L6
aload 7
invokeinterface android/database/Cursor/close()V 0
iconst_m1
ireturn
L6:
aload 7
invokeinterface android/database/Cursor/moveToLast()Z 0
ifeq L7
aload 1
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
L7:
aload 7
invokeinterface android/database/Cursor/close()V 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getMsgId()J 0
lstore 4
new java/lang/StringBuilder
dup
ldc "select count(*) from "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msgid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " >= "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_Group/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/query(Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L4
aload 1
invokeinterface android/database/Cursor/getCount()I 0
istore 3
iload 3
istore 2
iload 3
ifle L8
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L8:
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 2
ireturn
.limit locals 9
.limit stack 4
.end method

.method public updateByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;ILjava/lang/Object;)Z
iload 2
tableswitch 0
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
aload 3
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_Group/updateExtraflag(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;Ljava/lang/Object;)Z
ireturn
.limit locals 4
.limit stack 3
.end method
