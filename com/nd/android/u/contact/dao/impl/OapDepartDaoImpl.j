.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapDepartDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapDepartDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1
.inner class private static final DepartMapper inner com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper outer com/nd/android/u/contact/dao/impl/OapDepartDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "OapDepartDaoImpl"

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
putfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private departToValues(Lcom/nd/android/u/contact/dataStructure/OapDepart;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "unitid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "deptid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "deptname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "manager_uid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getManager_uid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "manager_username"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getManager_username()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "shortname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getShortname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUpdatetime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "parentid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "seq"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getSeq()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "usercount"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUserCount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "nodeusercount"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "allow_group"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getAllow_group()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "gid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
ldc "/"
ldc "//"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "'"
ldc "''"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "["
ldc "/["
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "]"
ldc "/]"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&"
ldc "/&"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "("
ldc "/("
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc ")"
ldc "/)"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_depart"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "deptid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public final deleteDepart(II)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_depart"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "deptid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteDeparts()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_depart"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public final deleteDeparts(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public final getMaxUpdatetimeByDept(I)I
iconst_0
istore 2
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
ldc "select max(%s) as maxid from %s where %s='%s'"
iconst_4
anewarray java/lang/Object
dup
iconst_0
ldc "updatetime"
aastore
dup
iconst_1
ldc "uu_depart"
aastore
dup
iconst_2
ldc "parentid"
aastore
dup
iconst_3
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 3
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 3
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
L0:
iload 2
istore 1
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 5
.limit stack 5
.end method

.method public final getMaxUpdatetimeByUnit(I)I
iconst_0
istore 2
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
ldc "select max(%s) as maxid from %s where %s='%s'"
iconst_4
anewarray java/lang/Object
dup
iconst_0
ldc "updatetime"
aastore
dup
iconst_1
ldc "uu_depart"
aastore
dup
iconst_2
ldc "unitid"
aastore
dup
iconst_3
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 3
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 3
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
L0:
iload 2
istore 1
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 5
.limit stack 5
.end method

.method public final insertDepart(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)I"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 1
ifnonnull L7
iconst_0
ireturn
L7:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 4
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/size()I 0
istore 3
L1:
iconst_0
istore 2
L8:
iload 2
iload 3
if_icmpge L5
L3:
aload 4
ldc "uu_depart"
aconst_null
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/departToValues(Lcom/nd/android/u/contact/dataStructure/OapDepart;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L4:
iload 2
iconst_1
iadd
istore 2
goto L8
L5:
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
invokeinterface java/util/List/size()I 0
ireturn
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 6
.limit stack 6
.end method

.method public final insertDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/isExists(II)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/departToValues(Lcom/nd/android/u/contact/dataStructure/OapDepart;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final isExists(II)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_depart"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "deptid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
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

.method public final isExists(J)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_depart"
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

.method public final searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "deptid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapDepart
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchDepartByName(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
astore 1
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deptname like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
L0:
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchDepartGid()Ljava/lang/String;
aconst_null
astore 2
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 1
aload 1
ldc "uu_depart"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "gid"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "parentid = 0"
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 3
aload 2
astore 1
aload 3
ifnull L0
aload 2
astore 1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 3
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L0:
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/close()V 0
L1:
aload 1
areturn
.limit locals 4
.limit stack 6
.end method

.method public searchDepartlist(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_depart"
aconst_null
ldc "parentId=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aconst_null
astore 3
aload 4
ifnull L5
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L1:
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L6
new com/nd/android/u/contact/dataStructure/OapDepart
dup
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>()V
astore 5
aload 5
aload 4
aload 4
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setDeptid(I)V
aload 5
aload 4
aload 4
ldc "deptname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setDeptname(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "manager_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setManager_uid(I)V
aload 5
aload 4
aload 4
ldc "manager_username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setManager_username(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "parentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setParentid(I)V
aload 5
aload 4
aload 4
ldc "shortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setShortname(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUpdatetime(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUnitid(I)V
aload 5
aload 4
aload 4
ldc "seq"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setSeq(I)V
aload 5
aload 4
aload 4
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUserCount(I)V
aload 5
aload 4
aload 4
ldc "nodeusercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setNodeUsercount(I)V
aload 5
aload 4
aload 4
ldc "allow_group"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setAllow_group(I)V
aload 5
aload 4
aload 4
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setGid(J)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
goto L1
L4:
astore 3
L7:
aload 4
ifnull L8
aload 4
invokeinterface android/database/Cursor/close()V 0
L8:
aload 3
athrow
L6:
aload 4
ifnull L9
aload 4
invokeinterface android/database/Cursor/close()V 0
L5:
aload 3
areturn
L2:
astore 3
goto L7
L9:
aload 3
areturn
.limit locals 6
.limit stack 9
.end method

.method public final searchDeparts()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public final searchDeparts(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchDeparts(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "parentid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "deptid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final searchDeparts(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
.signature "(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
aload 3
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Landroid/database/sqlite/SQLiteDatabase;Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 6
.end method

.method public final searchSubDepartsByParentid(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_depart"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "parentid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "deptid ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl$DepartMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapDepartDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/departToValues(Lcom/nd/android/u/contact/dataStructure/OapDepart;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapDepartDaoImpl/updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public updateDepart(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)V"
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
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 3
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "nodeusercount"
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "uu_depart"
aload 4
ldc "deptid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L3:
goto L1
L2:
astore 1
L6:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L4:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L6
.limit locals 5
.limit stack 9
.end method
