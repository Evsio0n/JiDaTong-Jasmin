.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/VisitorDAOImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/VisitorDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/VisitorDAOImpl$1
.inner class private static final VisitorMapper inner com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper outer com/nd/android/u/contact/dao/impl/VisitorDAOImpl

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
putfield com/nd/android/u/contact/dao/impl/VisitorDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private visitorToValues(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "tuid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getTuid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "fuid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "dateline"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getDateline()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteVisitor(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_visitor"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "tuid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VisitorDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final findVisitor(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/VisitorInfo;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_visitor"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "tuid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VisitorDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper/<init>(Lcom/nd/android/u/contact/dao/impl/VisitorDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final insertVisitor(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/VisitorDAOImpl/isExists(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_visitor"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/VisitorDAOImpl/visitorToValues(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VisitorDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/VisitorDAOImpl/updateVisitor(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertVisitorList(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/VisitorInfo;>;)J"
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
checkcast com/nd/android/u/contact/dataStructure/VisitorInfo
invokevirtual com/nd/android/u/contact/dao/impl/VisitorDAOImpl/insertVisitor(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)J
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

.method public final isExists(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_visitor"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "tuid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getTuid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "fuid = ? "
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "dateline = ? "
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/getDateline()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
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

.method public final updateVisitor(Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_visitor"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/VisitorDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public final updateVisitor(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Z
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/VisitorDAOImpl/visitorToValues(Lcom/nd/android/u/contact/dataStructure/VisitorInfo;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/contact/dao/impl/VisitorDAOImpl/updateVisitor(Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 3
.end method
