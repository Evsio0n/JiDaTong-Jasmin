.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/NewFansTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_newfans (_id integer primary key autoincrement, fid  integer,time BIGINT not null)"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_TIME' Ljava/lang/String; = "time"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_newfans"

.field public static final 'TAG' Ljava/lang/String; = "NewFansTable"

.method static <clinit>()V
iconst_3
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
ldc "time"
aastore
putstatic com/nd/android/u/contact/db/table/NewFansTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/NewFans;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "NewFansTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/NewFans
dup
invokespecial com/nd/android/u/contact/dataStructure/NewFans/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setFid(J)V
aload 1
aload 0
aload 0
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setTime(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
