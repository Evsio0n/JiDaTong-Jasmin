.bytecode 50.0
.class public synchronized com/bestpay/db/BestPaySqliteHelper
.super java/lang/Object
.inner class private static DatabaseHelper inner com/bestpay/db/BestPaySqliteHelper$DatabaseHelper outer com/bestpay/db/BestPaySqliteHelper

.field private static final 'DB_NAME' Ljava/lang/String; = "msp.db"

.field private static final 'DB_VERSION' I = 1


.field private static final 'TABLE_BESTPAY' Ljava/lang/String; = "create table if not exists account(tid text primary key,key_index text,key_tid text,dt integer)"

.field private static 'dbConn' Lcom/bestpay/db/BestPaySqliteHelper;

.field private 'mContext' Landroid/content/Context;

.field private 'mSQLiteDatabase' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
aconst_null
putstatic com/bestpay/db/BestPaySqliteHelper/dbConn Lcom/bestpay/db/BestPaySqliteHelper;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bestpay/db/BestPaySqliteHelper/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper;
getstatic com/bestpay/db/BestPaySqliteHelper/dbConn Lcom/bestpay/db/BestPaySqliteHelper;
ifnonnull L0
new com/bestpay/db/BestPaySqliteHelper
dup
aload 0
invokespecial com/bestpay/db/BestPaySqliteHelper/<init>(Landroid/content/Context;)V
putstatic com/bestpay/db/BestPaySqliteHelper/dbConn Lcom/bestpay/db/BestPaySqliteHelper;
L0:
getstatic com/bestpay/db/BestPaySqliteHelper/dbConn Lcom/bestpay/db/BestPaySqliteHelper;
areturn
.limit locals 1
.limit stack 3
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)J
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
istore 3
L1:
iload 3
i2l
lreturn
L2:
astore 1
aload 1
athrow
.limit locals 4
.limit stack 4
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
istore 4
L1:
iload 4
i2l
lreturn
L2:
astore 1
aload 1
athrow
.limit locals 5
.limit stack 5
.end method

.method public executeSql(Ljava/lang/String;)V
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
iconst_1
aload 1
aload 3
aload 2
aconst_null
aconst_null
aconst_null
aload 4
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 6
.limit stack 10
.end method

.method public find(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
L1:
iconst_0
istore 7
L3:
iload 7
aload 2
arraylength
if_icmplt L4
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
iconst_1
aload 1
aload 4
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 3
aconst_null
aconst_null
aload 5
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
L4:
aload 8
aload 2
iload 7
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc " = ?"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 7
aload 2
arraylength
iconst_1
isub
if_icmpeq L5
aload 8
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 7
iconst_1
iadd
istore 7
goto L3
L2:
astore 1
aload 1
athrow
.limit locals 9
.limit stack 10
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 3
.limit stack 8
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aconst_null
aconst_null
aconst_null
aconst_null
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 4
.limit stack 8
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aload 3
aload 4
aconst_null
aconst_null
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 6
.limit stack 8
.end method

.method public findById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 4
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 5
.limit stack 8
.end method

.method public findExcept(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
L1:
iconst_0
istore 7
L3:
iload 7
aload 2
arraylength
if_icmplt L4
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
iconst_1
aload 1
aload 4
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 3
aconst_null
aconst_null
aload 5
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
L4:
aload 8
aload 2
iload 7
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc " <> ?"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 7
aload 2
arraylength
iconst_1
isub
if_icmpeq L5
aload 8
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 7
iconst_1
iadd
istore 7
goto L3
L2:
astore 1
aload 1
athrow
.limit locals 9
.limit stack 10
.end method

.method public findUnique(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aload 3
aload 4
aconst_null
aconst_null
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 6
.limit stack 8
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lstore 4
L1:
lload 4
lreturn
L2:
astore 1
aload 1
athrow
.limit locals 6
.limit stack 4
.end method

.method public open()V
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L0
aload 0
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mContext Landroid/content/Context;
invokestatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
invokevirtual com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
L1:
return
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifne L1
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 0
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mContext Landroid/content/Context;
invokestatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
invokevirtual com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 1
.limit stack 2
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 2
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 4
.limit stack 4
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
L1:
iconst_0
istore 5
L3:
iload 5
aload 2
arraylength
if_icmplt L5
aload 0
getfield com/bestpay/db/BestPaySqliteHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aload 4
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
ifle L7
L4:
iconst_1
ireturn
L5:
aload 6
aload 2
iload 5
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc " = ?"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
aload 2
arraylength
iconst_1
isub
if_icmpeq L6
aload 6
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
iload 5
iconst_1
iadd
istore 5
goto L3
L7:
iconst_0
ireturn
L2:
astore 1
aload 1
athrow
.limit locals 7
.limit stack 5
.end method
