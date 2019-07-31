.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/VersionTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_version (_id integer primary key autoincrement, orgver integer,classver integer, userver integer )"

.field public static final 'FIELD_CLASSVER' Ljava/lang/String; = "classver"

.field public static final 'FIELD_ORGVER' Ljava/lang/String; = "orgver"

.field public static final 'FIELD_USERVER' Ljava/lang/String; = "userver"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_version"

.field public static final 'TAG' Ljava/lang/String; = "AlbumTable"

.method static <clinit>()V
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "orgver"
aastore
dup
iconst_2
ldc "classver"
aastore
dup
iconst_3
ldc "userver"
aastore
putstatic com/nd/android/u/contact/db/table/VersionTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "AlbumTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/VersionInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/VersionInfo/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "orgver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setOrgver(I)V
aload 1
aload 0
aload 0
ldc "classver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setClassver(I)V
aload 1
aload 0
aload 0
ldc "userver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setUserver(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
