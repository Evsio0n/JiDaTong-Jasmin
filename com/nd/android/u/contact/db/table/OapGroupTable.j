.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapGroupTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_group (_id integer , gid integer not null ,groupname text, imageUrl text, introduction text, avatar integer, updatetime text, joinerm integer, type integer, catagory integer, spell1 text ,spell2 text ,creatorid integer, notice text ,falg integer,  constraint pk_t3 primary key (gid))"

.field public static final 'FIELD_AVATAR' Ljava/lang/String; = "avatar"

.field public static final 'FIELD_CATAGORY' Ljava/lang/String; = "catagory"

.field public static final 'FIELD_CREATORID' Ljava/lang/String; = "creatorid"

.field public static final 'FIELD_FLAG' Ljava/lang/String; = "falg"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_GROUPNAME' Ljava/lang/String; = "groupname"

.field public static final 'FIELD_IMAGEURL' Ljava/lang/String; = "imageUrl"

.field public static final 'FIELD_INTRODUCTION' Ljava/lang/String; = "introduction"

.field public static final 'FIELD_JOINPERM' Ljava/lang/String; = "joinerm"

.field public static final 'FIELD_NOTICE' Ljava/lang/String; = "notice"

.field public static final 'FIELD_SPELL1' Ljava/lang/String; = "spell1"

.field public static final 'FIELD_SPELL2' Ljava/lang/String; = "spell2"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_group"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
bipush 13
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "gid"
aastore
dup
iconst_2
ldc "groupname"
aastore
dup
iconst_3
ldc "imageUrl"
aastore
dup
iconst_4
ldc "introduction"
aastore
dup
iconst_5
ldc "avatar"
aastore
dup
bipush 6
ldc "updatetime"
aastore
dup
bipush 7
ldc "notice"
aastore
dup
bipush 8
ldc "joinerm"
aastore
dup
bipush 9
ldc "type"
aastore
dup
bipush 10
ldc "creatorid"
aastore
dup
bipush 11
ldc "falg"
aastore
dup
bipush 12
ldc "catagory"
aastore
putstatic com/nd/android/u/contact/db/table/OapGroupTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/OapGroup;
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
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 1
aload 0
aload 0
ldc "groupname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "imageUrl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setImageUrl(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "avatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setAvatar(I)V
aload 1
aload 0
aload 0
ldc "notice"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setNotice(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUpdatetime(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "introduction"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setIntroduction(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "creatorid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
aload 1
aload 0
aload 0
ldc "joinerm"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
aload 1
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 1
aload 0
aload 0
ldc "falg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 1
aload 0
aload 0
ldc "catagory"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
