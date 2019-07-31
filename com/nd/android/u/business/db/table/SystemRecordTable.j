.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/SystemRecordTable
.super com/nd/android/u/business/db/table/BaseTable

.field private static final 'COLUMNS' [Ljava/lang/String;

.field public static final 'CREATE_INDEX' Ljava/lang/String;

.field public static final 'CREATE_TABLE' Ljava/lang/String;

.field private static final 'DEFINES' [Ljava/lang/String;

.field public static final 'FIELD10_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD11_APPRO_RESULT' Ljava/lang/String; = "appro_result"

.field public static final 'FIELD12_APPRO_TYPE' Ljava/lang/String; = "appro_type"

.field public static final 'FIELD13_APPRO_STR' Ljava/lang/String; = "appro_str"

.field public static final 'FIELD15_ACKTYPE' Ljava/lang/String; = "acttype"

.field public static final 'FIELD16_RESERVE' Ljava/lang/String; = "reserve"

.field public static final 'FIELD17_TYPE' Ljava/lang/String; = "type"

.field public static final 'FIELD18_MULTI_ID' Ljava/lang/String; = "mulptid"

.field public static final 'FIELD8_UIDTO' Ljava/lang/String; = "uidto"

.field public static final 'FIELD9_GROUPTYPE' Ljava/lang/String; = "grouptype"

.field private static final 'INDEX' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_systemrecord"

.method static <clinit>()V
bipush 19
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
ldc "grouptype"
aastore
dup
bipush 9
ldc "gid"
aastore
dup
bipush 10
ldc "appro_result"
aastore
dup
bipush 11
ldc "appro_type"
aastore
dup
bipush 12
ldc "appro_str"
aastore
dup
bipush 13
ldc "isread"
aastore
dup
bipush 14
ldc "acttype"
aastore
dup
bipush 15
ldc "reserve"
aastore
dup
bipush 16
ldc "type"
aastore
dup
bipush 17
ldc "mulptid"
aastore
dup
bipush 18
ldc "parent"
aastore
putstatic com/nd/android/u/business/db/table/SystemRecordTable/COLUMNS [Ljava/lang/String;
bipush 19
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
ldc "TEXT"
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
ldc "INT"
aastore
dup
bipush 15
ldc "TEXT"
aastore
dup
bipush 16
ldc "INT"
aastore
dup
bipush 17
ldc "BIGINT"
aastore
dup
bipush 18
ldc "INT"
aastore
putstatic com/nd/android/u/business/db/table/SystemRecordTable/DEFINES [Ljava/lang/String;
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "msgid"
aastore
dup
iconst_1
ldc "createdate"
aastore
dup
iconst_2
ldc "gid"
aastore
putstatic com/nd/android/u/business/db/table/SystemRecordTable/INDEX [Ljava/lang/String;
ldc "uu_systemrecord"
getstatic com/nd/android/u/business/db/table/SystemRecordTable/COLUMNS [Ljava/lang/String;
getstatic com/nd/android/u/business/db/table/SystemRecordTable/DEFINES [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateTableString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/SystemRecordTable/CREATE_TABLE Ljava/lang/String;
ldc "uu_systemrecord"
ldc "_INDEX"
getstatic com/nd/android/u/business/db/table/SystemRecordTable/INDEX [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateIndexString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/SystemRecordTable/CREATE_INDEX Ljava/lang/String;
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
