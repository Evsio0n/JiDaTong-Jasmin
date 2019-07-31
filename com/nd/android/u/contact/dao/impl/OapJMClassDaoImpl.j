.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapJMClassDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$1
.inner class private static final OapClassMapper inner com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper outer com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "OapClassDaoImpl"

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
putfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private classToValues(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "classid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "classname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "shortname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getShortname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "gid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getGid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "usercount"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getUsercount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "manager1"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "manager2"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager2()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "classver"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassver()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "orgver"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getOrgver()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_jmclass"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "classid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public deleteOapClass()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_jmclass"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public deleteOapClass(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_jmclass"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public getClassByGid(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
lload 1
lconst_0
lcmp
ifgt L0
aconst_null
areturn
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_jmclass"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
areturn
.limit locals 4
.limit stack 5
.end method

.method public getClassName(J)Ljava/lang/String;
.catch all from L0 to L1 using L2
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
new java/lang/StringBuilder
dup
ldc "select "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "classname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclass"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " , "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclassrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "fid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclassrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclass"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 4
aload 3
ldc "uu_jmclass"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
ldc ""
astore 4
aload 4
astore 3
aload 5
ifnull L1
aload 4
astore 3
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 5
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
L1:
aload 5
ifnull L3
aload 5
invokeinterface android/database/Cursor/close()V 0
L3:
aload 3
areturn
L2:
astore 3
aload 5
ifnull L4
aload 5
invokeinterface android/database/Cursor/close()V 0
L4:
aload 3
athrow
.limit locals 6
.limit stack 3
.end method

.method public getJMClass(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
new java/lang/StringBuilder
dup
ldc "select "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "classname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclassrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " , "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclass"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclassrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "fid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclassrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_jmclass"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 4
aload 3
ldc "uu_jmclass"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aconst_null
astore 4
aload 4
astore 3
aload 5
ifnull L3
aload 4
astore 3
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
new com/nd/android/u/contact/dataStructure/OapJMClass
dup
invokespecial com/nd/android/u/contact/dataStructure/OapJMClass/<init>()V
astore 3
L1:
aload 3
aload 5
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setClassname(Ljava/lang/String;)V
aload 3
aload 5
iconst_1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setClassid(I)V
aload 3
aload 5
iconst_2
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setGid(I)V
L3:
aload 5
ifnull L5
aload 5
invokeinterface android/database/Cursor/close()V 0
L5:
aload 3
areturn
L2:
astore 3
L6:
aload 5
ifnull L7
aload 5
invokeinterface android/database/Cursor/close()V 0
L7:
aload 3
athrow
L4:
astore 3
goto L6
.limit locals 6
.limit stack 3
.end method

.method public insertOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/isExists(I)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_jmclass"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/classToValues(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public insertOapClass(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
invokevirtual com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/insertOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)J
pop2
goto L1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public isExists(I)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_jmclass"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "classid = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 2
L1:
aload 3
ifnull L2
aload 3
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

.method public searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_jmclass"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchOapClasss()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_jmclass"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid ASC "
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$OapClassMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapJMClassDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/classToValues(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapJMClassDaoImpl/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
