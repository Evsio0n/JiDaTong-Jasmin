.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/db/NdWeiboDatabase
.super java/lang/Object

.field private static '_instance' Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;

.field private static 'preUid' J

.field private 'mDb' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
lconst_0
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
lconst_0
lcmp
ifne L0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
L0:
aload 0
new com/android/u/weibo/weibo/business/db/NdWeiboDataHelper
dup
aload 1
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/<init>(Landroid/content/Context;J)V
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDataHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 2
.limit stack 6
.end method

.method private clearAtReplyInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_reply"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearAtTopicInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearFriendTopicInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "friend_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearPraises()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "my_praised_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearPraisors()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "praise_user"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearPublicTopicInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "public_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearReTopicInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "repost_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearReplyInfos(J)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "to_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method

.method private clearReplyMe()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply_me"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearTableByTableName(Ljava/lang/String;J)V
aload 1
ldc "public_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearPublicTopicInfos()V
L1:
return
L0:
aload 1
ldc "user_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
lload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearUserTopicInfoListById(J)V
return
L2:
aload 1
ldc "at_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearAtTopicInfos()V
return
L3:
aload 1
ldc "friend_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearFriendTopicInfos()V
return
L4:
aload 1
ldc "repost_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearReTopicInfos()V
return
L5:
aload 1
ldc "at_reply"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearAtReplyInfos()V
return
L6:
aload 1
ldc "reply"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
lload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearReplyInfos(J)V
return
L7:
aload 1
ldc "reply_me"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearReplyMe()V
return
L8:
aload 1
ldc "praise_user"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearPraisors()V
return
L9:
aload 1
ldc "my_praised_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearPraises()V
return
L10:
aload 1
ldc "tag_topic"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearTagTopicInfos()V
return
.limit locals 4
.limit stack 3
.end method

