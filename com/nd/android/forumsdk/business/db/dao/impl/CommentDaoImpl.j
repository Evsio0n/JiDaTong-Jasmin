.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/business/db/dao/ICommentDao

.field private static final 'TAG' Ljava/lang/String; = "CommentDaoImpl"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 1
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 2
ldc "insert_time"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "tid"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "root_tid"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getRoot_tid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "unit_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUnit_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "content"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "article"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "more_content"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getMore_content()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "title"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "post_time"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "from_string"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFrom_string()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "at_uids"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getAt_uids()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "floor"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFloor()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "praises"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "praised"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "replys"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "heat"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getHeat()F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Float;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L2
aload 2
ldc "user_uid"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "user_nickname"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "user_sysavatar"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L3
aload 2
ldc "scope_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "scope_type"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "scope_name"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "scope_avatar"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getAvatar()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L3:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
astore 4
aload 4
ifnull L4
aload 4
invokeinterface java/util/List/size()I 0
ifle L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L5:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
astore 5
aload 5
ifnull L5
aload 3
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L6:
aload 2
ldc "file_info"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L4:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReply_info()Ljava/util/List;
astore 3
aload 3
ifnull L1
aload 3
invokeinterface java/util/List/size()I 0
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L7:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
astore 4
aload 4
ifnull L7
aload 1
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getRid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L8:
aload 2
ldc "reply_info"
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 6
.limit stack 4
.end method

.method private cursor2List(Landroid/database/Cursor;)Ljava/util/ArrayList;
.signature "(Landroid/database/Cursor;)Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L8 to L9 using L7
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
ifnull L14
aload 1
invokeinterface android/database/Cursor/getCount()I 0
iconst_1
if_icmpge L0
L14:
aload 4
areturn
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
iconst_0
istore 2
L3:
iload 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
if_icmpge L14
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 5
aload 5
aload 1
aload 1
ldc "tid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
aload 5
aload 1
aload 1
ldc "root_tid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setRoot_tid(J)V
aload 5
aload 1
aload 1
ldc "unit_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUnit_id(J)V
aload 5
aload 1
aload 1
ldc "content"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 5
aload 1
aload 1
ldc "article"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 5
aload 1
aload 1
ldc "more_content"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setMore_content(I)V
aload 5
aload 1
aload 1
ldc "title"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTitle(Ljava/lang/String;)V
aload 5
aload 1
aload 1
ldc "post_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 5
aload 1
aload 1
ldc "from_string"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFrom_string(Ljava/lang/String;)V
aload 5
aload 1
aload 1
ldc "at_uids"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setAt_uids(Ljava/lang/String;)V
aload 5
aload 1
aload 1
ldc "floor"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFloor(I)V
aload 5
aload 1
aload 1
ldc "praises"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
aload 5
aload 1
aload 1
ldc "praised"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 5
aload 1
aload 1
ldc "replys"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 5
aload 1
aload 1
ldc "heat"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getFloat(I)F 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setHeat(F)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 6
aload 6
aload 1
aload 1
ldc "user_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 6
aload 1
aload 1
ldc "user_nickname"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 6
aload 1
aload 1
ldc "user_sysavatar"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 6
aload 6
aload 1
aload 1
ldc "scope_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setId(J)V
aload 6
aload 1
aload 1
ldc "scope_type"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 6
aload 1
aload 1
ldc "scope_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 6
aload 1
aload 1
ldc "scope_avatar"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 1
aload 1
ldc "file_info"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 7
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
L4:
iconst_0
istore 3
L5:
iload 3
aload 7
arraylength
if_icmpge L11
L6:
aload 7
iload 3
aaload
astore 8
L8:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 9
aload 9
aload 8
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 6
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L9:
iload 3
iconst_1
iadd
istore 3
goto L5
L7:
astore 7
L10:
ldc "CommentDaoImpl"
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L12:
aload 4
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
L13:
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "CommentDaoImpl"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 10
.limit stack 4
.end method

.method public clearInvalidComment()J
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "forum_rss_comments"
ldc "tid NOT IN ( SELECT tid AS tid FROM forum_rss_posts)"
iconst_0
anewarray java/lang/String
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
i2l
lreturn
.limit locals 1
.limit stack 4
.end method

.method public deleteComment(I)J
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "forum_rss_comments"
ldc "tid = ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
i2l
lreturn
.limit locals 2
.limit stack 8
.end method

.method public insertComment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)J
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
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
aload 1
ifnonnull L16
ldc2_w -1L
lstore 3
L17:
lload 3
lreturn
L16:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 11
lconst_0
lstore 3
aconst_null
astore 10
aconst_null
astore 9
aload 9
astore 8
aload 10
astore 7
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 12
L1:
aload 9
astore 8
aload 10
astore 7
L4:
aload 11
ldc "forum_rss_comments"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "tid"
aastore
ldc "tid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 12
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 9
L5:
aload 9
ifnull L18
aload 9
astore 8
aload 9
astore 7
L6:
aload 9
invokeinterface android/database/Cursor/getCount()I 0
ifle L18
L7:
aload 9
astore 8
aload 9
astore 7
L8:
aload 11
ldc "forum_rss_comments"
aload 0
aload 1
invokespecial com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl/bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
ldc "tid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
istore 2
L9:
iload 2
i2l
lstore 5
L19:
lload 5
lstore 3
aload 9
ifnull L17
aload 9
invokeinterface android/database/Cursor/close()V 0
lload 5
lreturn
L18:
aload 9
astore 8
aload 9
astore 7
L10:
aload 11
ldc "forum_rss_comments"
aconst_null
aload 0
aload 1
invokespecial com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl/bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lstore 5
L11:
goto L19
L2:
astore 1
aload 8
astore 7
L12:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L13:
aload 8
astore 7
L14:
ldc "CommentDaoImpl"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
aload 8
ifnull L17
aload 8
invokeinterface android/database/Cursor/close()V 0
lconst_0
lreturn
L3:
astore 1
aload 7
ifnull L20
aload 7
invokeinterface android/database/Cursor/close()V 0
L20:
aload 1
athrow
.limit locals 13
.limit stack 10
.end method

.method public queryComments(JI)Ljava/util/List;
.signature "(JI)Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
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
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
iload 3
iconst_1
if_icmpge L16
aconst_null
astore 5
L17:
aload 5
areturn
L16:
aconst_null
astore 7
aconst_null
astore 8
aconst_null
astore 6
aload 6
astore 4
aload 8
astore 5
L0:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 9
L1:
aload 6
astore 4
aload 8
astore 5
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
L5:
aload 6
astore 4
aload 8
astore 5
L6:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 11
L7:
aload 6
astore 4
aload 8
astore 5
L8:
aload 9
ldc "forum_rss_comments"
aconst_null
ldc "root_tid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 10
aastore
aconst_null
aconst_null
ldc "insert_time"
aload 11
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
L9:
aload 6
astore 4
aload 6
astore 5
L10:
aload 0
aload 6
invokespecial com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl/cursor2List(Landroid/database/Cursor;)Ljava/util/ArrayList;
astore 8
L11:
aload 8
astore 4
aload 4
astore 5
aload 6
ifnull L17
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L2:
astore 6
aload 4
astore 5
L12:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L13:
aload 4
astore 5
L14:
ldc "CommentDaoImpl"
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
aload 7
astore 5
aload 4
ifnull L17
aload 4
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L3:
astore 4
aload 5
ifnull L18
aload 5
invokeinterface android/database/Cursor/close()V 0
L18:
aload 4
athrow
.limit locals 12
.limit stack 9
.end method
