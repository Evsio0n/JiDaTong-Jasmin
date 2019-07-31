.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/db/SinaWeiboDbHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class public static TweetColumnNames inner com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames outer com/android/u/weibo/sina/business/db/SinaWeiboDbHelper

.field public static final 'COMMENT_TABLE' Ljava/lang/String; = "comment"

.field private static 'COMMON_CREATE' Ljava/lang/String;

.field private static final 'CREATE_COMMENT_TWEET_TABLE' Ljava/lang/String;

.field private static final 'CREATE_FOLLOWING_TWEET_TABLE' Ljava/lang/String;

.field private static final 'CREATE_RETWEET_TWEET_TABLE' Ljava/lang/String;

.field private static final 'CREATE_USER_TWEET_TABLE' Ljava/lang/String;

.field public static final 'DATABASE_NAME_SUFFIX' Ljava/lang/String; = "sina_db"

.field public static final 'PRAISE_USER' Ljava/lang/String; = "praise_user"

.field public static final 'RETWEET_TABLE' Ljava/lang/String; = "retweet"

.field public static final 'TWEET_TABLE_FOLLOWING' Ljava/lang/String; = "tweet_following"

.field public static final 'TWEET_TABLE_USER' Ljava/lang/String; = "tweet_user"

.field private static final 'VERSION' I = 6


.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/id Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LONG PRIMARY KEY NOT NULL,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/createAt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " NUMERIC,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/data Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " String,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData1 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData2 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData3 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData4 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/extData5 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/COMMON_CREATE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS tweet_following ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/COMMON_CREATE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_FOLLOWING_TWEET_TABLE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS retweet ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/COMMON_CREATE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_RETWEET_TWEET_TABLE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS comment ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/COMMON_CREATE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_COMMENT_TWEET_TABLE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS tweet_user ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/COMMON_CREATE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper$TweetColumnNames/uid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " LONG)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_USER_TWEET_TABLE Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;JLjava/lang/String;)V
aload 0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sina_db"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".db3"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
bipush 6
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 5
.limit stack 5
.end method

.method public alterColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "ALTER TABLE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ADD "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 3
.end method

.method public columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
iconst_0
istore 6
iconst_0
istore 5
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where 1=2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
aload 3
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 4
L1:
iload 4
iflt L4
iconst_1
istore 5
L4:
iload 5
istore 6
aload 1
ifnull L5
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 5
istore 6
L5:
iload 6
ireturn
L3:
aload 1
ifnull L5
aload 1
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
L2:
astore 2
aload 1
ifnull L6
aload 1
invokeinterface android/database/Cursor/close()V 0
L6:
aload 2
athrow
.limit locals 7
.limit stack 3
.end method

.method public createDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_USER_TWEET_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_FOLLOWING_TWEET_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_RETWEET_TWEET_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/CREATE_COMMENT_TWEET_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/createDb(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.catch android/database/sqlite/SQLiteException from L0 to L1 using L2
.catch android/database/sqlite/SQLiteException from L3 to L4 using L5
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "==========onUpgrade:old="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",new="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
iload 2
if_icmple L6
iload 2
tableswitch 2
L0
L7
L7
L3
default : L7
L7:
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDbHelper/createDb(Landroid/database/sqlite/SQLiteDatabase;)V
L6:
return
L0:
aload 1
ldc "drop table if existst weet_user;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if existst weet_group;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists comment;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
goto L7
L2:
astore 4
goto L7
L3:
aload 1
ldc "drop table if exists praise_user;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists tweet_user;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists tweet_group;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists comment;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "drop table if exists retweet;"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L4:
goto L7
L5:
astore 4
goto L7
.limit locals 5
.limit stack 3
.end method

.method public tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
iconst_1
istore 4
aload 1
ldc "select count(*) as number from sqlite_master where type='table' and name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 3
L1:
iload 3
ifle L4
L5:
aload 1
ifnull L6
aload 1
invokeinterface android/database/Cursor/close()V 0
L6:
iload 4
ireturn
L4:
iconst_0
istore 4
goto L5
L3:
aload 1
ifnull L7
aload 1
invokeinterface android/database/Cursor/close()V 0
L7:
iconst_0
ireturn
L2:
astore 2
aload 1
ifnull L8
aload 1
invokeinterface android/database/Cursor/close()V 0
L8:
aload 2
athrow
.limit locals 5
.limit stack 6
.end method
