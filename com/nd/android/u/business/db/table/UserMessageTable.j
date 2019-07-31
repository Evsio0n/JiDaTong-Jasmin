.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/UserMessageTable
.super com/nd/android/u/business/db/table/BaseTable

.field private static final 'COLUMNS' [Ljava/lang/String;

.field public static final 'CREATE_INDEX' Ljava/lang/String;

.field public static final 'CREATE_TABLE' Ljava/lang/String;

.field private static final 'DEFINES' [Ljava/lang/String;

.field public static final 'FIELD10_UIDTO' Ljava/lang/String; = "uidto"

.field public static final 'FIELD11_LOCAL_MULTI_ID' Ljava/lang/String; = "local_mulptid"

.field public static final 'FIELD12_MULTI_ID' Ljava/lang/String; = "mulptid"

.field public static final 'FIELD13_FILENAME' Ljava/lang/String; = "filename"

.field public static final 'FIELD14_FILESIZE' Ljava/lang/String; = "filesize"

.field public static final 'FIELD15_FILEPATH' Ljava/lang/String; = "filepath"

.field public static final 'FIELD16_FKEY' Ljava/lang/String; = "fkey"

.field public static final 'FIELD17_WSEQ' Ljava/lang/String; = "wseq"

.field public static final 'FIELD18_RESERVE' Ljava/lang/String; = "reserve"

.field public static final 'FIELD19_URL' Ljava/lang/String; = "url"

.field public static final 'FIELD20_ERPID' Ljava/lang/String; = "businessid"

.field public static final 'FIELD21_VOICEID' Ljava/lang/String; = "voicejson"

.field public static final 'FIELD22_DURATION' Ljava/lang/String; = "duration"

.field public static final 'FIELD23_ACKTYPE' Ljava/lang/String; = "acktype"

.field public static final 'FIELD8_TYPE' Ljava/lang/String; = "type"

.field public static final 'FIELD9_EXTRAFLAG' Ljava/lang/String; = "extraflag"

.field private static final 'INDEX' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_chatrecord"

.method static <clinit>()V
bipush 25
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
ldc "type"
aastore
dup
bipush 8
ldc "extraflag"
aastore
dup
bipush 9
ldc "uidto"
aastore
dup
bipush 10
ldc "local_mulptid"
aastore
dup
bipush 11
ldc "mulptid"
aastore
dup
bipush 12
ldc "filename"
aastore
dup
bipush 13
ldc "filesize"
aastore
dup
bipush 14
ldc "filepath"
aastore
dup
bipush 15
ldc "fkey"
aastore
dup
bipush 16
ldc "wseq"
aastore
dup
bipush 17
ldc "reserve"
aastore
dup
bipush 18
ldc "url"
aastore
dup
bipush 19
ldc "businessid"
aastore
dup
bipush 20
ldc "isread"
aastore
dup
bipush 21
ldc "voicejson"
aastore
dup
bipush 22
ldc "duration"
aastore
dup
bipush 23
ldc "acktype"
aastore
dup
bipush 24
ldc "parent"
aastore
putstatic com/nd/android/u/business/db/table/UserMessageTable/COLUMNS [Ljava/lang/String;
bipush 25
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
ldc "INT"
aastore
dup
bipush 8
ldc "INT"
aastore
dup
bipush 9
ldc "BIGINT"
aastore
dup
bipush 10
ldc "BIGINT"
aastore
dup
bipush 11
ldc "BIGINT"
aastore
dup
bipush 12
ldc "TEXT"
aastore
dup
bipush 13
ldc "BIGINT"
aastore
dup
bipush 14
ldc "TEXT"
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
ldc "TEXT"
aastore
dup
bipush 18
ldc "TEXT"
aastore
dup
bipush 19
ldc "TEXT"
aastore
dup
bipush 20
ldc "INT"
aastore
dup
bipush 21
ldc "TEXT"
aastore
dup
bipush 22
ldc "INT"
aastore
dup
bipush 23
ldc "INT"
aastore
dup
bipush 24
ldc "INT"
aastore
putstatic com/nd/android/u/business/db/table/UserMessageTable/DEFINES [Ljava/lang/String;
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "msgid"
aastore
dup
iconst_1
ldc "generateid"
aastore
dup
iconst_2
ldc "createdate"
aastore
putstatic com/nd/android/u/business/db/table/UserMessageTable/INDEX [Ljava/lang/String;
ldc "uu_chatrecord"
getstatic com/nd/android/u/business/db/table/UserMessageTable/COLUMNS [Ljava/lang/String;
getstatic com/nd/android/u/business/db/table/UserMessageTable/DEFINES [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateTableString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/UserMessageTable/CREATE_TABLE Ljava/lang/String;
ldc "uu_chatrecord"
ldc "_INDEX"
getstatic com/nd/android/u/business/db/table/UserMessageTable/INDEX [Ljava/lang/String;
invokestatic com/nd/android/u/business/db/DbUtils/getCreateIndexString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/business/db/table/UserMessageTable/CREATE_INDEX Ljava/lang/String;
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
