.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/db/table/SquarePostsTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table if not exists sl_square_posts (insert_time BIGINT, tid BIGINT primary key, root_tid BIGINT, unit_id BIGINT, content TEXT, article TEXT, more_content INT, title TEXT, file_info TEXT, post_time BIGINT, from_string TEXT, user_uid BIGINT, user_nickname BIGINT, user_sysavatar INT, at_uids TEXT, floor INT, praises BIGINT, praised INT, replys BIGINT, scope_id BIGINT, scope_type INT, scope_name TEXT, scope_avatar TEXT, post_info TEXT, reply_info TEXT, heat FLOAT )"

.field public static final 'FIELD_ARTICLE' Ljava/lang/String; = "article"

.field public static final 'FIELD_AT_UIDS' Ljava/lang/String; = "at_uids"

.field public static final 'FIELD_CONTENT' Ljava/lang/String; = "content"

.field public static final 'FIELD_FILE_INFO' Ljava/lang/String; = "file_info"

.field public static final 'FIELD_FLOOR' Ljava/lang/String; = "floor"

.field public static final 'FIELD_FROM_STRING' Ljava/lang/String; = "from_string"

.field public static final 'FIELD_HEAT' Ljava/lang/String; = "heat"

.field public static final 'FIELD_INSERT_TIME' Ljava/lang/String; = "insert_time"

.field public static final 'FIELD_MORE_CONTENT' Ljava/lang/String; = "more_content"

.field public static final 'FIELD_POST_INFO' Ljava/lang/String; = "post_info"

.field public static final 'FIELD_POST_TIME' Ljava/lang/String; = "post_time"

.field public static final 'FIELD_PRAISED' Ljava/lang/String; = "praised"

.field public static final 'FIELD_PRAISES' Ljava/lang/String; = "praises"

.field public static final 'FIELD_REPLYS' Ljava/lang/String; = "replys"

.field public static final 'FIELD_REPLY_INFO' Ljava/lang/String; = "reply_info"

.field public static final 'FIELD_ROOT_TID' Ljava/lang/String; = "root_tid"

.field public static final 'FIELD_SCOPE_AVATAR' Ljava/lang/String; = "scope_avatar"

.field public static final 'FIELD_SCOPE_ID' Ljava/lang/String; = "scope_id"

.field public static final 'FIELD_SCOPE_NAME' Ljava/lang/String; = "scope_name"

.field public static final 'FIELD_SCOPE_TYPE' Ljava/lang/String; = "scope_type"

.field public static final 'FIELD_TID' Ljava/lang/String; = "tid"

.field public static final 'FIELD_TITLE' Ljava/lang/String; = "title"

.field public static final 'FIELD_UNIT_ID' Ljava/lang/String; = "unit_id"

.field public static final 'FIELD_USER_NICKNAME' Ljava/lang/String; = "user_nickname"

.field public static final 'FIELD_USER_SYSAVATAR' Ljava/lang/String; = "user_sysavatar"

.field public static final 'FIELD_USER_UID' Ljava/lang/String; = "user_uid"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "sl_square_posts"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
ldc "create table if not exists sl_square_posts (insert_time BIGINT, tid BIGINT primary key, root_tid BIGINT, unit_id BIGINT, content TEXT, article TEXT, more_content INT, title TEXT, file_info TEXT, post_time BIGINT, from_string TEXT, user_uid BIGINT, user_nickname BIGINT, user_sysavatar INT, at_uids TEXT, floor INT, praises BIGINT, praised INT, replys BIGINT, scope_id BIGINT, scope_type INT, scope_name TEXT, scope_avatar TEXT, post_info TEXT, reply_info TEXT, heat FLOAT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method
