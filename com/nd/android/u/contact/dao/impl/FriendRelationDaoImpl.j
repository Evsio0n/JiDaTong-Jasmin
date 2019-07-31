.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/FriendRelationDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$1
.inner class private static final FriendRelationMapper inner com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper outer com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl

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
putfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private friendrelationToValues(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fgid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFgid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "fid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "note"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getNode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public addFriendRelation(Ljava/util/List;)Z
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch all from L8 to L9 using L3
iconst_1
istore 5
iconst_0
istore 4
iconst_0
istore 3
iload 4
istore 2
aload 1
ifnull L10
iload 4
istore 2
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L10
L0:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L1:
iload 3
istore 2
L4:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/FriendRelation
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J
pop2
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
L6:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L7:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L10:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L11
L12:
iload 5
ireturn
L2:
astore 1
L8:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L9:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iconst_0
ireturn
L3:
astore 1
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L11:
iconst_0
istore 5
goto L12
.limit locals 7
.limit stack 3
.end method

.method public final deleteFriendRelation()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_friendrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public final deleteFriendRelation(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_friendrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteFriendRelationByGroup(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "fgid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public final getFriendList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
ldc "select fid,username,signature,sysavatar from uu_user where fid in (select fid from uu_friendrelation);"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc " fid in (select fid from uu_friendrelation);"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 1
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 3
aload 3
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 3
aload 1
iconst_1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 3
aload 1
iconst_2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 3
aload 1
iconst_3
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
aload 2
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L1
L0:
aload 1
ifnull L2
aload 1
invokeinterface android/database/Cursor/close()V 0
L2:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public final insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/isExists(J)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendrelation"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/friendrelationToValues(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertFriendRelation(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;)J"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnull L6
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
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
checkcast com/nd/android/u/contact/dataStructure/FriendRelation
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J
pop2
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L6:
ldc2_w -1L
lreturn
L4:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lconst_1
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final isExists(J)Z
aload 0
lload 1
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/searchFriendRelationByFid(J)Lcom/nd/android/u/contact/dataStructure/FriendRelation;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public isExistsInGroup(JJ)Z
iconst_0
istore 5
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 6
aload 6
ldc "uu_friendrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 6
ldc "fid = ?"
lload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 6
ldc "fgid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 6
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 9
aconst_null
astore 8
aconst_null
astore 7
aload 8
astore 6
aload 9
ifnull L0
aload 8
astore 6
aload 9
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 7
astore 6
L1:
aload 9
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>()V
astore 6
aload 6
aload 9
aload 9
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFgid(I)V
aload 6
aload 9
aload 9
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFid(J)V
aload 6
aload 9
aload 9
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setNoTe(Ljava/lang/String;)V
goto L1
L0:
aload 9
invokeinterface android/database/Cursor/close()V 0
aload 6
ifnull L2
iconst_1
istore 5
L2:
iload 5
ireturn
.limit locals 10
.limit stack 4
.end method

.method public final searchFriendRelation()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_friendrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fgid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public final searchFriendRelation(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fgid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fgid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchFriendRelationByFid(J)Lcom/nd/android/u/contact/dataStructure/FriendRelation;
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_friendrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 6
aconst_null
astore 5
aconst_null
astore 4
aload 5
astore 3
aload 6
ifnull L0
aload 5
astore 3
aload 6
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
astore 3
L1:
aload 6
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>()V
astore 3
aload 3
aload 6
aload 6
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFgid(I)V
aload 3
aload 6
aload 6
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFid(J)V
aload 3
aload 6
aload 6
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setNoTe(Ljava/lang/String;)V
goto L1
L0:
aload 6
ifnull L2
aload 6
invokeinterface android/database/Cursor/close()V 0
L2:
aload 3
areturn
.limit locals 7
.limit stack 4
.end method

.method public final searchFriendRelationByGender(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
ldc "select DISTINCT uu_user.fid from uu_user left join uu_friendrelation "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uu_user.gender = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "' and uu_friendrelation.fgid <> ''"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 2
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
aload 3
aload 2
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L1
L0:
aload 2
ifnull L2
aload 2
invokeinterface android/database/Cursor/close()V 0
L2:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public final updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendrelation"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "fid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/friendrelationToValues(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
pop
return
.limit locals 3
.limit stack 4
.end method
