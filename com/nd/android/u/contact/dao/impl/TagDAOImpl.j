.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/TagDAOImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/TagDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/TagDAOImpl$1
.inner class private static final TagMapper inner com/nd/android/u/contact/dao/impl/TagDAOImpl$TagMapper outer com/nd/android/u/contact/dao/impl/TagDAOImpl

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
putfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private tagToValues(Lcom/product/android/commonInterface/contact/TagInfo;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "tigid"
aload 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "tagname"
aload 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteTag(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_ability"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final findTag(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/TagInfo;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_ability"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/TagDAOImpl$TagMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/TagDAOImpl$TagMapper/<init>(Lcom/nd/android/u/contact/dao/impl/TagDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final findTagByLimit(JI)Ljava/util/List;
.signature "(JI)Ljava/util/List<Lcom/product/android/commonInterface/contact/TagInfo;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
aload 4
ldc "uu_ability"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
iload 3
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
new com/nd/android/u/contact/dao/impl/TagDAOImpl$TagMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/TagDAOImpl$TagMapper/<init>(Lcom/nd/android/u/contact/dao/impl/TagDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 5
.limit stack 5
.end method

.method public final insertTag(Lcom/product/android/commonInterface/contact/TagInfo;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/TagDAOImpl/isExists(Lcom/product/android/commonInterface/contact/TagInfo;)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_ability"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/TagDAOImpl/tagToValues(Lcom/product/android/commonInterface/contact/TagInfo;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/TagDAOImpl/updateTag(Lcom/product/android/commonInterface/contact/TagInfo;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertTagList(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/TagInfo;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/TagInfo
invokevirtual com/nd/android/u/contact/dao/impl/TagDAOImpl/insertTag(Lcom/product/android/commonInterface/contact/TagInfo;)J
pop2
goto L1
L2:
lconst_1
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final isExists(Lcom/product/android/commonInterface/contact/TagInfo;)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_ability"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "uid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/getUid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "tigid = ? "
aload 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "tigid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
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

.method public final updateTag(Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_ability"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/TagDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public final updateTag(Lcom/product/android/commonInterface/contact/TagInfo;)Z
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/TagDAOImpl/tagToValues(Lcom/product/android/commonInterface/contact/TagInfo;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/contact/dao/impl/TagDAOImpl/updateTag(Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 3
.end method
