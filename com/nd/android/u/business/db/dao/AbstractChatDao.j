.bytecode 50.0
.class public synchronized abstract com/nd/android/u/business/db/dao/AbstractChatDao
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IDbOperation

.field public static final 'CONDITION_ALL' Ljava/lang/String; = " 1 = 1 "

.field protected 'sqliteTemplate' Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;

.field protected 'tableName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/business/db/dbUtils/SqliteTemplate
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
return
.limit locals 1
.limit stack 4
.end method

.method private getDataByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
aload 1
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
L1:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 1
invokeinterface android/database/Cursor/close()V 0
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected checkExistByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
iconst_0
istore 3
iload 3
istore 2
aload 1
ifnull L0
iload 3
istore 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 2
L0:
aload 1
invokestatic com/nd/android/u/business/db/DbUtils/closeCrusor(Landroid/database/Cursor;)V
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "delete null PrimaryCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/delete(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ifne L1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "delete fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public deleteAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "deleteAll null IDCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/delete(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ifne L1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "deleteAll fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor;
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 1
ifnonnull L0
new java/lang/StringBuilder
dup
ldc "select * from "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/query(Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
ifnonnull L2
aconst_null
astore 2
L3:
aload 2
areturn
L0:
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
goto L1
L2:
aload 1
astore 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifne L3
aload 1
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected getCountByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)I
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
istore 3
iload 3
istore 2
iload 3
ifle L1
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected getCountBySql(Ljava/lang/String;)I
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/query(Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
istore 3
iload 3
istore 2
iload 3
ifle L1
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected getCursorByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 2
aload 2
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 2
astore 1
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
aload 2
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 2
aload 2
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "getData null PrimaryCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 3
aload 1
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/getDataByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getEarlierMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;JI)Landroid/database/Cursor;
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "getEarlierMessage null IDCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 5
aload 5
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
lload 2
lconst_0
lcmp
ifle L1
aload 5
ldc "msgid < ?"
lload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;J)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L1:
aload 5
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iload 4
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 5
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getCursorByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
areturn
.limit locals 6
.limit stack 4
.end method

.method protected abstract getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
.end method

.method public getLastMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
aload 3
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L0:
aload 2
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/getDataByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getLastMessageBywseq(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 3
ldc "wseq = ? "
iload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 3
aload 1
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/getDataByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
aload 3
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L0:
aload 2
ldc "isack = ?"
iconst_0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/getDataByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)I
new java/lang/StringBuilder
dup
ldc "select count(*) from "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 3
aload 2
astore 1
aload 3
ifnull L0
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getCountBySql(Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getMessageCountByUnreadMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)I
iconst_m1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getNoAckMessages(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor;
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L0:
aload 2
ldc "isack = ?"
iconst_0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
ldc "msgid"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getCursorByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getGenerateId()Ljava/lang/String; 0
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new java/lang/StringBuilder
dup
ldc "generateid= '"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.catch android/database/SQLException from L0 to L1 using L2
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/into(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/convertToContentValues()Landroid/content/ContentValues; 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
L0:
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 4
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/insert(Lcom/nd/android/u/business/db/dbUtils/Query;)J
lstore 2
L1:
lload 2
lconst_0
lcmp
ifge L3
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "insert fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual android/database/SQLException/printStackTrace()V
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "insert fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public isExist(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "isExist null PrimaryCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/checkExistByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public isExistByMsgId(J)Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
new java/lang/StringBuilder
dup
ldc "msgid = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 3
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/checkExistByQuery(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "isack"
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "isack = ?"
iconst_0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "setAllMessageAcked null IDCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 2
aload 3
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
iconst_m1
if_icmple L2
iconst_1
ireturn
L0:
aload 2
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
goto L1
L2:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/AbstractChatDao/getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
astore 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getUpdateContentValues()Landroid/content/ContentValues; 0
astore 1
aload 2
ifnull L0
aload 1
ifnonnull L1
L0:
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "update null PrimaryCondition\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 3
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
i2l
lconst_0
lcmp
ifge L2
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
ldc "update fail\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dao/AbstractChatDao/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public updateByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;ILjava/lang/Object;)Z
iconst_1
ireturn
.limit locals 4
.limit stack 1
.end method
