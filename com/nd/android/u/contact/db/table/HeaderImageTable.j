.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/HeaderImageTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_header_INDEX1 ON uu_header(uid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_header (_id integer  , uid long primary key,url text, updatetime long, showupdatetime long )"

.field public static final 'FIELD_SHOWUPDATETIME' Ljava/lang/String; = "showupdatetime"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_URL' Ljava/lang/String; = "url"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_header"

.field public static final 'TAG' Ljava/lang/String; = "HeadImageTable"

.method static <clinit>()V
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "uid"
aastore
dup
iconst_2
ldc "url"
aastore
dup
iconst_3
ldc "updatetime"
aastore
dup
iconst_4
ldc "showupdatetime"
aastore
putstatic com/nd/android/u/contact/db/table/HeaderImageTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/HeaderImage;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/HeaderImage
dup
invokespecial com/nd/android/u/contact/dataStructure/HeaderImage/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setUid(J)V
aload 1
aload 0
aload 0
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setUrl(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setUpdatetime(J)V
aload 1
aload 0
aload 0
ldc "showupdatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setShowupdatetime(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
