.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/VersionDAOImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/VersionDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/VersionDAOImpl$1
.inner class private static final VersionMapper inner com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper outer com/nd/android/u/contact/dao/impl/VersionDAOImpl

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
putfield com/nd/android/u/contact/dao/impl/VersionDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private versionToValues(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "orgver"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "classver"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "userver"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public deletVersion()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_version"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VersionDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public findVersion()Lcom/nd/android/u/contact/dataStructure/VersionInfo;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_version"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VersionDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper/<init>(Lcom/nd/android/u/contact/dao/impl/VersionDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/VersionInfo
areturn
.limit locals 2
.limit stack 5
.end method

.method public final insertVersion(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/VersionDAOImpl/isExists(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_version"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/VersionDAOImpl/versionToValues(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VersionDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/VersionDAOImpl/updateVersion(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final isExists(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_version"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "orgver = ? "
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "classver = ? "
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "userver = ? "
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 2
L1:
aload 1
ifnull L2
aload 1
invokeinterface android/database/Cursor/close()V 0
L2:
iload 2
ireturn
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 6
.end method

.method public final updateVersion(Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_version"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VersionDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final updateVersion(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Z
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/VersionDAOImpl/versionToValues(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/contact/dao/impl/VersionDAOImpl/updateVersion(Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 3
.end method
