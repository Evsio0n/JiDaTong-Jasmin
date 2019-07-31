.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapAppUpdateTimeTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_appupdatetime_INDEX1 ON uu_appupdatetime(code)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_appupdatetime (appid integer ,code text ,updatetime integer , constraint pk_t3 primary key (appid ,code ))"

.field public static final 'FIELD_APPID' Ljava/lang/String; = "appid"

.field public static final 'FIELD_CODE' Ljava/lang/String; = "code"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_appupdatetime"

.field public static final 'TAG' Ljava/lang/String; = "OapAppUpdateTimeTable"

.method static <clinit>()V
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "appid"
aastore
dup
iconst_1
ldc "code"
aastore
dup
iconst_2
ldc "updatetime"
aastore
putstatic com/nd/android/u/contact/db/table/OapAppUpdateTimeTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "OapAppUpdateTimeTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapAppUpdateTime
dup
invokespecial com/nd/android/u/contact/dataStructure/OapAppUpdateTime/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setAppid(I)V
aload 1
aload 0
aload 0
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setCode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setUpdatetime(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
