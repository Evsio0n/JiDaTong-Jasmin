.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapDepartTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_depart_INDEX1 ON uu_depart(unitid,deptid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_depart (_id integer , deptid integer  ,unitid integer  ,parentid integer ,deptname text, shortname text, manager_uid integer, manager_username text, seq integer, allow_group integer, usercount  integer, nodeusercount integer, gid integer, updatetime text , constraint pk_t3 primary key (deptid,unitid))"

.field public static final 'FIELD_ALLOW_GROUP' Ljava/lang/String; = "allow_group"

.field public static final 'FIELD_DEPTID' Ljava/lang/String; = "deptid"

.field public static final 'FIELD_DEPTNAME' Ljava/lang/String; = "deptname"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_MANAGERUID' Ljava/lang/String; = "manager_uid"

.field public static final 'FIELD_MANAGERUSERNAME' Ljava/lang/String; = "manager_username"

.field public static final 'FIELD_NODE_USERCOUNT' Ljava/lang/String; = "nodeusercount"

.field public static final 'FIELD_PARENTID' Ljava/lang/String; = "parentid"

.field public static final 'FIELD_SEQ' Ljava/lang/String; = "seq"

.field public static final 'FIELD_SHORTNAME' Ljava/lang/String; = "shortname"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_USERCOUNT' Ljava/lang/String; = "usercount"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_depart"

.field public static final 'TAG' Ljava/lang/String; = "friend"

.method static <clinit>()V
bipush 14
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "deptid"
aastore
dup
iconst_2
ldc "unitid"
aastore
dup
iconst_3
ldc "parentid"
aastore
dup
iconst_4
ldc "deptname"
aastore
dup
iconst_5
ldc "shortname"
aastore
dup
bipush 6
ldc "manager_uid"
aastore
dup
bipush 7
ldc "manager_username"
aastore
dup
bipush 8
ldc "seq"
aastore
dup
bipush 9
ldc "usercount"
aastore
dup
bipush 10
ldc "allow_group"
aastore
dup
bipush 11
ldc "gid"
aastore
dup
bipush 12
ldc "updatetime"
aastore
dup
bipush 13
ldc "nodeusercount"
aastore
putstatic com/nd/android/u/contact/db/table/OapDepartTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "friend"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapDepart
dup
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setDeptid(I)V
aload 1
aload 0
aload 0
ldc "deptname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setDeptname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "manager_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setManager_uid(I)V
aload 1
aload 0
aload 0
ldc "manager_username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setManager_username(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "parentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setParentid(I)V
aload 1
aload 0
aload 0
ldc "shortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setShortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUpdatetime(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "seq"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setSeq(I)V
aload 1
aload 0
aload 0
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUserCount(I)V
aload 1
aload 0
aload 0
ldc "nodeusercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setNodeUsercount(I)V
aload 1
aload 0
aload 0
ldc "allow_group"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setAllow_group(I)V
aload 1
aload 0
aload 0
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setGid(J)V
aload 1
aload 0
aload 0
ldc "nodeusercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setNodeUsercount(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
