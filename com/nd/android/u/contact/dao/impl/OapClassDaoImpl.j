.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapClassDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapClassDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapClassDaoImpl$1
.inner class private static final OapClassMapper inner com/nd/android/u/contact/dao/impl/OapClassDaoImpl$OapClassMapper outer com/nd/android/u/contact/dao/impl/OapClassDaoImpl

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
putfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private classToValues(Lcom/nd/android/u/contact/dataStructure/OapClass;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "classid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "classname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "shortname"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getShortname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "gradeid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGradeid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "typeid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getTypeid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unitid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "gid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "gid1"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid1()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "usercount"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUsercount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "manager1"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getManager1()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "manager2"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getManager2()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUpdatetime()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "updatetime2"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUpdatetime2()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_class"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "classid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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
ldc "uu_class"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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
ldc "uu_class"
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
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
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
ldc "uu_class"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " , "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_classrelation"
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
ldc "uu_classrelation"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_class"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 4
aload 3
ldc "uu_class"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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

.method public getCourseClasses(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Ljava/lang/String;>;"
aconst_null
astore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/teacher I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 5
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SELECT uu_class.classname||'-'||uu_classrelation.course_name||'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' as name from  uu_classrelation, uu_class where uu_classrelation.uid='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_classrelation.fid='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "' and type=2  and uu_classrelation.fid=uu_class.uid and  uu_classrelation.classid=uu_class.classid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
ldc "OapClassDaoImpl"
ldc "[stbuf]=%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 4
astore 3
aload 5
ifnull L0
aload 4
astore 3
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 4
astore 3
aload 5
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
aload 4
aload 5
aload 5
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L1
L0:
aload 5
ifnull L2
aload 5
invokeinterface android/database/Cursor/close()V 0
L2:
aload 3
areturn
.limit locals 6
.limit stack 6
.end method

.method public getMaxUpdatetime()I
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
ldc "select max(%s) as maxupdatetime from %s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "updatetime"
aastore
dup
iconst_1
ldc "uu_class"
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 2
ldc "uu_class"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
iconst_0
istore 1
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 2
invokeinterface android/database/Cursor/close()V 0
iload 1
ireturn
.limit locals 4
.limit stack 5
.end method

.method public insertOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapClassDaoImpl/isExists(I)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_class"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapClassDaoImpl/classToValues(Lcom/nd/android/u/contact/dataStructure/OapClass;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapClassDaoImpl/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public insertOapClass(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;)V"
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
checkcast com/nd/android/u/contact/dataStructure/OapClass
invokevirtual com/nd/android/u/contact/dao/impl/OapClassDaoImpl/insertOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)J
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
ldc "uu_class"
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

.method public searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapClass;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_class"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapClassDaoImpl$OapClassMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassDaoImpl$OapClassMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapClass
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchOapClasss()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_class"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid ASC "
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapClassDaoImpl$OapClassMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassDaoImpl$OapClassMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapClassDaoImpl/classToValues(Lcom/nd/android/u/contact/dataStructure/OapClass;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapClassDaoImpl/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
