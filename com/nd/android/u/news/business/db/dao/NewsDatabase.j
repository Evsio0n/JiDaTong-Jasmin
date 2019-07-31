.bytecode 50.0
.class public final synchronized com/nd/android/u/news/business/db/dao/NewsDatabase
.super java/lang/Object

.field private static '_instance' Lcom/nd/android/u/news/business/db/dao/NewsDatabase;

.field private static 'preUid' J

.field private 'mDb' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
lconst_0
putstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
lconst_0
lcmp
ifne L0
invokestatic com/nd/android/u/news/NewsGlobalSetting/getUid()J
putstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
L0:
aload 0
new com/nd/android/u/news/business/db/NewsDBOpenHelper
dup
aload 1
lconst_0
invokespecial com/nd/android/u/news/business/db/NewsDBOpenHelper/<init>(Landroid/content/Context;J)V
invokevirtual com/nd/android/u/news/business/db/NewsDBOpenHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 2
.limit stack 6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
ldc com/nd/android/u/news/business/db/dao/NewsDatabase
monitorenter
L0:
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/_instance Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
ifnull L1
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/_instance Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L1
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/_instance Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifne L3
L1:
new com/nd/android/u/news/business/db/dao/NewsDatabase
dup
aload 0
invokespecial com/nd/android/u/news/business/db/dao/NewsDatabase/<init>(Landroid/content/Context;)V
putstatic com/nd/android/u/news/business/db/dao/NewsDatabase/_instance Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
L3:
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/_instance Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
astore 0
L4:
ldc com/nd/android/u/news/business/db/dao/NewsDatabase
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/news/business/db/dao/NewsDatabase
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public clearHistoryReadList()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "user_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = ? and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "read_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " < ? "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "read_list"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 4
aastore
dup
iconst_1
lload 1
ldc2_w 1296000000L
lsub
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 10
.end method

.method public closeDB()V
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 0
aconst_null
putfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getReadStatus(J)Z
iconst_0
istore 3
iconst_0
istore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "news_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "read_list"
aconst_null
aload 5
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnull L0
iload 4
istore 3
L1:
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
iconst_1
istore 3
goto L1
L2:
aload 5
invokeinterface android/database/Cursor/close()V 0
L0:
iload 3
ireturn
.limit locals 6
.limit stack 8
.end method

.method public getReadedNewsIdList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Long;>;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "user_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "read_list"
aconst_null
aload 1
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
ifnull L0
L1:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
aload 2
aload 1
aload 1
ldc "news_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public setReadStatus(J)V
lload 1
lconst_0
lcmp
ifge L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "news_id"
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
ldc "read_time"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
ldc "user_id"
getstatic com/nd/android/u/news/business/db/dao/NewsDatabase/preUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/nd/android/u/news/business/db/dao/NewsDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "read_list"
aconst_null
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 4
.limit stack 4
.end method
