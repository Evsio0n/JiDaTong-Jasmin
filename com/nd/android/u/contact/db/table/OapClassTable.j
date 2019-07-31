.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/OapClassTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_class (_id integer, classid integer  ,classname text ,shortname text ,gradeid integer ,typeid integer ,unitid integer, gid integer ,gid1 integer ,usercount integer, manager1 integer, manager2 integer, updatetime integer ,updatetime2 integer , constraint pk_t3 primary key (classid))"

.field public static final 'FIELD_CLASSID' Ljava/lang/String; = "classid"

.field public static final 'FIELD_CLASSNAME' Ljava/lang/String; = "classname"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_GID1' Ljava/lang/String; = "gid1"

.field public static final 'FIELD_GRADEID' Ljava/lang/String; = "gradeid"

.field public static final 'FIELD_MANAGER1' Ljava/lang/String; = "manager1"

.field public static final 'FIELD_MANAGER2' Ljava/lang/String; = "manager2"

.field public static final 'FIELD_SHORTNAME' Ljava/lang/String; = "shortname"

.field public static final 'FIELD_TYPEID' Ljava/lang/String; = "typeid"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_UPDATETIME2' Ljava/lang/String; = "updatetime2"

.field public static final 'FIELD_USERCOUNT' Ljava/lang/String; = "usercount"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_class"

.method static <clinit>()V
bipush 14
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
ldc "classname"
aastore
dup
iconst_3
ldc "shortname"
aastore
dup
iconst_4
ldc "gradeid"
aastore
dup
iconst_5
ldc "typeid"
aastore
dup
bipush 6
ldc "unitid"
aastore
dup
bipush 7
ldc "gid"
aastore
dup
bipush 8
ldc "gid1"
aastore
dup
bipush 9
ldc "usercount"
aastore
dup
bipush 10
ldc "manager1"
aastore
dup
bipush 11
ldc "manager2"
aastore
dup
bipush 12
ldc "updatetime"
aastore
dup
bipush 13
ldc "updatetime2"
aastore
putstatic com/nd/android/u/contact/db/table/OapClassTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapClass
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClass/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "classid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setClassid(I)V
aload 1
aload 0
aload 0
ldc "classname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setClassname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "shortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setShortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "gradeid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setGradeid(I)V
aload 1
aload 0
aload 0
ldc "typeid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setTypeid(I)V
aload 1
aload 0
aload 0
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUnitid(I)V
aload 1
aload 0
aload 0
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setGid(I)V
aload 1
aload 0
aload 0
ldc "gid1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setGid1(I)V
aload 1
aload 0
aload 0
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUsercount(I)V
aload 1
aload 0
aload 0
ldc "manager1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setManager1(J)V
aload 1
aload 0
aload 0
ldc "manager2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setManager2(J)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUpdatetime(I)V
aload 1
aload 0
aload 0
ldc "updatetime2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUpdatetime2(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
