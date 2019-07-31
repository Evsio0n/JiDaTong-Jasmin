.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/QuickReplyTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_quickreply_INDEX1 ON uu_quickreply(uid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table if not exists uu_quickreply (_id integer primary key autoincrement, uid BIGINT, text TEXT, _index INT, uuid TEXT )"

.field public static final 'FIELD_ID' Ljava/lang/String; = "_id"

.field public static final 'FIELD_ORDER' Ljava/lang/String; = "_index"

.field public static final 'FIELD_TEXT' Ljava/lang/String; = "text"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'FIELD_UUID' Ljava/lang/String; = "uuid"

.field public static final 'TABLD_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_quickreply"

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
ldc "text"
aastore
dup
iconst_3
ldc "_index"
aastore
dup
iconst_4
ldc "uuid"
aastore
putstatic com/nd/android/u/business/db/table/QuickReplyTable/TABLD_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
