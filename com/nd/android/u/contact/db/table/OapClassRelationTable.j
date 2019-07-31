.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/OapClassRelationTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_classrelation_INDEX1 ON uu_classrelation(fid,classid)"

.field public static final 'CREATE_INDEX1' Ljava/lang/String; = "CREATE INDEX uu_classrelation_INDEX2 ON uu_classrelation(type,classid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_classrelation (_id integer , classid integer ,type integer ,studentid text,student_name text,courseid integer ,course_name text ,fid integer , constraint pk_t3 primary key (fid, classid,studentid,type ,courseid ))"

.field public static final 'DROP_INDEX1' Ljava/lang/String; = "DROP INDEX uu_classrelation_INDEX2"

.field public static final 'FIELD_CLASSID' Ljava/lang/String; = "classid"

.field public static final 'FIELD_COURSE_ID' Ljava/lang/String; = "courseid"

.field public static final 'FIELD_COURSE_NAME' Ljava/lang/String; = "course_name"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_STUDENT_ID' Ljava/lang/String; = "studentid"

.field public static final 'FIELD_STUDENT_NAME' Ljava/lang/String; = "student_name"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_classrelation"

.field public static final 'TAG' Ljava/lang/String; = "OapClassRelationTable"

.method static <clinit>()V
bipush 8
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "classid"
aastore
dup
iconst_2
ldc "type"
aastore
dup
iconst_3
ldc "studentid"
aastore
dup
iconst_4
ldc "student_name"
aastore
dup
iconst_5
ldc "courseid"
aastore
dup
bipush 6
ldc "course_name"
aastore
dup
bipush 7
ldc "fid"
aastore
putstatic com/nd/android/u/contact/db/table/OapClassRelationTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapClassRelation;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "OapClassRelationTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "classid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 1
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
aload 1
aload 0
aload 0
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setStudentId(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "student_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setStudentName(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "courseid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 1
aload 0
aload 0
ldc "course_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
