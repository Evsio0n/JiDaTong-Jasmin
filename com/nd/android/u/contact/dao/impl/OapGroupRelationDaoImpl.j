.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapGroupRelationDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$1
.inner class private static final GroupMapper inner com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper outer com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private gruopRelationToValues(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "gid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "fid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "nickname"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "grade"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "sex"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getSex()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteGroupRelation(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_grouprelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteGroupRelation(JJ)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_grouprelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 5
ldc "gid = ?"
lload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 6
.limit stack 6
.end method

.method public final deleteGroupRelations()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_grouprelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public final insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/isExists(JJ)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_grouprelation"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/gruopRelationToValues(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 5
.end method

.method public insertGroupRelation(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)J"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J
pop2
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
ldc2_w -1L
lreturn
L4:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lconst_1
lreturn
.limit locals 3
.limit stack 2
.end method

.method public final isExists(JJ)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 6
aload 6
ldc "uu_grouprelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 6
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 6
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 6
aload 6
ifnull L0
aload 6
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 5
L1:
aload 6
ifnull L2
aload 6
invokeinterface android/database/Cursor/close()V 0
L2:
iload 5
ireturn
L0:
iconst_0
istore 5
goto L1
.limit locals 7
.limit stack 6
.end method

.method public final searchGroupRelations(JI)Ljava/util/List;
.signature "(JI)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
iload 3
ifne L0
aload 4
ldc "uu_grouprelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "_id DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
L1:
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
new com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
L0:
iload 3
iconst_1
if_icmpne L1
aload 4
ldc "uu_grouprelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc " (grade=2 or grade=3) "
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "grade DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
goto L1
.limit locals 5
.limit stack 5
.end method

.method public final updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_grouprelation"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "gid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/gruopRelationToValues(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method
