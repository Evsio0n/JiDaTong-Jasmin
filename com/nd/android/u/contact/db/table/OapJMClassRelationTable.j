.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/OapJMClassRelationTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_jmclassrelation_INDEX1 ON uu_jmclassrelation(fid,classid)"

.field public static final 'CREATE_INDEX1' Ljava/lang/String; = "CREATE INDEX uu_jmclassrelation_INDEX2 ON uu_jmclassrelation(classid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_jmclassrelation (_id integer , classid integer ,userver integer ,fid integer , constraint pk_t3 primary key (fid, classid  ))"

.field public static final 'DROP_INDEX1' Ljava/lang/String; = "DROP INDEX uu_jmclassrelation_INDEX2"

.field public static final 'FIELD_CLASSID' Ljava/lang/String; = "classid"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_USERVER' Ljava/lang/String; = "userver"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_jmclassrelation"

.field public static final 'TAG' Ljava/lang/String; = "OapClassRelationTable"

.method static <clinit>()V
iconst_4
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
ldc "userver"
aastore
dup
iconst_3
ldc "fid"
aastore
putstatic com/nd/android/u/contact/db/table/OapJMClassRelationTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;
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
new com/nd/android/u/contact/dataStructure/OapJMClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapJMClassRelation/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "classid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setClassid(I)V
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setFid(J)V
aload 1
aload 0
aload 0
ldc "userver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setUserver(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
