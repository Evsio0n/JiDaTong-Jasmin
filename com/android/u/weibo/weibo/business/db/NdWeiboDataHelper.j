.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/db/NdWeiboDataHelper
.super android/database/sqlite/SQLiteOpenHelper

.field public static final 'AT_REPLY_TABLE' Ljava/lang/String; = "at_reply"

.field public static final 'AT_TOPIC_TABLE' Ljava/lang/String; = "at_topic"

.field private static final 'CREATE_AT_REPLY_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS at_reply(id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT,request_id INTEGER)"

.field private static final 'CREATE_AT_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS at_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,request_id INTEGER)"

.field private static final 'CREATE_FLOWERMSG_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS flower_msg (uid INTEGER, msg_text TEXT,msg_voice TEXT,msg_voice_local TEXT,msg_content_type INTEGER,msg_type INTEGER,msg_state INTEGER,primary key (uid,msg_type))"

.field private static final 'CREATE_FRIEND_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS friend_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"

.field private static final 'CREATE_IDOL_LIST_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS idol_list (uid INTEGER KEY NOT NULL,nickname TEXT,id INTEGER,is_following INTEGER,fans INTEGER ,idols INTEGER ,sina_uid INTEGER, primary key(uid))"

.field private static final 'CREATE_MY_PRAISED_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS my_praised_topic(id INTEGER PRIMARY KEY NOT NULL,praise_time INTEGER,user TEXT,topic_info TEXT)"

.field public static final 'CREATE_PRAISOR_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  tweet_id_index on praise_user(tid)"

.field private static final 'CREATE_PUBLIC_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS public_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"

.field public static final 'CREATE_REPLY_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  tid_index on reply(to_tid)"

.field private static final 'CREATE_REPLY_ME_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS reply_me(id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT)"

.field private static final 'CREATE_RE_TOPIC_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  root_tid_index on repost_topic(root_tid)"

.field private static final 'CREATE_RE_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS repost_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"

.field private static final 'CREATE_SINA_BIND_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sina_bind (access_token TEXT PRIMARY KEY NOT NULL,refresh_token TEXT,expires_time TEXT,nick_name TEXT,sina_uid TEXT)"

.field private static final 'CREATE_TAG_TOPIC_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  keyword_index on tag_topic(keyword)"

.field private static final 'CREATE_TAG_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tag_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,keyword TEXT)"

.field private static final 'CREATE_TIMESTAMP_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS time_stamp (table_name TEXT PRIMARY KEY NOT NULL,ts INTEGER)"

.field private static final 'CREATE_USER_LAST_LOCATION_TABLE' Ljava/lang/StringBuffer;

.field private static final 'CREATE_USER_LAST_WEATHER_TABLE' Ljava/lang/StringBuffer;

.field private static final 'CREATE_USER_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY NOT NULL, name TEXT, gender NUMERIC);"

.field private static final 'CREATE_USER_TOPIC_INCLUDE_NAME_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  uid_index on user_topic_include_name(uid)"

.field private static final 'CREATE_USER_TOPIC_INCLUDE_NAME_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_topic_include_name (tid INTEGER PRIMARY KEY NOT NULL,topic TEXT, replys TEXT, post_time INTEGER, uid INTEGER )"

.field public static final 'CREATE_USER_TOPIC_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS  uid_index on user_topic(uid)"

.field private static final 'CREATE_USER_TOPIC_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,uid INTEGER)"

.field public static final 'DATABASE_NAME_SUFFIX' Ljava/lang/String; = "ndweibo"

.field public static final 'FLOWER_MSG_TABLE' Ljava/lang/String; = "flower_msg"

.field public static final 'FRIEND_TOPIC_TABLE' Ljava/lang/String; = "friend_topic"

.field public static final 'IDOL_LIST_TABLE' Ljava/lang/String; = "idol_list"

.field public static final 'MY_PRAISED_TOPIC_TABLE' Ljava/lang/String; = "my_praised_topic"

.field public static final 'PRAISE_USER_TABLE' Ljava/lang/String; = "praise_user"

.field public static final 'PRE_CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS "

.field public static final 'PRE_CREATE_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field public static final 'PUBLIC_TOPIC_TABLE' Ljava/lang/String; = "public_topic"

.field public static final 'REPLY_COMMON' Ljava/lang/String; = "id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT"

.field public static final 'REPLY_ME_TABLE' Ljava/lang/String; = "reply_me"

.field public static final 'REPLY_TABLE' Ljava/lang/String; = "reply"

.field public static final 'RE_TOPIC_TABLE' Ljava/lang/String; = "repost_topic"

.field public static final 'SINA_BIND_TABLE' Ljava/lang/String; = "sina_bind"

.field public static final 'TAG_TOPIC_TABLE' Ljava/lang/String; = "tag_topic"

.field public static final 'TIMESTAMP_TABLE' Ljava/lang/String; = "time_stamp"

.field public static final 'TOPIC_COMMON' Ljava/lang/String; = "id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT"

.field public static final 'USER_LAST_LOCATION_TABLE' Ljava/lang/String; = "user_last_location"

.field public static final 'USER_LAST_WEATHER_TABLE' Ljava/lang/String; = "user_last_weather"

