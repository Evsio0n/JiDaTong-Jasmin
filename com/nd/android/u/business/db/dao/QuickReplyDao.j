.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dao/QuickReplyDao
.super java/lang/Object
.inner class private static final QuickReplyMapper inner com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper outer com/nd/android/u/business/db/dao/QuickReplyDao

.field public static final 'RECORD_EXIST' J = -999L


.field public static final 'RECORD_NULL' J = -9999L


.field private 'sqliteTemplate' Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/business/db/dbUtils/SqliteTemplate
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
return
.limit locals 1
.limit stack 4
.end method

.method private QuickReplyToValues(Lcom/nd/android/u/controller/bean/QuickReply;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getOrder()I
istore 2
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getText()Ljava/lang/String;
astore 4
aload 3
ldc "uuid"
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getUUID()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "text"
aload 4
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "_index"
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public deleteReply(Lcom/nd/android/u/controller/bean/QuickReply;)Z
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getUUID()Ljava/lang/String;
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
ldc "uu_quickreply"
aconst_null
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
ldc "uuid = ?"
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/delete(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getReply()Lcom/nd/android/u/controller/bean/QuickReplyList;
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 1
aload 1
ldc "uu_quickreply"
aconst_null
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 1
ldc "_index ASC"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderBy(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
new com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper
dup
aconst_null
invokespecial com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper/<init>(Lcom/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper;)V
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForList(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/util/List;
astore 1
new com/nd/android/u/controller/bean/QuickReplyList
dup
invokespecial com/nd/android/u/controller/bean/QuickReplyList/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/addAll(Ljava/util/Collection;)Z
pop
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public insertReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
aload 1
ifnonnull L0
ldc2_w -9999L
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/isExists(Lcom/nd/android/u/controller/bean/QuickReply;)Z
ifne L1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
ldc "uu_quickreply"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/into(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dao/QuickReplyDao/QuickReplyToValues(Lcom/nd/android/u/controller/bean/QuickReply;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/insert(Lcom/nd/android/u/business/db/dbUtils/Query;)J
lreturn
L1:
ldc2_w -999L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public isExists(Lcom/nd/android/u/controller/bean/QuickReply;)Z
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getUUID()Ljava/lang/String;
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 3
aload 3
ldc "uu_quickreply"
aconst_null
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 3
ldc "uuid = ?"
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 3
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
iconst_1
istore 2
L2:
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 2
ireturn
L1:
iconst_0
istore 2
goto L2
.limit locals 4
.limit stack 3
.end method

.method public updateReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/isExists(Lcom/nd/android/u/controller/bean/QuickReply;)Z
ifne L0
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/insertReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
lreturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
ldc "uu_quickreply"
aconst_null
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
ldc "uuid = ?"
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/getUUID()Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dao/QuickReplyDao/QuickReplyToValues(Lcom/nd/android/u/controller/bean/QuickReply;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/QuickReplyDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
i2l
lreturn
.limit locals 3
.limit stack 3
.end method
