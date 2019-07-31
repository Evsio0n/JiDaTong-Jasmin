.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/business/db/dao/INewsDao
.inner class inner com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$1
.inner class inner com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$2

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private clearNewsList()V
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "forum_news_list"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method private cursor2NewsInfoBean(Landroid/database/Cursor;)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 2
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 3
aload 2
aload 1
aload 1
ldc "post_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPostId(J)V
aload 1
aload 1
ldc "user_info"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
aload 3
aload 4
ldc com/nd/android/forumsdk/business/bean/structure/UserInfoBean
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/UserInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setUserInfo(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
L0:
aload 2
aload 1
aload 1
ldc "post_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPostType(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "cont_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setContType(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "template"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setTemplate(I)V
aload 2
aload 1
aload 1
ldc "title"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setTitle(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "source"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setSource(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "summary"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setSummary(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "content"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setContent(Ljava/lang/String;)V
aload 1
aload 1
ldc "cover_img"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
aload 3
aload 4
ldc com/nd/android/forumsdk/business/bean/structure/FileInfoBean
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setCoverImg(Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;)V
L1:
aload 2
aload 1
aload 1
ldc "extra_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setExtraId(J)V
aload 2
aload 1
aload 1
ldc "post_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPostTime(J)V
aload 2
aload 1
aload 1
ldc "relate_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setRelateId(Ljava/lang/String;)V
aload 1
aload 1
ldc "file_info"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 2
aload 3
aload 4
new com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$1
dup
aload 0
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$1/<init>(Lcom/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl;)V
invokevirtual com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$1/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/List
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setFileInfo(Ljava/util/List;)V
L2:
aload 1
aload 1
ldc "relate_topic"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 2
aload 3
aload 4
new com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$2
dup
aload 0
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$2/<init>(Lcom/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl;)V
invokevirtual com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl$2/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/List
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setRelateTopic(Ljava/util/List;)V
L3:
aload 2
aload 1
aload 1
ldc "heat"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getFloat(I)F 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setHeat(F)V
aload 2
aload 1
aload 1
ldc "praises"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraises(I)V
aload 2
aload 1
aload 1
ldc "praised"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraised(I)V
aload 2
aload 1
aload 1
ldc "replys"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setReplys(I)V
aload 2
aload 1
aload 1
ldc "favorited"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setFavorited(I)V
aload 2
aload 1
aload 1
ldc "glances"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setGlances(J)V
aload 2
areturn
.limit locals 5
.limit stack 6
.end method

.method private newsInfoBean2ContentValue(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 3
aload 2
ldc "post_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "user_info"
aload 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getUserInfo()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "post_type"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostType()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "cont_type"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getContType()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "template"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTemplate()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "title"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "source"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getSource()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "summary"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getSummary()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "content"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getContent()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "cover_img"
aload 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "extra_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getExtraId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "post_time"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "relate_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getRelateId()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "file_info"
aload 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "relate_topic"
aload 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getRelateTopic()Ljava/util/List;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "heat"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getHeat()F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Float;)V
aload 2
ldc "praises"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPraises()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "praised"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPraised()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "replys"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getReplys()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "favorited"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFavorited()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "glances"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getGlances()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch all from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "forum_news_list"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "post_id DESC LIMIT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnonnull L0
aload 3
iconst_m1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 3
areturn
L0:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 4
aload 0
aload 2
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl/cursor2NewsInfoBean(Landroid/database/Cursor;)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
goto L0
L2:
astore 3
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 3
athrow
L3:
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 3
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setData(Ljava/util/List;)V
aload 3
areturn
.limit locals 5
.limit stack 9
.end method

.method public insertNewsList(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 1
ifnull L7
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
ifnonnull L8
L7:
iconst_0
ireturn
L8:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 3
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl/clearNewsList()V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
astore 1
L1:
iconst_0
istore 2
L3:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L5
aload 3
ldc "forum_news_list"
aconst_null
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl/newsInfoBean2ContentValue(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
aload 1
invokeinterface java/util/List/size()I 0
istore 2
L6:
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iload 2
ireturn
L2:
astore 1
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 4
.limit stack 6
.end method
