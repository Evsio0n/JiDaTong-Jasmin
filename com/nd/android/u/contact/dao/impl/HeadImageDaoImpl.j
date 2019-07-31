.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/HeadImageDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/HeadImageDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/HeadImageDaoImpl$1
.inner class private static final HeaderImageMapper inner com/nd/android/u/contact/dao/impl/HeadImageDaoImpl$HeaderImageMapper outer com/nd/android/u/contact/dao/impl/HeadImageDaoImpl

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
putfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private headerImageToValues(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "url"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getUrl()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "showupdatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getShowupdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private updateHeadImage(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_header"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "uid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getUid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/headerImageToValues(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public final deleteHeadImage(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_header"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "_id = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final findHeaderImage(J)Lcom/nd/android/u/contact/dataStructure/HeaderImage;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_header"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/HeadImageDaoImpl$HeaderImageMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/HeadImageDaoImpl$HeaderImageMapper/<init>(Lcom/nd/android/u/contact/dao/impl/HeadImageDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/HeaderImage
areturn
.limit locals 4
.limit stack 5
.end method

.method public getMaxFaceUpdateTime()J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
ldc "select max(uu_header.updatetime) from uu_header"
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnonnull L0
lconst_0
lreturn
L0:
lconst_0
lstore 3
lload 3
lstore 1
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
lload 3
lstore 1
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 5
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
lstore 1
L1:
aload 5
invokeinterface android/database/Cursor/close()V 0
lload 1
lreturn
.limit locals 6
.limit stack 3
.end method

.method public final getMaxShowUpdateTime()J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
ldc "select max(uu_header.showupdatetime) from uu_header"
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnonnull L0
lconst_0
lreturn
L0:
lconst_0
lstore 3
lload 3
lstore 1
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
lload 3
lstore 1
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 5
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
lstore 1
L1:
aload 5
invokeinterface android/database/Cursor/close()V 0
lload 1
lreturn
.limit locals 6
.limit stack 3
.end method

.method public final insertHeadImage(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getUid()J
invokevirtual com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/isExists(J)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_header"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/headerImageToValues(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/updateHeadImage(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Z
ifeq L1
lconst_1
lreturn
L1:
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertHeadImage(Ljava/util/ArrayList;)J
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HeaderImage;>;)J"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnull L6
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L7
L6:
lconst_0
lreturn
L7:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
ldc "uu_header"
aconst_null
aload 0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/HeaderImage
invokespecial com/nd/android/u/contact/dao/impl/HeadImageDaoImpl/headerImageToValues(Lcom/nd/android/u/contact/dataStructure/HeaderImage;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L3:
goto L1
L2:
astore 3
L8:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
invokevirtual java/util/ArrayList/size()I
i2l
lreturn
L4:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L8
.limit locals 4
.limit stack 5
.end method

.method public final isExists(J)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_header"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 4
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 3
L1:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
iload 3
ireturn
L0:
iconst_0
istore 3
goto L1
.limit locals 5
.limit stack 6
.end method

.method public final updateHeadImage(J)V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "update uu_header set updatetime=-1  where uid=?"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 7
.end method
