.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/OapJMClassTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_jmclass (_id integer, classid integer  ,classname text ,shortname text ,gid integer ,usercount integer, manager1 integer, manager2 integer, orgver integer , classver integer,  constraint pk_t3 primary key (classid))"

.field public static final 'FIELD_CLASSID' Ljava/lang/String; = "classid"

.field public static final 'FIELD_CLASSNAME' Ljava/lang/String; = "classname"

.field public static final 'FIELD_CLASSVERSION' Ljava/lang/String; = "classver"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_MANAGER1' Ljava/lang/String; = "manager1"

.field public static final 'FIELD_MANAGER2' Ljava/lang/String; = "manager2"

.field public static final 'FIELD_ORGVERSION' Ljava/lang/String; = "orgver"

.field public static final 'FIELD_SHORTNAME' Ljava/lang/String; = "shortname"

.field public static final 'FIELD_USERCOUNT' Ljava/lang/String; = "usercount"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_jmclass"

.method static <clinit>()V
bipush 10
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
ldc "gid"
aastore
dup
iconst_5
ldc "usercount"
aastore
dup
bipush 6
ldc "manager1"
aastore
dup
bipush 7
ldc "manager2"
aastore
dup
bipush 8
ldc "orgver"
aastore
dup
bipush 9
ldc "classver"
aastore
putstatic com/nd/android/u/contact/db/table/OapJMClassTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapJMClass
dup
invokespecial com/nd/android/u/contact/dataStructure/OapJMClass/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "classid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setClassid(I)V
aload 1
aload 0
aload 0
ldc "classname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setClassname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "shortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setShortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setGid(I)V
aload 1
aload 0
aload 0
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setUsercount(I)V
aload 1
aload 0
aload 0
ldc "manager1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setManager1(J)V
aload 1
aload 0
aload 0
ldc "manager2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setManager2(J)V
aload 1
aload 0
aload 0
ldc "orgver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setOrgver(I)V
aload 1
aload 0
aload 0
ldc "classver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setClassver(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
