.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapUnitRelationTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_unitrelation_INDEX1 ON uu_unitrelation(fid,unitid)"

.field public static final 'CREATE_INDEX1' Ljava/lang/String; = "CREATE INDEX uu_unitrelation_INDEX2 ON uu_unitrelation(deptid,unitid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_unitrelation (_id integer , unitid integer ,deptid integer ,updatetime integer ,fid integer , constraint pk_t3 primary key (fid,deptid,unitid))"

.field public static final 'CREATE_TABLE_TEMP' Ljava/lang/String; = "create table uu_unitrelation_temp (_id integer , unitid integer ,deptid integer ,updatetime integer ,fid integer , constraint pk_t3 primary key (fid,deptid,unitid))"

.field public static final 'DROP_INDEX1' Ljava/lang/String; = "DROP INDEX uu_unitrelation_INDEX2"

.field public static final 'FIELD_DEPARTID' Ljava/lang/String; = "deptid"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_unitrelation"

.field public static final 'TABLE_NAME_TEMP' Ljava/lang/String; = "uu_unitrelation_temp"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "unitid"
aastore
dup
iconst_2
ldc "deptid"
aastore
dup
iconst_3
ldc "updatetime"
aastore
dup
iconst_4
ldc "fid"
aastore
putstatic com/nd/android/u/contact/db/table/OapUnitRelationTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/OapUnitRelation;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/product/android/commonInterface/contact/OapUnitRelation
dup
invokespecial com/product/android/commonInterface/contact/OapUnitRelation/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUnitid(I)V
aload 1
aload 0
aload 0
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setDeptid(I)V
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setFid(J)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUpdatetime(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
