.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapClassRelationDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1
.inner class private static final ClassRelationMapper inner com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper outer com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "OapClassRelationDaoImpl"

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
putfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private classMastersToValues(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "classid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "type"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "studentid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getStudentId()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "student_name"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getStudentName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "courseid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourseid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "course_name"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourse_name()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "fid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public deleteClassRelation()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_classrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public deleteClassRelation(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_classrelation"
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
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public deleteClassRelation(II)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_classrelation"
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
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 6
.end method

.method public getClassRelationCourseName(JI)Ljava/lang/String;
aconst_null
astore 4
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
ldc "select %s  from %s where %s='%s'  and %s='%s'"
bipush 6
anewarray java/lang/Object
dup
iconst_0
ldc "course_name"
aastore
dup
iconst_1
ldc "uu_classrelation"
aastore
dup
iconst_2
ldc "fid"
aastore
dup
iconst_3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_4
ldc "classid"
aastore
dup
iconst_5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 6
aload 5
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
aload 6
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnull L0
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
aload 5
aload 5
ldc "course_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
aload 5
ldc "course_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 5
ifnull L3
aload 5
invokeinterface android/database/Cursor/close()V 0
L3:
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 4
L4:
aload 4
areturn
L0:
aload 5
ifnull L4
aload 5
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
.limit locals 7
.limit stack 6
.end method

.method public getCountClassRelationByType(II)I
iconst_0
istore 3
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
ldc "select count(*) from %s where %s='%s' and %s='%s'"
iconst_5
anewarray java/lang/Object
dup
iconst_0
ldc "uu_classrelation"
aastore
dup
iconst_1
ldc "classid"
aastore
dup
iconst_2
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
ldc "type"
aastore
dup
iconst_4
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 5
aload 4
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
iload 3
istore 1
aload 4
ifnull L0
iload 3
istore 1
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 4
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L0:
aload 4
ifnull L1
aload 4
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
.limit locals 6
.limit stack 5
.end method

.method public insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getType()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourseid()I
invokevirtual com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/isExists(IJII)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_classrelation"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/classMastersToValues(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/updateClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 6
.end method

.method public insertClassRelation(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
ldc2_w -1L
lreturn
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
invokevirtual com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J
pop2
goto L2
L3:
lconst_1
lreturn
.limit locals 2
.limit stack 2
.end method

.method public isExists(IJII)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 7
aload 7
ldc "uu_classrelation"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 7
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "courseid = ?"
iload 5
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 4
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 7
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 7
aload 7
ifnull L0
aload 7
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 6
L1:
aload 7
ifnull L2
aload 7
invokeinterface android/database/Cursor/close()V 0
L2:
iload 6
ireturn
L0:
iconst_0
istore 6
goto L1
.limit locals 8
.limit stack 6
.end method

.method public searchClassRelation(JII)Lcom/nd/android/u/contact/dataStructure/OapClassRelation;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_classrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "classid = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "courseid = ?"
iload 4
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
new com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
areturn
.limit locals 6
.limit stack 5
.end method

.method public searchClassRelation()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_classrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid <>  0"
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public searchClassRelation(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_classrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid <>  0"
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchClassRelation(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_classrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "classid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "type = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid <>  0"
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public searchClassRelation(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_classrelation"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public updateClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_classrelation"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "classid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/classMastersToValues(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
pop
return
.limit locals 3
.limit stack 4
.end method
