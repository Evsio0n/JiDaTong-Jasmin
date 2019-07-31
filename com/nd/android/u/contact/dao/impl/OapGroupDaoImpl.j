.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapGroupDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapGroupDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1
.inner class private static final GroupMapper inner com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper outer com/nd/android/u/contact/dao/impl/OapGroupDaoImpl

.field public static final 'REMOVEFLAG' I = -1


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
putfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private gruopToValues(Lcom/product/android/commonInterface/contact/OapGroup;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "gid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "avatar"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getAvatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "groupname"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "imageUrl"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getImageUrl()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "introduction"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getIntroduction()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "notice"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "creatorid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "joinerm"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "type"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "falg"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getFalg()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "catagory"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCategory()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "spell1"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getSpell1()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "spell2"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getSpell2()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "gid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public clearGroups()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_group"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public deleteGroup(J)Z
aload 0
lload 1
iconst_1
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/isExists(JZ)Z
ifeq L0
aload 0
lload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
aload 3
iconst_m1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 0
aload 3
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
L0:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public final deleteGroup(JI)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
aload 4
ldc "uu_group"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 5
.limit stack 6
.end method

.method public final deleteGroups(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public final findAvailGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
areturn
.limit locals 4
.limit stack 5
.end method

.method public final findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
areturn
.limit locals 4
.limit stack 5
.end method

.method public final findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
areturn
.limit locals 4
.limit stack 5
.end method

.method public getGroupName(J)Ljava/lang/String;
lload 1
lconst_0
lcmp
ifgt L0
aconst_null
astore 4
L1:
aload 4
areturn
L0:
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_group"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "groupname"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 5
aload 5
ifnull L2
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L2
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 5
aload 5
ldc "groupname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
L3:
aload 3
astore 4
aload 5
ifnull L1
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 3
areturn
L2:
aconst_null
astore 3
goto L3
.limit locals 6
.limit stack 6
.end method

.method public final insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
iconst_1
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/isExists(JZ)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/gruopToValues(Lcom/product/android/commonInterface/contact/OapGroup;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 4
.end method

.method public insertGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch all from L5 to L6 using L3
.catch java/lang/Exception from L7 to L8 using L2
.catch all from L7 to L8 using L3
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
ifeq L7
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J
pop2
L4:
goto L1
L2:
astore 1
L5:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L6:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L7:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L8:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final isExists(JZ)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_group"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
iload 3
ifeq L0
aload 4
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
L1:
aload 4
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 4
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L2
iconst_1
istore 3
L3:
aload 4
ifnull L4
aload 4
invokeinterface android/database/Cursor/close()V 0
L4:
iload 3
ireturn
L0:
aload 4
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
goto L1
L2:
iconst_0
istore 3
goto L3
.limit locals 5
.limit stack 6
.end method

.method public final searchGroupByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 3
ldc ""
astore 1
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 3
astore 1
aload 3
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
aload 3
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L3:
aload 1
astore 3
aload 1
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 1
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L4:
aload 3
astore 1
aload 3
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
aload 3
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L5:
aload 1
astore 3
aload 1
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 1
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L6:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "( groupname like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' OR "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LIKE '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' OR "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LIKE '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L0:
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " OR gid LIKE '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "%')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L1:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 1
invokevirtual java/lang/String/length()I
ifle L7
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "spell2 asc"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
L8:
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
astore 7
aload 7
ifnull L9
aload 7
invokeinterface java/util/List/size()I 0
ifgt L10
L9:
aconst_null
areturn
L2:
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L1
L7:
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
goto L8
L10:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L11:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L13
L14
L15
L16
L17
default : L18
L18:
goto L11
L13:
aload 5
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
dup
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L17:
aload 1
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup
dup
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/<init>(J)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L14:
aload 3
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup
dup
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup/<init>(J)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L15:
aload 4
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup
dup
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/<init>(J)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L16:
aload 6
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
dup
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L12:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 7
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 7
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 7
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 7
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 7
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 7
areturn
.limit locals 9
.limit stack 5
.end method

.method public final searchGroups(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "_id DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchGroups(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
ldc ""
astore 1
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 3
astore 1
aload 3
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 3
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L4:
aload 1
astore 3
aload 1
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
aload 1
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L5:
aload 3
astore 1
aload 3
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 3
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L6:
aload 1
astore 3
aload 1
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 1
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L7:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " groupname like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' OR "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LIKE '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' OR "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LIKE '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " OR gid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L1:
aload 3
astore 1
L3:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 1
invokevirtual java/lang/String/length()I
ifle L8
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
L9:
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
astore 1
aload 1
ifnull L10
aload 1
invokeinterface java/util/List/size()I 0
ifle L10
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L11:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 9
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L13
L14
L15
L16
L17
default : L18
L18:
goto L11
L13:
aload 6
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L8:
aload 3
ldc "uu_group"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "falg <> ?"
iconst_m1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
goto L9
L17:
aload 3
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L14:
aload 4
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L15:
aload 5
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L16:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
astore 10
aload 10
ifnull L19
aload 9
aload 10
checkcast java/util/ArrayList
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
L19:
aload 7
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L11
L12:
aload 1
invokeinterface java/util/List/clear()V 0
aload 1
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 7
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 3
invokeinterface java/util/List/clear()V 0
aload 4
invokeinterface java/util/List/clear()V 0
aload 5
invokeinterface java/util/List/clear()V 0
aload 6
invokeinterface java/util/List/clear()V 0
aload 7
invokeinterface java/util/List/clear()V 0
L10:
aload 1
areturn
.limit locals 11
.limit stack 5
.end method

.method public final updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/gruopToValues(Lcom/product/android/commonInterface/contact/OapGroup;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public final updatetUnavailGroup(JI)Z
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "falg"
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_group"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 4
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method
