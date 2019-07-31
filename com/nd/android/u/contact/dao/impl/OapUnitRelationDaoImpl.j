.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapUnitRelationDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1
.inner class private static final UnitRelationMapper inner com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper outer com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "OapUnitRelationDaoImpl"

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
putfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private unitRelationToValues(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "deptid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "fid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "unitid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getUpdatetime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteUnitRelation()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public final deleteUnitRelation(II)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "unitid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "deptid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteUnitRelation(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
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
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteUnitRelation(JI)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
aload 4
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "unitid = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 5
.limit stack 6
.end method

.method public final deleteUnitRelation(JII)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 5
ldc "deptid = ?"
iload 4
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 6
.limit stack 6
.end method

.method public getDeptidByGid(J)I
iconst_0
istore 3
ldc "select deptid from uu_depart where gid='%d'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/query(Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 4
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 3
aload 4
invokeinterface android/database/Cursor/close()V 0
L1:
iload 3
ireturn
L0:
aload 4
ifnull L1
aload 4
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method

.method public final getMaxUpdatetimeByDepart(II)I
iconst_0
istore 3
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
ldc "select max(%s) as maxid from %s where %s='%s' and %s='%s'"
bipush 6
anewarray java/lang/Object
dup
iconst_0
ldc "updatetime"
aastore
dup
iconst_1
ldc "uu_unitrelation"
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
dup
iconst_4
ldc "deptid"
aastore
dup
iconst_5
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 5
aload 4
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 4
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
aload 4
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
L0:
iload 3
istore 1
aload 4
ifnull L1
aload 4
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 6
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
ldc "uu_unitrelation"
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
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public final insertUnitRelation(Lcom/product/android/commonInterface/contact/OapUnitRelation;)J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getUnitid()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/isExists(JII)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_unitrelation"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/unitRelationToValues(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/updateUnitRelation(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 5
.end method

.method public final insertUnitRelation(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;)J"
aload 1
ifnonnull L0
L1:
lconst_0
lreturn
L0:
aload 1
invokeinterface java/util/List/size()I 0
istore 3
bipush 50
istore 2
iconst_0
istore 5
iload 5
istore 4
bipush 50
iload 3
if_icmple L2
iload 3
istore 2
iload 5
istore 4
L2:
aload 0
aload 1
iload 4
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/insertUnitRelation(Ljava/util/List;II)J
pop2
iload 2
istore 5
iload 2
iload 3
if_icmpeq L1
iload 2
bipush 50
iadd
istore 6
iload 6
istore 2
iload 5
istore 4
iload 6
iload 3
if_icmple L2
iload 3
istore 2
iload 5
istore 4
goto L2
.limit locals 7
.limit stack 4
.end method

.method public final insertUnitRelation(Ljava/util/List;II)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;II)J"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 4
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L5:
iload 2
iload 3
if_icmpge L3
L0:
aload 4
ldc "uu_unitrelation"
aconst_null
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/unitRelationToValues(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L1:
iload 2
iconst_1
iadd
istore 2
goto L5
L3:
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L4:
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lconst_0
lreturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
.limit locals 5
.limit stack 6
.end method

.method public final insertUnitRelationBySingle(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 1
ifnull L7
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
ldc "uu_unitrelation"
aconst_null
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/unitRelationToValues(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Landroid/content/ContentValues;
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
L7:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 5
.limit stack 6
.end method

.method public isExists(J)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "fid = ?"
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

.method public final isExists(JII)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 6
aload 6
ldc "uu_unitrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 6
ldc "deptid = ?"
iload 4
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
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

.method public final searchUnitRelation(J)Lcom/product/android/commonInterface/contact/OapUnitRelation;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUnitRelation
areturn
.limit locals 4
.limit stack 5
.end method

.method public final searchUnitRelation()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public final searchUnitRelation(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchUnitRelation(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "deptid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final searchUnitRelation(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
.signature "(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
aload 3
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Landroid/database/sqlite/SQLiteDatabase;Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 6
.end method

.method public final searchUnitRelationByDeptid(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "deptid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchUnitRelationByfid(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_unitrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$UnitRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final updateUnitRelation(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_unitrelation"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "deptid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getUnitid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/unitRelationToValues(Lcom/product/android/commonInterface/contact/OapUnitRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUnitRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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
