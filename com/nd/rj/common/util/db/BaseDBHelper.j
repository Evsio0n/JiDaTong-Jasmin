.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/util/db/BaseDBHelper
.super java/lang/Object
.implements com/nd/rj/common/util/db/IDataBaseRef

.field protected 'TAG' Ljava/lang/String;

.field protected 'mDBName' Ljava/lang/String;

.field protected 'mSQLiteDatabase' Landroid/database/sqlite/SQLiteDatabase;

.field protected 'mSqliteHelper' Lcom/nd/rj/common/util/db/SqliteHelper;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "BaseDBHelper"
putfield com/nd/rj/common/util/db/BaseDBHelper/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/rj/common/util/db/BaseDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
aload 0
aconst_null
putfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 0
aconst_null
putfield com/nd/rj/common/util/db/BaseDBHelper/mDBName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/close()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public static quotedString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 0
astore 1
aload 0
ldc "'"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iflt L1
aload 0
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public InsertTable(Ljava/lang/String;Landroid/content/ContentValues;)I
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
ldc2_w -1L
lcmp
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/rj/common/R$string/nd_exec_sql_error I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public UpdateTable(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/nd/rj/common/R$string/nd_exec_sql_error I
istore 5
L0:
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aload 3
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L1:
iconst_0
ireturn
L2:
astore 1
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/TAG Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 5
ireturn
.limit locals 6
.limit stack 5
.end method

.method public beginTransaction()V
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/inTransaction()Z
ifne L0
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public close()V
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
ifnull L0
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
invokevirtual com/nd/rj/common/util/db/SqliteHelper/close()V
L0:
aload 0
aconst_null
putfield com/nd/rj/common/util/db/BaseDBHelper/mDBName Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 1
.limit stack 2
.end method

.method public columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
iconst_0
istore 5
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where 1=2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
aload 3
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 4
L1:
iload 4
iflt L4
iconst_1
istore 5
L4:
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
iload 5
ireturn
L3:
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
iconst_0
ireturn
L2:
astore 2
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
.limit locals 6
.limit stack 3
.end method

.method protected createDataBasePath(Ljava/io/File;)V
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdir()Z
pop
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public endTransaction(I)V
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/inTransaction()Z
ifeq L0
iload 1
ifne L1
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public execSql(Ljava/lang/String;)I
.catch android/database/SQLException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
iconst_0
ireturn
L2:
astore 2
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual android/database/SQLException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " sqlcmd="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/rj/common/R$string/nd_exec_sql_error I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public execSql(Ljava/lang/String;[Ljava/lang/Object;)I
.catch android/database/SQLException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
iconst_0
ireturn
L2:
astore 2
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual android/database/SQLException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " sqlcmd="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/rj/common/R$string/nd_exec_sql_error I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
return
.limit locals 4
.limit stack 0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)I
aload 0
aload 1
aload 2
invokevirtual com/nd/rj/common/util/db/BaseDBHelper/openDB(Landroid/content/Context;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract openDB(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public querySql(Ljava/lang/String;)Landroid/database/Cursor;
aload 0
aload 1
aconst_null
invokevirtual com/nd/rj/common/util/db/BaseDBHelper/querySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 2
.limit stack 3
.end method

.method public querySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 0
getfield com/nd/rj/common/util/db/BaseDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " sqlcmd="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
iconst_1
istore 4
aload 1
ldc "select count(*) as number from sqlite_master where type='table' and name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 3
L1:
iload 3
ifle L4
L5:
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
iload 4
ireturn
L4:
iconst_0
istore 4
goto L5
L3:
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
iconst_0
ireturn
L2:
astore 2
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
.limit locals 5
.limit stack 6
.end method
