.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapFriendGroupDao
.inner class public static final FriendGroupMapper inner com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper outer com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl

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
putfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private friendgroupToValues(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fgid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "name"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_friendgroup"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "fgid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public final deleteFriendGroup(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendgroup"
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
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public final deleteFriendGroups()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_friendgroup"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public final insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/isExists(I)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendgroup"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/friendgroupToValues(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertFriendGroups(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
lconst_0
lreturn
L1:
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 2
L2:
iload 2
iflt L3
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
invokevirtual com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J
pop2
iload 2
iconst_1
isub
istore 2
goto L2
L3:
aload 1
invokeinterface java/util/List/size()I 0
i2l
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final isExists(I)Z
aload 0
iload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/searchFriendGroupByFgid(I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public modFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)Z
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/friendgroupToValues(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public searchFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_friendgroup"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "name = ?"
aload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fgid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper
dup
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper/<init>()V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
areturn
.limit locals 3
.limit stack 4
.end method

.method public searchFriendGroupByFgid(I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 2
aload 2
ldc "uu_friendgroup"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "fgid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 2
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 4
aconst_null
astore 3
aload 3
astore 2
aload 4
ifnull L0
aload 3
astore 2
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>()V
astore 3
L1:
aload 3
astore 2
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
aload 3
aload 4
aload 4
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFgid(I)V
aload 3
aload 4
aload 4
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
goto L1
L0:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public final searchFriendGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_friendgroup"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fgid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper
dup
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper/<init>()V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 4
.end method

.method public final updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/friendgroupToValues(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl/updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
