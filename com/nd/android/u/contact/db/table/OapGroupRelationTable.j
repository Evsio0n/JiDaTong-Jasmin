.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapGroupRelationTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_grouprelation_INDEX1 ON uu_grouprelation(gid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_grouprelation (_id integer, fid integer not null ,gid integer not null ,updatetime integer ,nickname text ,grade integer ,sex integer , constraint pk_t3 primary key (fid,gid))"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_GRADE' Ljava/lang/String; = "grade"

.field public static final 'FIELD_NICKNAME' Ljava/lang/String; = "nickname"

.field public static final 'FIELD_SEX' Ljava/lang/String; = "sex"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_grouprelation"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
bipush 7
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "fid"
aastore
dup
iconst_2
ldc "gid"
aastore
dup
iconst_3
ldc "updatetime"
aastore
dup
iconst_4
ldc "nickname"
aastore
dup
iconst_5
ldc "grade"
aastore
dup
bipush 6
ldc "sex"
aastore
putstatic com/nd/android/u/contact/db/table/OapGroupRelationTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/OapGroupRelation;
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
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 1
aload 0
aload 0
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUpdatetime(J)V
aload 1
aload 0
aload 0
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setNickname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "grade"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
aload 1
aload 0
aload 0
ldc "sex"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setSex(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
