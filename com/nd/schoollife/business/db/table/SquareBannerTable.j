.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/db/table/SquareBannerTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table if not exists sl_square_banner (insert_time BIGINT ,avatar TEXT ,type TEXT, scope_id BIGINT, name TEXT )"

.field public static final 'FIELD_AVATAR' Ljava/lang/String; = "avatar"

.field public static final 'FIELD_INSERT_TIME' Ljava/lang/String; = "insert_time"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'FIELD_SCOPE_ID' Ljava/lang/String; = "scope_id"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "sl_square_banner"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
ldc "create table if not exists sl_square_banner (insert_time BIGINT ,avatar TEXT ,type TEXT, scope_id BIGINT, name TEXT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method
