.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapFriendGroupTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_friendgroup (_id integer, fgid integer not null ,name text , constraint pk_t3 primary key (fgid))"

.field public static final 'FIELD_FGID' Ljava/lang/String; = "fgid"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_friendgroup"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "fgid"
aastore
dup
iconst_2
ldc "name"
aastore
putstatic com/nd/android/u/contact/db/table/OapFriendGroupTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "UserInfo"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFgid(I)V
aload 1
aload 0
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