.method private clearTagTopicInfos()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "tag_topic"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private clearUserTopicInfoListById(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_topic"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method private filterIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)Lcom/product/android/commonInterface/weibo/IdolList;
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
astore 6
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
astore 7
iconst_1
istore 4
iconst_0
istore 2
aload 6
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
istore 5
L2:
iload 4
istore 3
iload 2
iload 5
if_icmpge L3
aload 6
iload 2
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
astore 8
aload 7
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 8
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lcmp
ifne L4
aload 7
getfield com/product/android/commonInterface/weibo/Idol/ts J
aload 8
getfield com/product/android/commonInterface/weibo/Idol/ts J
lcmp
ifle L4
iload 4
istore 3
L3:
iload 3
ifeq L0
iload 2
aload 6
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
if_icmpge L5
aload 6
iload 2
invokevirtual com/product/android/commonInterface/weibo/IdolList/remove(I)Ljava/lang/Object;
pop
L5:
aload 6
iload 2
aload 7
invokevirtual com/product/android/commonInterface/weibo/IdolList/add(ILjava/lang/Object;)V
goto L0
L4:
aload 7
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 8
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lcmp
ifne L6
aload 7
getfield com/product/android/commonInterface/weibo/Idol/ts J
aload 8
getfield com/product/android/commonInterface/weibo/Idol/ts J
lcmp
ifgt L6
iconst_0
istore 3
goto L3
L6:
iload 2
iconst_1
iadd
istore 2
goto L2
L1:
aload 6
areturn
.limit locals 9
.limit stack 4
.end method

.method private getCitycodeFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
aload 1
aload 1
ldc "citycode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private getFlowerMsgFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setUid(J)V
aload 2
aload 1
aload 1
ldc "msg_text"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgText(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "msg_voice"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoice(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "msg_voice_local"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoiceLocal(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "msg_content_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setContentType(I)V
aload 2
aload 1
aload 1
ldc "msg_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setType(I)V
aload 2
aload 1
aload 1
ldc "msg_state"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setState(I)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
ldc com/android/u/weibo/weibo/business/db/NdWeiboDatabase
monitorenter
L0:
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lstore 1
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
lload 1
lcmp
ifeq L5
lload 1
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/preUid J
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
ifnull L1
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/closeDB()V
L1:
new com/android/u/weibo/weibo/business/db/NdWeiboDatabase
dup
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
L3:
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
astore 0
L4:
ldc com/android/u/weibo/weibo/business/db/NdWeiboDatabase
monitorexit
aload 0
areturn
L5:
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
ifnull L6
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L6
getstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifne L3
L6:
new com/android/u/weibo/weibo/business/db/NdWeiboDatabase
dup
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/_instance Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
L7:
goto L3
L2:
astore 0
ldc com/android/u/weibo/weibo/business/db/NdWeiboDatabase
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 4
.end method

.method private getLastOrOldestTopicInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "post_time "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LIMIT 1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 2
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L3
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
.limit stack 8
.end method

.method private getPraiseFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/Praise;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new com/android/u/weibo/weibo/business/bean/Praise
dup
invokespecial com/android/u/weibo/weibo/business/bean/Praise/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/Praise/id J
aload 2
aload 1
aload 1
ldc "praise_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/Praise/praise_time J
aload 1
aload 1
ldc "user"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 5
aload 1
aload 1
ldc "topic_info"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
L0:
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 4
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L1:
aconst_null
astore 1
L3:
aload 2
aload 4
aload 1
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 2
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
L4:
aload 2
areturn
L5:
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L6:
goto L3
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L7:
aload 2
areturn
.limit locals 6
.limit stack 5
.end method

.method public static getPraisorFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/Praisor;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new com/android/u/weibo/weibo/business/bean/Praisor
dup
invokespecial com/android/u/weibo/weibo/business/bean/Praisor/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "tid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
aload 1
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/Praisor/id J
aload 1
aload 0
aload 0
ldc "praise_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
aload 0
aload 0
ldc "user"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 0
L0:
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L1:
aconst_null
astore 0
L3:
aload 1
aload 2
aload 0
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
L4:
aload 1
areturn
L5:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L6:
goto L3
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
new com/android/u/weibo/weibo/business/bean/ReplyInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfo/<init>()V
astore 2
aload 2
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
aload 2
aload 0
aload 0
ldc "content"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "post_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
aload 2
aload 0
aload 0
ldc "from_string"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
aload 2
aload 0
aload 0
ldc "to_rid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
aload 2
aload 0
aload 0
ldc "to_tid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
aload 0
ldc "request_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 2
aload 0
iload 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/request_id J
L0:
aload 0
aload 0
ldc "user"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 6
aload 0
aload 0
ldc "root_topic"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 0
aload 0
ldc "to_reply"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 5
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
L1:
aconst_null
astore 0
L3:
aload 2
aload 5
aload 0
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 2
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
L4:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 2
new com/android/u/weibo/weibo/business/parser/ToReplyParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ToReplyParser/<init>()V
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ToReply;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
L5:
aload 2
areturn
L6:
new org/json/JSONObject
dup
aload 6
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L7:
goto L3
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L8:
aload 2
areturn
.limit locals 7
.limit stack 5
.end method

.method private getTopicInfoById(JLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 3
aconst_null
aload 4
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L3
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
.limit stack 8
.end method

.method public static getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
new com/android/u/weibo/weibo/business/bean/TopicInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfo/<init>()V
astore 2
aload 2
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 2
aload 0
aload 0
ldc "unit_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/unit_id J
aload 2
aload 0
aload 0
ldc "group_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/group_id J
aload 2
aload 0
aload 0
ldc "weibo_tid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/weibo_tid J
aload 2
aload 0
aload 0
ldc "root_tid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_tid J
aload 2
aload 0
aload 0
ldc "replys"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 2
aload 0
aload 0
ldc "glances"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
aload 2
aload 0
aload 0
ldc "praised"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfo/setPraised(I)V
aload 2
aload 0
aload 0
ldc "praises"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 2
aload 0
aload 0
ldc "forwards"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 2
aload 0
aload 0
ldc "content"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "category"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "from_string"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "article"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "post_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 0
aload 0
ldc "user"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 7
aload 0
aload 0
ldc "attach"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 0
aload 0
ldc "image"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 0
ldc "request_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
iload 1
iconst_m1
if_icmpeq L9
aload 2
aload 0
iload 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
L9:
aload 0
aload 0
ldc "root_topic"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 5
L0:
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 6
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
L1:
aconst_null
astore 0
L3:
aload 2
aload 6
aload 0
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 2
new com/android/u/weibo/weibo/business/parser/AttachListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AttachListParser/<init>()V
new org/json/JSONArray
dup
aload 3
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/AttachListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/AttachList;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
L4:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 2
new com/android/u/weibo/weibo/business/parser/WbImageListparser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageListparser/<init>()V
new org/json/JSONArray
dup
aload 4
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbImageList;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
L5:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 2
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
L6:
aload 2
areturn
L7:
new org/json/JSONObject
dup
aload 7
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L8:
goto L3
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L10:
aload 2
areturn
.limit locals 8
.limit stack 5
.end method

.method private getUserFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 2
aload 1
aload 1
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private getWeatherJsonFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
aload 1
aload 1
ldc "weather"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private setReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Ljava/lang/String;)V
aload 1
ifnonnull L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 1
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setValuesByReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Landroid/content/ContentValues;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 2
aconst_null
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setUser(Lcom/product/android/commonInterface/weibo/WbUserInfo;)V
return
.limit locals 4
.limit stack 4
.end method

.method private setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;JLjava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
aload 4
lload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearTableByTableName(Ljava/lang/String;J)V
L1:
aload 1
ifnull L6
L3:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifeq L6
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
aload 4
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Ljava/lang/String;)V
L5:
goto L4
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L6:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L7:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
.limit locals 5
.limit stack 4
.end method

.method private setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 4
ifnonnull L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 6
aload 6
aload 4
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setValuesByTopicInfo(Landroid/content/ContentValues;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
lload 2
lconst_0
lcmp
ifeq L1
aload 6
ifnull L1
aload 6
ldc "uid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L1:
aload 1
ifnull L2
aload 6
ifnull L2
aload 6
ldc "keyword"
aload 1
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 5
aconst_null
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
aload 0
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setUser(Lcom/product/android/commonInterface/weibo/WbUserInfo;)V
return
.limit locals 7
.limit stack 4
.end method

.method private setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
aload 5
lload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearTableByTableName(Ljava/lang/String;J)V
L1:
aload 4
ifnonnull L6
iconst_0
istore 6
L10:
iload 6
ifeq L8
L3:
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/iterator()Ljava/util/Iterator;
astore 4
L4:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 0
aload 1
lload 2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
aload 5
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
L5:
goto L4
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L6:
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 6
L7:
goto L10
L8:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L9:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
.limit locals 7
.limit stack 6
.end method

.method public static setValuesByReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Landroid/content/ContentValues;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
ldc "ContentValues Null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 1
invokevirtual android/content/ContentValues/clear()V
aload 1
ldc "id"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "content"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "post_time"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "from_string"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "to_rid"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "to_tid"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/request_id J
lconst_0
lcmp
ifeq L0
aload 1
ldc "request_id"
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/request_id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L0:
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
ifnull L1
aload 1
ldc "to_reply"
new com/android/u/weibo/weibo/business/parser/ToReplyParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ToReplyParser/<init>()V
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ToReply;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L3
aload 1
ldc "root_topic"
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/RootTopic;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L3:
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L4
aload 1
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L4:
return
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method

.method public static setValuesByTopicInfo(Landroid/content/ContentValues;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
astore 2
aload 0
ifnonnull L5
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
L5:
aload 2
invokevirtual android/content/ContentValues/clear()V
aload 2
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "weibo_tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/weibo_tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "content"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "article"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "category"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "type"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "forwards"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "from_string"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "post_time"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "glances"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "praised"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Boolean;)V
aload 2
ldc "praises"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "replys"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "root_tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
lconst_0
lcmp
ifeq L6
aload 2
ldc "request_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L6:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
astore 0
L0:
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
ifnull L1
aload 2
ldc "attach"
new com/android/u/weibo/weibo/business/parser/AttachListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AttachListParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
invokevirtual com/android/u/weibo/weibo/business/parser/AttachListParser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L3
aload 2
ldc "image"
new com/android/u/weibo/weibo/business/parser/WbImageListparser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageListparser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L3:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L4
aload 2
ldc "root_topic"
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/RootTopic;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L4:
return
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method

.method private updateLikeInfo(Landroid/content/ContentValues;JZLjava/lang/String;)V
aload 0
lload 2
aload 5
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoById(JLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 8
aload 8
ifnull L0
aload 8
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 6
iload 4
ifeq L1
iload 6
iconst_1
iadd
istore 6
L2:
iload 6
istore 7
iload 6
ifge L3
iconst_0
istore 7
L3:
aload 1
ldc "praises"
iload 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 5
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L0:
return
L1:
iload 6
iconst_1
isub
istore 6
goto L2
.limit locals 9
.limit stack 6
.end method

.method private updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoById(JLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L0
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setValuesByTopicInfo(Landroid/content/ContentValues;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 2
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L0:
return
.limit locals 4
.limit stack 6
.end method

.method public checkUidIsInAttention(J)Z
.catch all from L0 to L1 using L2
iconst_0
istore 4
iconst_0
istore 5
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
aload 6
ifnull L3
L0:
aload 6
invokeinterface android/database/Cursor/getCount()I 0
istore 3
L1:
iload 5
istore 4
iload 3
ifle L4
iconst_1
istore 4
L4:
aload 6
invokeinterface android/database/Cursor/close()V 0
L3:
iload 4
ireturn
L2:
astore 7
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 7
athrow
.limit locals 8
.limit stack 8
.end method

.method public closeDB()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public delFlowerMessageInfo(JI)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "flower_msg"
aload 4
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public delIdol(J)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method

.method public delIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch java/lang/Exception from L5 to L6 using L2
.catch all from L5 to L6 using L3
aload 1
ifnull L7
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ifne L8
L7:
return
L8:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delIdol(J)V
L4:
goto L1
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L5:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public deleteReplyByRid(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply_me"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public deleteReplysByTid(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "to_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply_me"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public deleteSinaToken(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "sina_bind"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "access_token = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "sina_uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public deleteTopicInfo(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "public_topic"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_topic"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "friend_topic"
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public deleteWeather()V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_weather"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public getAtReplyInfoList()Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch all from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_reply"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20 "
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 2
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getAtTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20 "
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 2
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getAttentionUserList(ZII)Lcom/product/android/commonInterface/weibo/IdolList;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aconst_null
astore 4
iload 2
ifeq L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L4:
ldc "id desc "
astore 5
iload 1
ifeq L5
ldc "random()"
astore 5
L5:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 5
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
astore 5
aload 4
ifnull L6
L0:
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L7
aload 5
aload 0
aload 4
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getIdolFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/Idol;
invokevirtual com/product/android/commonInterface/weibo/IdolList/add(Ljava/lang/Object;)Z
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
L3:
goto L1
L2:
astore 5
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 5
athrow
L7:
aload 4
invokeinterface android/database/Cursor/close()V 0
L6:
aload 5
areturn
.limit locals 6
.limit stack 9
.end method

.method public getAttentionUserListMaxID()I
.catch all from L0 to L1 using L2
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "max(id)"
aastore
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnull L3
L0:
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 2
invokeinterface android/database/Cursor/close()V 0
L3:
iload 1
ireturn
L2:
astore 3
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 3
athrow
.limit locals 4
.limit stack 8
.end method

.method public getAttentionUserListMinID()I
.catch all from L0 to L1 using L2
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "min(id)"
aastore
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnull L3
L0:
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 2
invokeinterface android/database/Cursor/close()V 0
L3:
iload 1
ireturn
L2:
astore 3
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 3
athrow
.limit locals 4
.limit stack 8
.end method

.method public getCityCode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.catch all from L0 to L1 using L2
aconst_null
astore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
iload 3
ifne L3
aload 5
ldc "longitude"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "='"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "' and "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "latitude"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "='"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "'"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_location"
aconst_null
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 4
astore 1
aload 2
ifnull L4
L0:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L5
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getCitycodeFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
astore 1
L1:
aload 2
invokeinterface android/database/Cursor/close()V 0
L4:
aload 1
areturn
L5:
aload 2
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 1
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 6
.limit stack 8
.end method

.method public getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "flower_msg"
aconst_null
aload 4
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
L0:
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMsgFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 5
L1:
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 5
areturn
L2:
astore 5
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 5
athrow
L3:
aload 4
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
.limit locals 6
.limit stack 8
.end method

.method public getFriendsTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "friend_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getIdolFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/Idol;
new com/product/android/commonInterface/weibo/Idol
dup
invokespecial com/product/android/commonInterface/weibo/Idol/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "is_following"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
aload 2
aload 1
aload 1
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
putfield com/product/android/commonInterface/weibo/Idol/id J
aload 2
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
putfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 1
aload 1
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 1
aload 1
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "fans"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/weibo/Idol/fans I
aload 2
aload 1
aload 1
ldc "idols"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/weibo/Idol/idols I
aload 2
aload 1
aload 1
ldc "sina_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/weibo/Idol/sinaUid J
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public getLastOrOldestAtReplyInfo(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.catch all from L0 to L1 using L2
aconst_null
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "post_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " limit 1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_reply"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 2
astore 1
aload 3
ifnull L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 1
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 1
areturn
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 4
.limit stack 8
.end method

.method public getLastOrOldestAtTopicInfo(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
aconst_null
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "post_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " limit 1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "at_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 2
astore 1
aload 3
ifnull L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 1
areturn
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 4
.limit stack 8
.end method

.method public getLastOrOldestPraise(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/Praise;
.catch all from L0 to L1 using L2
aconst_null
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "praise_time "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "my_praised_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 1
ldc " 1 "
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 2
astore 1
aload 3
ifnull L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 0
aload 3
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getPraiseFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/Praise;
astore 1
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 1
areturn
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L2:
astore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 4
.limit stack 9
.end method

.method public getLastOrOldestReplyMe(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "post_time "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " limit 1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply_me"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
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
.limit stack 8
.end method

.method public getLastTopicId(Ljava/lang/String;)J
aload 0
ldc "DESC"
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getLastOrOldestTopicInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
aload 1
ifnonnull L0
lconst_0
lreturn
L0:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lreturn
.limit locals 2
.limit stack 3
.end method

.method public getOldestReTopicInfo(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "root_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "repost_topic"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "post_time ASC LIMIT 1"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L3
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
.limit stack 8
.end method

.method public getOldestReplyInfo(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "to_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "post_time ASC LIMIT 1"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L3
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
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
.limit stack 8
.end method

.method public getOldestUserTopicInfo(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_topic"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "post_time ASC limit 1"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
.limit stack 8
.end method

.method public getPraiseList()Lcom/android/u/weibo/weibo/business/bean/PraiseList;
.catch all from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "my_praised_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "praise_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
new com/android/u/weibo/weibo/business/bean/PraiseList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraiseList/<init>()V
astore 2
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getPraiseFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/Praise;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getPraisorList(J)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "praise_user"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "praise_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/PraisorList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraisorList/<init>()V
astore 4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 4
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getPraisorFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/Praisor;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 5
.limit stack 8
.end method

.method public getPublicTopicInfoById(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
lload 1
ldc "public_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoById(JLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getPublicTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "public_topic"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getReTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "root_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "repost_topic"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 4
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 5
.limit stack 8
.end method

.method public getReplyInfoList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "to_tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 4
aload 3
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 5
.limit stack 8
.end method

.method public getReplyMeList()Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch all from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "reply_me"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "post_time DESC LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 2
aload 1
ifnull L4
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L5
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L5:
aload 1
invokeinterface android/database/Cursor/close()V 0
L4:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getSinaBind()Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
aconst_null
astore 1
aconst_null
astore 2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "sina_bind"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L5
aload 2
astore 1
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L3
new com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx
dup
invokespecial com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/<init>()V
astore 1
L1:
aload 1
aload 3
aload 3
ldc "refresh_token"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setRefreshToken(Ljava/lang/String;)V
aload 1
aload 3
aload 3
ldc "access_token"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setToken(Ljava/lang/String;)V
aload 1
aload 3
aload 3
ldc "sina_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setSinaUid(Ljava/lang/String;)V
aload 1
aload 3
aload 3
ldc "expires_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setExpiresTime(J)V
aload 1
aload 3
aload 3
ldc "nick_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setNickName(Ljava/lang/String;)V
L3:
aload 3
invokeinterface android/database/Cursor/close()V 0
L5:
aload 1
areturn
L2:
astore 1
L6:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
L4:
astore 1
goto L6
.limit locals 4
.limit stack 9
.end method

.method public getTSFromTimeStampTable(Ljava/lang/String;)J
.catch all from L0 to L1 using L2
lconst_0
lstore 4
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
lconst_0
lreturn
L3:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "time_stamp"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "table_name='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
lload 4
lstore 2
aload 1
ifnull L4
lload 4
lstore 2
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
L0:
aload 1
aload 1
ldc "ts"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L4:
lload 2
lreturn
L2:
astore 6
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
.limit locals 7
.limit stack 8
.end method

.method public getTagTopicInfoList(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch all from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "tag_topic"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "keyword='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
ldc "id desc LIMIT 20"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L3
aconst_null
areturn
L3:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 2
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTopicInfoFromCursor(Landroid/database/Cursor;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public getUserInfoByUid(J)Lcom/product/android/commonInterface/weibo/WbUserInfo;
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 0
aload 3
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getUserFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
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
.limit stack 8
.end method

.method public getWeatherJsonByCitycode(Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
L4:
aconst_null
areturn
L3:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
ldc "citycode"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "='"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "'"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_weather"
aconst_null
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L4
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L5
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getWeatherJsonFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
astore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
L5:
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
.limit stack 8
.end method

.method public incrUpdateIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)J
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/filterIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
lconst_0
lstore 4
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
lload 4
lstore 2
L0:
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/iterator()Ljava/util/Iterator;
astore 1
L1:
lload 4
lstore 2
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L20
L5:
lload 4
lstore 2
L6:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
astore 8
L7:
lload 4
lstore 6
lload 4
lstore 2
L8:
aload 8
getfield com/product/android/commonInterface/weibo/Idol/ts J
lload 4
lcmp
ifle L11
L9:
lload 4
lstore 2
L10:
aload 8
getfield com/product/android/commonInterface/weibo/Idol/ts J
lstore 6
L11:
lload 6
lstore 2
L12:
aload 8
getfield com/product/android/commonInterface/weibo/Idol/change_type I
iconst_1
if_icmpne L21
L13:
lload 6
lstore 2
L14:
aload 0
aload 8
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setIdolInfo(Lcom/product/android/commonInterface/weibo/Idol;)V
L15:
lload 6
lstore 4
goto L1
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lload 2
lreturn
L21:
lload 6
lstore 2
L16:
aload 0
aload 8
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delIdol(J)V
L17:
lload 6
lstore 4
goto L1
L3:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L20:
lload 4
lstore 2
L18:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L19:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lload 4
lreturn
.limit locals 9
.limit stack 4
.end method

.method public searchAttentionUserList(Ljava/lang/String;II)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;II)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc ""
astore 5
aload 5
astore 4
aload 1
ifnull L4
aload 5
astore 4
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nickname like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L4:
aconst_null
astore 1
iload 2
ifeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
aconst_null
aload 4
aconst_null
aconst_null
aconst_null
ldc "id desc "
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L6
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 1
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L7
aload 5
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getIdolFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/weibo/Idol;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
L3:
goto L1
L2:
astore 4
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
L7:
aload 1
invokeinterface android/database/Cursor/close()V 0
L6:
aload 5
areturn
.limit locals 6
.limit stack 9
.end method

.method public setAtReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
aload 1
lconst_0
ldc "at_reply"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;JLjava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setAtTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "at_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setCityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_location"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "citycode"
aload 1
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "longitude"
aload 2
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "latitude"
aload 3
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_location"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 5
.limit stack 4
.end method

.method public setFlowerMessageInfo(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "msg_text"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "msg_voice"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "msg_voice_local"
aload 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "msg_type"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "msg_state"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "msg_content_type"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "flower_msg"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public setFriendTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "friend_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setIdolInfo(Lcom/product/android/commonInterface/weibo/Idol;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "nickname"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "fans"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/fans I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "id"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "is_following"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/is_following Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Boolean;)V
aload 2
ldc "idols"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/idols I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "sina_uid"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public setIdolList(Lcom/product/android/commonInterface/weibo/IdolList;Z)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iload 2
ifeq L1
L0:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "idol_list"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
L1:
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setIdolInfo(Lcom/product/android/commonInterface/weibo/Idol;)V
L5:
goto L4
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L6:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L7:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 3
.limit stack 4
.end method

.method public setLikeAttitudeInfo(JZ)V
.catch android/database/SQLException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch android/database/SQLException from L4 to L5 using L2
.catch all from L4 to L5 using L3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 5
L1:
iload 3
ifeq L6
iconst_1
istore 4
L4:
aload 5
ldc "praised"
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
aload 5
lload 1
iload 3
ldc "public_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateLikeInfo(Landroid/content/ContentValues;JZLjava/lang/String;)V
aload 0
aload 5
lload 1
iload 3
ldc "user_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateLikeInfo(Landroid/content/ContentValues;JZLjava/lang/String;)V
aload 0
aload 5
lload 1
iload 3
ldc "friend_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateLikeInfo(Landroid/content/ContentValues;JZLjava/lang/String;)V
aload 0
aload 5
lload 1
iload 3
ldc "at_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateLikeInfo(Landroid/content/ContentValues;JZLjava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L6:
iconst_0
istore 4
goto L4
L2:
astore 5
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 5
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 5
athrow
.limit locals 6
.limit stack 6
.end method

.method public setPraiseList(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/json/JSONException from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch all from L7 to L8 using L3
.catch org/json/JSONException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch org/json/JSONException from L11 to L12 using L2
.catch all from L11 to L12 using L3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/clearPraises()V
L1:
aload 1
ifnonnull L9
iconst_0
istore 2
L13:
iload 2
ifeq L11
L4:
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 3
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
astore 4
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 5
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/iterator()Ljava/util/Iterator;
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L11
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praise
astore 6
aload 5
invokevirtual android/content/ContentValues/clear()V
aload 5
ldc "id"
aload 6
getfield com/android/u/weibo/weibo/business/bean/Praise/id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 5
ldc "praise_time"
aload 6
getfield com/android/u/weibo/weibo/business/bean/Praise/praise_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 5
ldc "user"
aload 3
aload 6
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "topic_info"
aload 4
aload 6
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "my_praised_topic"
aconst_null
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L6:
goto L5
L2:
astore 1
L7:
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L8:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L9:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
istore 2
L10:
goto L13
L11:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L12:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 7
.limit stack 4
.end method

.method public setPraisor(Lcom/android/u/weibo/weibo/business/bean/Praisor;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L3
return
L3:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "praise_time"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L0:
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "praise_user"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public setPraisorList(Lcom/android/u/weibo/weibo/business/bean/PraisorList;J)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "praise_user"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
L1:
aload 1
ifnonnull L6
iconst_0
istore 4
L10:
iload 4
ifeq L8
L3:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setPraisor(Lcom/android/u/weibo/weibo/business/bean/Praisor;)V
L5:
goto L4
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L6:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
istore 4
L7:
goto L10
L8:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L9:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
.limit locals 5
.limit stack 5
.end method

.method public setPublicTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "public_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setPublicTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "public_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setReTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "repost_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setReTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aconst_null
lconst_0
aload 1
ldc "repost_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
ldc "reply"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfo(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;J)V
aload 0
aload 1
lload 2
ldc "reply"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;JLjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public setReplyMeList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
aload 1
lconst_0
ldc "reply_me"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;JLjava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setSinaBind(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "sina_bind"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "access_token"
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "sina_uid"
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "refresh_token"
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getRefreshToken()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "expires_time"
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getExpiresTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "nick_name"
aload 1
getfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/mnickName Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "sina_bind"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public setTagTopicInfo(Ljava/lang/String;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
lconst_0
aload 2
ldc "tag_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 6
.end method

.method public setTagTopicInfoList(Ljava/lang/String;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
lconst_0
aload 2
ldc "tag_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 6
.end method

.method public setTimeStampTable(Ljava/lang/String;J)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
lload 2
lconst_0
lcmp
ifne L1
L0:
return
L1:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "table_name"
aload 1
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "ts"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "time_stamp"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 5
.limit stack 4
.end method

.method public setUser(Lcom/product/android/commonInterface/weibo/WbUserInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "id"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "name"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "gender"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public setUserTopicInfo(JLcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aconst_null
lload 1
aload 3
ldc "user_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfo(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 6
.end method

.method public setUserTopicInfoList(JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aconst_null
lload 1
aload 3
ldc "user_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTopicInfoList(Ljava/lang/String;JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 6
.end method

.method public setWeatherInfo(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/deleteWeather()V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "citycode"
aload 1
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "weather"
aload 2
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user_last_weather"
aconst_null
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 4
.limit stack 4
.end method

.method public updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.catch android/database/SQLException from L0 to L1 using L2
.catch all from L0 to L1 using L3
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
aload 1
ldc "public_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
aload 1
ldc "user_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
aload 1
ldc "friend_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
aload 1
ldc "at_topic"
invokespecial com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
getfield com/android/u/weibo/weibo/business/db/NdWeiboDatabase/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 2
.limit stack 3
.end method