.field public static final 'USER_TABLE' Ljava/lang/String; = "user"

.field public static final 'USER_TOPIC_INCLUDE_NAME_TABLE' Ljava/lang/String; = "user_topic_include_name"

.field public static final 'USER_TOPIC_TABLE' Ljava/lang/String; = "user_topic"

.field private static final 'VERSION' I = 15


.field public final 'CREATE_PRAISE_USER_TABLE' Ljava/lang/StringBuilder;

.field public final 'CREATE_REPLY_TABLE' Ljava/lang/StringBuilder;

.method static <clinit>()V
new java/lang/StringBuffer
dup
ldc "CREATE TABLE IF NOT EXISTS "
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
ldc "user_last_location"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " ("
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "citycode"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " TEXT PRIMARY KEY NOT NULL,"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "longitude"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " TEXT,"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "latitude"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " TEXT"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ")"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_USER_LAST_LOCATION_TABLE Ljava/lang/StringBuffer;
new java/lang/StringBuffer
dup
ldc "CREATE TABLE IF NOT EXISTS "
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
ldc "user_last_weather"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " ("
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "citycode"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " TEXT PRIMARY KEY NOT NULL,"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "weather"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " TEXT"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ")"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_USER_LAST_WEATHER_TABLE Ljava/lang/StringBuffer;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;J)V
aload 0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "ndweibo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".db3"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
bipush 15
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_user"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER PRIMARY KEY NOT NULL,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "tid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
putfield com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_PRAISE_USER_TABLE Ljava/lang/StringBuilder;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
putfield com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_REPLY_TABLE Ljava/lang/StringBuilder;
return
.limit locals 4
.limit stack 5
.end method

.method private createTableInVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
ldc "CREATE TABLE IF NOT EXISTS public_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS friend_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS user_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,uid INTEGER)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  uid_index on user_topic(uid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS reply_me(id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY NOT NULL, name TEXT, gender NUMERIC);"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS tag_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,keyword TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  keyword_index on tag_topic(keyword)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS at_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT,request_id INTEGER)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_REPLY_TABLE Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  tid_index on reply(to_tid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_PRAISE_USER_TABLE Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  tweet_id_index on praise_user(tid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS repost_topic(id INTEGER PRIMARY KEY NOT NULL,unit_id INTEGER,weibo_tid INTEGER,forwards INTEGER,group_id INTEGER,root_tid INTEGER,praised NUMERIC,praises INTEGER,glances INTEGER,replys INTEGER,post_time INTEGER,category TEXT,content TEXT,article TEXT,from_string TEXT,geo TEXT,attach TEXT,image TEXT,root_topic TEXT,user TEXT,type TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  root_tid_index on repost_topic(root_tid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS my_praised_topic(id INTEGER PRIMARY KEY NOT NULL,praise_time INTEGER,user TEXT,topic_info TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS idol_list (uid INTEGER KEY NOT NULL,nickname TEXT,id INTEGER,is_following INTEGER,fans INTEGER ,idols INTEGER ,sina_uid INTEGER, primary key(uid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS sina_bind (access_token TEXT PRIMARY KEY NOT NULL,refresh_token TEXT,expires_time TEXT,nick_name TEXT,sina_uid TEXT)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS flower_msg (uid INTEGER, msg_text TEXT,msg_voice TEXT,msg_voice_local TEXT,msg_content_type INTEGER,msg_type INTEGER,msg_state INTEGER,primary key (uid,msg_type))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS at_reply(id INTEGER PRIMARY KEY NOT NULL,content TEXT,post_time INTEGER,from_string TEXT,uid INTEGER,to_rid INTEGER,to_tid INTEGER,user TEXT,to_reply TEXT,root_topic TEXT,request_id INTEGER)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS time_stamp (table_name TEXT PRIMARY KEY NOT NULL,ts INTEGER)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS user_topic_include_name (tid INTEGER PRIMARY KEY NOT NULL,topic TEXT, replys TEXT, post_time INTEGER, uid INTEGER )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX IF NOT EXISTS  uid_index on user_topic_include_name(uid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
return
L2:
astore 1
ldc "createDb"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method private createTableInVersion15(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_USER_LAST_LOCATION_TABLE Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/CREATE_USER_LAST_WEATHER_TABLE Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
return
L2:
astore 1
ldc "createDb"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method private dropTableBeforeVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
ldc "drop table if exists tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists user_tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists at_tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists reply_tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists praise_tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists comment;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists user;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists hashtags;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists likeme_tweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists praise_user_list;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists retweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists sina_bind;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists black_list;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists attention_list;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
return
L2:
astore 1
ldc "DropTableBefore14"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/createTableInVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/createTableInVersion15(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 2
L4:
ldc "onCreate"
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 2
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch all from L7 to L8 using L3
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iload 2
bipush 14
if_icmpge L1
L0:
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/dropTableBeforeVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/createTableInVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
L1:
iload 2
bipush 15
if_icmpge L5
L4:
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/createTableInVersion15(Landroid/database/sqlite/SQLiteDatabase;)V
L5:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 4
L7:
ldc "onUpgrade"
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 4
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 4
athrow
.limit locals 5
.limit stack 2
.end method
