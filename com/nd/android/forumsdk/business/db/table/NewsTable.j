.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/business/db/table/NewsTable
.super java/lang/Object

.field public static final 'CONTENT' Ljava/lang/String; = "content"

.field public static final 'CONT_TYPE' Ljava/lang/String; = "cont_type"

.field public static final 'COVER_IMG' Ljava/lang/String; = "cover_img"

.field private static final 'CREATE_NEWS_LIST_TABLE' Ljava/lang/String;

.field public static final 'EXTRA_ID' Ljava/lang/String; = "extra_id"

.field public static final 'FAVORITED' Ljava/lang/String; = "favorited"

.field public static final 'FILE_INFO' Ljava/lang/String; = "file_info"

.field public static final 'GLANCES' Ljava/lang/String; = "glances"

.field public static final 'HEAT' Ljava/lang/String; = "heat"

.field private static final 'NEWS_LIST_COLUMN' Ljava/lang/StringBuilder;

.field public static final 'NEWS_LIST_TABLE_NAME' Ljava/lang/String; = "forum_news_list"

.field public static final 'POST_ID' Ljava/lang/String; = "post_id"

.field public static final 'POST_TIME' Ljava/lang/String; = "post_time"

.field public static final 'POST_TYPE' Ljava/lang/String; = "post_type"

.field public static final 'PRAISED' Ljava/lang/String; = "praised"

.field public static final 'PRAISES' Ljava/lang/String; = "praises"

.field public static final 'RELATE_ID' Ljava/lang/String; = "relate_id"

.field public static final 'RELATE_TOPIC' Ljava/lang/String; = "relate_topic"

.field public static final 'REPLYS' Ljava/lang/String; = "replys"

.field public static final 'SOURCE' Ljava/lang/String; = "source"

.field public static final 'SUMMARY' Ljava/lang/String; = "summary"

.field public static final 'TEMPLATE' Ljava/lang/String; = "template"

.field public static final 'TITLE' Ljava/lang/String; = "title"

.field public static final 'USER_INFO' Ljava/lang/String; = "user_info"

.method static <clinit>()V
new java/lang/StringBuilder
dup
ldc "post_id"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " integer primary key not null,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "post_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "cont_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "template"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "title"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "source"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "summary"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "content"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "cover_img"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "extra_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "post_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relate_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "file_info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relate_topic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " varchar(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "heat"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " real(100),"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praises"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praised"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "replys"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "favorited"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "glances"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
putstatic com/nd/android/forumsdk/business/db/table/NewsTable/NEWS_LIST_COLUMN Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create table if not exists forum_news_list("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/forumsdk/business/db/table/NewsTable/NEWS_LIST_COLUMN Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/forumsdk/business/db/table/NewsTable/CREATE_NEWS_LIST_TABLE Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
getstatic com/nd/android/forumsdk/business/db/table/NewsTable/CREATE_NEWS_LIST_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
return
.limit locals 3
.limit stack 0
.end method
