.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/db/SinaWeiboDatabase
.super java/lang/Object

.field private static 'INSTANCE' Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;

.field private 'mDatabase' Landroid/database/sqlite/SQLiteDatabase;

.field private 'mDbHelper' Lcom/android/u/weibo/sina/business/db/SinaWeiboDbHelper;

.method public <init>(Landroid/content/Context;JLjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/android/u/weibo/sina/business/db/SinaWeiboDbHelper
dup
aload 1
lload 2
aload 4
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/<init>(Landroid/content/Context;JLjava/lang/String;)V
putfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDbHelper Lcom/android/u/weibo/sina/business/db/SinaWeiboDbHelper;
aload 0
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDbHelper Lcom/android/u/weibo/sina/business/db/SinaWeiboDbHelper;
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDbHelper Lcom/android/u/weibo/sina/business/db/SinaWeiboDbHelper;
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/createDb(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 5
.limit stack 7
.end method

.method private debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/INSTANCE Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getInstance(Landroid/content/Context;JLjava/lang/String;)Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/INSTANCE Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ifnonnull L0
new com/android/u/weibo/sina/business/db/SinaWeiboDatabase
dup
aload 0
lload 1
aload 3
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/<init>(Landroid/content/Context;JLjava/lang/String;)V
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/INSTANCE Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
L0:
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/INSTANCE Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
areturn
.limit locals 4
.limit stack 6
.end method

.method private getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 2
aload 1
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/data Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 2
astore 1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
L0:
new com/android/u/weibo/sina/business/parser/SinaReplyInfoParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method private getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/data Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
L0:
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L3:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method private insertReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Z
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L0
L3:
iconst_0
ireturn
L0:
new com/android/u/weibo/sina/business/parser/SinaReplyInfoParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 2
L1:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/id Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/data Ljava/lang/String;
aload 2
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData1 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData2 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData3 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData4 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData5 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
ldc "comment"
aconst_null
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lconst_0
lcmp
iflt L3
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method private insertTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;J)Z
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L3
iconst_0
ireturn
L3:
aconst_null
astore 5
L0:
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 6
L1:
aload 6
astore 5
L4:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
iconst_0
ireturn
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
L5:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 6
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/id Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
lload 3
lconst_0
lcmp
ifeq L6
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/uid Ljava/lang/String;
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L6:
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/data Ljava/lang/String;
aload 5
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData1 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData2 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData3 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData4 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData5 Ljava/lang/String;
ldc ""
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 2
aconst_null
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lconst_0
lcmp
ifge L7
iconst_0
ireturn
L7:
iconst_1
ireturn
.limit locals 7
.limit stack 4
.end method

.method public clear(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public clearCommentByTweetId(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from comment where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public clearFriendTweetlistByUid(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from tweet_following where uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public clearRetweetByTweetId(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from retweet where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public clearUserTweetlistByUid(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from tweet_user where uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public getLatestOrOldestTopicinfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "DESC LIMIT 1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
L3:
aload 1
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public getReplyInfoList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from comment where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/id Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 5
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnonnull L5
aconst_null
areturn
L5:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 6
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
istore 4
L1:
iload 4
ifle L6
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L6
L3:
aload 5
iload 3
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 6
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(Ljava/lang/Object;)Z
pop
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L6:
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
areturn
L2:
astore 6
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
.limit locals 7
.limit stack 3
.end method

.method public getRepostTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from retweet where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/id Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 5
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnonnull L5
aconst_null
areturn
L5:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 6
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
istore 4
L1:
iload 4
ifle L6
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L6
L3:
aload 5
iload 3
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 6
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L6:
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
areturn
L2:
astore 6
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
.limit locals 7
.limit stack 3
.end method

.method public getTopicInfo(JLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
aload 3
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
aload 3
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 4
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L3:
aload 3
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
.limit locals 5
.limit stack 3
.end method

.method public getTopicInfoList(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 1
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L5
aconst_null
areturn
L5:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 4
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
istore 3
L1:
iload 3
ifle L6
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L6
L3:
aload 1
iload 2
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 4
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L7
L6:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L2:
astore 4
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
.limit locals 5
.limit stack 3
.end method

.method public getUserTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from tweet_user where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/uid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 5
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
ifnonnull L5
aconst_null
areturn
L5:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 6
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
istore 4
L1:
iload 4
ifle L6
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L6
L3:
aload 5
iload 3
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 6
aload 0
aload 5
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L6:
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
areturn
L2:
astore 6
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
.limit locals 7
.limit stack 3
.end method

.method public insertReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 1
ifnull L7
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L8
L7:
iconst_m1
ireturn
L8:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iconst_0
istore 2
L0:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
istore 3
L1:
iload 2
iload 3
if_icmpge L5
L3:
aload 0
aload 1
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/insertReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Z
ifne L9
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L4:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iload 2
ireturn
L9:
iload 2
iconst_1
iadd
istore 2
goto L1
L5:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iconst_m1
ireturn
L2:
astore 1
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method public insertRepostTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
aload 0
aload 1
ldc "retweet"
lconst_0
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/insertTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;J)I
ireturn
.limit locals 2
.limit stack 5
.end method

.method public insertTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;J)I
aload 1
ifnonnull L0
iconst_m1
ireturn
L0:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iconst_0
istore 5
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 6
L1:
iload 5
iload 6
if_icmpge L2
aload 0
aload 1
iload 5
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
aload 2
lload 3
invokespecial com/android/u/weibo/sina/business/db/SinaWeiboDatabase/insertTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;J)Z
ifne L3
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iload 5
ireturn
L3:
iload 5
iconst_1
iadd
istore 5
goto L1
L2:
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
aload 0
getfield com/android/u/weibo/sina/business/db/SinaWeiboDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iconst_m1
ireturn
.limit locals 7
.limit stack 5
.end method
