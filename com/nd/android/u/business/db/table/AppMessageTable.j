.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/AppMessageTable
.super com/nd/android/u/business/db/table/BaseTable

.field private static final 'COLUMNS' [Ljava/lang/String;

.field public static final 'CREATE_INDEX' Ljava/lang/String;

.field public static final 'CREATE_TABLE' Ljava/lang/String;

.field private static final 'DEFINES' [Ljava/lang/String;

.field public static final 'DROP_INDEX' Ljava/lang/String; = "DROP INDEX uu_apprecord_INDEX"

.field public static final 'FIELD10_CODE' Ljava/lang/String; = "code"

.field public static final 'FIELD11_BUSINESS_ID' Ljava/lang/String; = "business_id"

.field public static final 'FIELD12_RESERVE' Ljava/lang/String; = "reserve"

.field public static final 'FIELD13_ACKTYPE' Ljava/lang/String; = "acttype"

.field public static final 'FIELD14_APPTYPE' Ljava/lang/String; = "apptype"

.field public static final 'FIELD15_APPMSGTYPE' Ljava/lang/String; = "appmsgtype"

.field public static final 'FIELD16_MULTIID' Ljava/lang/String; = "mulptid"

.field public static final 'FIELD17_BUSINESSID_NEW' Ljava/lang/String; = "businessid"

.field public static final 'FIELD18_GROUPTYPE' Ljava/lang/String; = "grouptype"

.field public static final 'FIELD19_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD20_CONTENTTYPE' Ljava/lang/String; = "content_type"

.field public static final 'FIELD8_UIDTO' Ljava/lang/String; = "uidto"

.field public static final 'FIELD9_APPID' Ljava/lang/String; = "appid"

.field private static final 'INDEX' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_apprecord"

.method static <clinit>()V
bipush 22
anewarray java/lang/String
dup
iconst_0
ldc "generateid"
aastore
dup
iconst_1
ldc "createdate"
aastore
dup
iconst_2
ldc "uidfrom"
aastore
dup
iconst_3
ldc "isack"
aastore
dup
iconst_4
ldc "msgid"
aastore
dup
iconst_5
ldc "category"
aastore
dup
bipush 6
ldc "message"
aastore
dup
bipush 7
ldc "uidto"
aastore
dup
bipush 8
ldc "appid"
aastore
dup
bipush 9
ldc "code"
aastore
dup
bipush 10
ldc "business_id"
aastore
dup
bipush 11
ldc "businessid"
aastore
dup
bipush 12
ldc "reserve"
aastore
dup
bipush 13
ldc "acttype"
aastore
dup
bipush 14
ldc "apptype"
aastore
dup
bipush 15
ldc "appmsgtype"
aastore
dup
bipush 16
ldc "mulptid"
aastore
dup
bipush 17
ldc "isread"
aastore
dup
bipush 18
ldc "gid"
aastore
dup
bipush 19
ldc "grouptype"
aastore
dup
bipush 20
ldc "content_type"
aastore
dup
bipush 21
ldc "parent"
aastore
putstatic com/nd/android/u/business/db/table/AppMessageTable/COLUMNS [Ljava/lang/String;
bipush 22
anewarray java/lang/String
dup
iconst_0
ldc "TEXT PRIMARY KEY NOT NULL"
aastore
dup
iconst_1
ldc "BIGINT"
aastore
dup
iconst_2
ldc "BIGINT"
aastore
dup
iconst_3
ldc "INT"
aastore
dup
iconst_4
ldc "BIGINT"
aastore
dup
iconst_5
ldc "INT"
aastore
dup
bipush 6
ldc "TEXT"
aastore
dup
bipush 7
ldc "BIGINT"
aastore
dup
bipush 8
ldc "INT"
aastore
dup
bipush 9
ldc "TEXT"
aastore
dup
bipush 10
ldc "INT"
aastore
dup
bipush 11
ldc "INT"
aastore
dup
bipush 12
ldc "TEXT"
aastore
dup
bipush 13
ldc "INT"
aastore
dup
bipush 14
ldc "TEXT"
aastore
dup
bipush 15
ldc "INT"
aastore
dup
bipush 16
ldc "BIGINT"
aastore
dup
bipush 17
ldc "INT"
aastore
dup
bipush 18
ldc "TEXT"
aastore
dup
bipush 19
ldc "INT"
aastore
dup
bipush 20
ldc "INT"
aastore
dup
bipush 21
ldc "INT"
aastore
putstatic com/nd/android/u/business/db/table/AppMessageTable/DEFINES [Ljava/lang/String;
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
ldc "businessid"
aastore
putstatic com/nd/android/u/business/db/table/AppMessageTable/INDEX [Ljava/lang/String;
ldc "uu_apprecord"
getstatic com/nd/android/u/business/db/table/AppMessageTable/COLUMNS [Ljava/lang/String;
getstatic com/nd/android/u/business/db/table/AppMessageTable/DEFINES [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateTableString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/AppMessageTable/CREATE_TABLE Ljava/lang/String;
ldc "uu_apprecord"
ldc "_INDEX"
getstatic com/nd/android/u/business/db/table/AppMessageTable/INDEX [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateIndexString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/AppMessageTable/CREATE_INDEX Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/table/BaseTable/<init>()V
return
.limit locals 1
.limit stack 1
.end method
