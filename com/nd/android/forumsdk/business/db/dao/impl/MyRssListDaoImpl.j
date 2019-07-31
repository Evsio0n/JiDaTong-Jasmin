.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/business/db/dao/IMyRssListDao

.field private static final 'TAG' Ljava/lang/String; = "MyRssListDaoImpl"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private cursor2Bean(Landroid/database/Cursor;)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L8 to L9 using L7
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
new com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/<init>()V
astore 6
aload 1
ifnonnull L0
aload 6
iconst_m1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
aload 6
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
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
new com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/<init>()V
astore 8
aload 8
aload 1
aload 1
ldc "active"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/setActive(J)V
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 9
aload 1
aload 1
ldc "tid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 4
aload 9
lload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
aload 9
aload 1
aload 1
ldc "root_tid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setRoot_tid(J)V
aload 9
aload 1
aload 1
ldc "unit_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUnit_id(J)V
aload 9
aload 1
aload 1
ldc "content"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 9
aload 1
aload 1
ldc "article"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 9
aload 1
aload 1
ldc "more_content"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setMore_content(I)V
aload 9
aload 1
aload 1
ldc "title"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTitle(Ljava/lang/String;)V
aload 9
aload 1
aload 1
ldc "post_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 9
aload 1
aload 1
ldc "from_string"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFrom_string(Ljava/lang/String;)V
aload 9
aload 1
aload 1
ldc "at_uids"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setAt_uids(Ljava/lang/String;)V
aload 9
aload 1
aload 1
ldc "floor"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFloor(I)V
aload 9
aload 1
aload 1
ldc "praises"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
aload 9
aload 1
aload 1
ldc "praised"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 9
aload 1
aload 1
ldc "replys"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 9
aload 1
aload 1
ldc "heat"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getFloat(I)F 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setHeat(F)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 10
aload 10
aload 1
aload 1
ldc "user_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 10
aload 1
aload 1
ldc "user_nickname"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 10
aload 1
aload 1
ldc "user_sysavatar"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
aload 1
aload 1
ldc "scope_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setId(J)V
aload 10
aload 1
aload 1
ldc "scope_type"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 10
aload 1
aload 1
ldc "scope_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 10
aload 1
aload 1
ldc "scope_avatar"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setAvatar(Ljava/lang/String;)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 1
aload 1
ldc "file_info"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 11
aload 11
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 11
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 11
L4:
iconst_0
istore 3
L5:
iload 3
aload 11
arraylength
if_icmpge L11
L6:
aload 11
iload 3
aaload
astore 12
L8:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 13
aload 13
aload 12
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 10
aload 13
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L9:
iload 3
iconst_1
iadd
istore 3
goto L5
L7:
astore 11
L10:
ldc "MyRssListDaoImpl"
aload 11
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L12:
aload 9
invokestatic com/nd/android/forumsdk/business/db/ForumDBFactory/getInstance()Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
invokevirtual com/nd/android/forumsdk/business/db/ForumDBFactory/getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
lload 4
iconst_2
invokeinterface com/nd/android/forumsdk/business/db/dao/ICommentDao/queryComments(JI)Ljava/util/List; 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
aload 8
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/setPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
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
L14:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setPosts(Ljava/util/List;)V
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
L15:
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
aload 6
areturn
L2:
astore 1
ldc "MyRssListDaoImpl"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
iconst_m1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
goto L15
.limit locals 14
.limit stack 5
.end method

.method public bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)Landroid/content/ContentValues;
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
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 3
aload 3
ifnull L1
aload 2
ldc "insert_time"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "active"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getActive()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "tid"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "root_tid"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getRoot_tid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "unit_id"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUnit_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "content"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "article"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "more_content"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getMore_content()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "title"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "post_time"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "from_string"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFrom_string()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "at_uids"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getAt_uids()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "floor"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFloor()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "praises"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "praised"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "replys"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "heat"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getHeat()F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Float;)V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L2
aload 2
ldc "user_uid"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "user_nickname"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "user_sysavatar"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
L2:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L3
aload 2
ldc "scope_id"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "scope_type"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "scope_name"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "scope_avatar"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getAvatar()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L3:
aload 3
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
astore 1
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
aload 1
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L6:
aload 2
ldc "file_info"
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L4:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
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
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 4
aload 4
ifnull L7
aload 1
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L8:
aload 2
ldc "post_info"
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 6
.limit stack 4
.end method

.method public cleanMyRssList(I)Z
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
iload 1
iconst_1
if_icmpge L0
aload 2
ldc "DELETE FROM forum_rss_posts"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
invokeinterface com/nd/android/forumsdk/business/db/dao/ICommentDao/clearInvalidComment()J 0
pop2
iconst_1
ireturn
L0:
aload 2
ldc "forum_rss_posts"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tid NOT IN (SELECT tid FROM forum_rss_posts ORDER BY insert_time DESC LIMIT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
anewarray java/lang/String
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
invokeinterface com/nd/android/forumsdk/business/db/dao/ICommentDao/clearInvalidComment()J 0
pop2
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 5
iconst_0
istore 4
aload 1
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
if_acmpne L0
bipush 8
istore 4
L1:
aload 5
ldc "forum_rss_posts"
ldc "scope_type=? AND scope_id=?"
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
i2l
lreturn
L0:
aload 1
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
if_acmpne L1
bipush 16
istore 4
goto L1
.limit locals 6
.limit stack 9
.end method

.method public getDataCount()J
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aconst_null
astore 6
aconst_null
astore 5
lconst_0
lstore 3
L0:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "SELECT count(*) FROM forum_rss_posts"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 7
L1:
lload 3
lstore 1
aload 7
ifnull L7
lload 3
lstore 1
aload 7
astore 5
aload 7
astore 6
L4:
aload 7
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L7
L5:
aload 7
astore 5
aload 7
astore 6
L6:
aload 7
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 1
L7:
lload 1
lstore 3
aload 7
ifnull L12
aload 7
invokeinterface android/database/Cursor/close()V 0
lload 1
lstore 3
L12:
lload 3
lreturn
L2:
astore 7
aload 5
astore 6
L8:
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
L9:
aload 5
astore 6
L10:
ldc "MyRssListDaoImpl"
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
aload 5
ifnull L12
aload 5
invokeinterface android/database/Cursor/close()V 0
lconst_0
lreturn
L3:
astore 5
aload 6
ifnull L13
aload 6
invokeinterface android/database/Cursor/close()V 0
L13:
aload 5
athrow
.limit locals 8
.limit stack 3
.end method

.method public getMyRssList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aconst_null
astore 3
iload 1
iconst_1
if_icmpge L8
L9:
aload 3
areturn
L8:
aconst_null
astore 3
aconst_null
astore 2
aconst_null
astore 5
L0:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "forum_rss_posts"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "insert_time DESC"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
L1:
aload 4
astore 2
aload 4
astore 3
L4:
aload 0
aload 4
invokespecial com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl/cursor2Bean(Landroid/database/Cursor;)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
astore 6
L5:
aload 6
astore 2
aload 2
astore 3
aload 4
ifnull L9
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
L2:
astore 4
aload 2
astore 3
L6:
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
L7:
aload 5
astore 3
aload 2
ifnull L9
aload 2
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L3:
astore 2
aload 3
ifnull L10
aload 3
invokeinterface android/database/Cursor/close()V 0
L10:
aload 2
athrow
.limit locals 7
.limit stack 10
.end method

.method public insertMyRssList(Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;)J
aload 1
ifnonnull L0
L1:
lconst_0
lreturn
L0:
iconst_0
istore 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
astore 1
aload 1
ifnull L1
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L1
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 2
L2:
iload 2
iflt L3
iload 3
istore 4
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
invokevirtual com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl/insertMyRssListSingle(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)J
lconst_0
lcmp
ifle L4
iload 3
iconst_1
iadd
istore 4
L4:
iload 2
iconst_1
isub
istore 2
iload 4
istore 3
goto L2
L3:
iload 3
i2l
lreturn
.limit locals 5
.limit stack 4
.end method

.method public insertMyRssListSingle(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)J
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
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch all from L26 to L27 using L3
aload 1
ifnonnull L28
ldc2_w -1L
lreturn
L28:
invokestatic com/nd/android/forumsdk/business/db/dbtool/ForumDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 12
aload 12
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
ldc2_w -1L
lstore 3
aconst_null
astore 10
aconst_null
astore 11
aconst_null
astore 9
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 13
L1:
lload 3
lstore 5
aload 13
ifnull L29
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L4:
aload 13
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
ifnull L30
L5:
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L6:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
astore 9
L7:
aload 9
ifnull L30
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L8:
aload 9
invokeinterface java/util/List/size()I 0
ifle L30
L9:
iconst_0
istore 2
L31:
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L10:
iload 2
aload 9
invokeinterface java/util/List/size()I 0
if_icmpge L30
L11:
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L12:
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
aload 9
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokeinterface com/nd/android/forumsdk/business/db/dao/ICommentDao/insertComment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)J 1
pop2
L13:
iload 2
iconst_1
iadd
istore 2
goto L31
L30:
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L14:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 13
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
L15:
lload 3
lstore 5
aload 10
astore 8
aload 11
astore 7
L16:
aload 12
ldc "forum_rss_posts"
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
aload 9
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 9
L17:
aload 9
ifnull L32
lload 3
lstore 5
aload 9
astore 8
aload 9
astore 7
L18:
aload 9
invokeinterface android/database/Cursor/getCount()I 0
ifle L32
L19:
lload 3
lstore 5
aload 9
astore 8
aload 9
astore 7
L20:
aload 12
ldc "forum_rss_posts"
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl/bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)Landroid/content/ContentValues;
ldc "tid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 13
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
i2l
lstore 3
L21:
lload 3
lstore 5
aload 9
astore 8
aload 9
astore 7
L22:
aload 12
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L23:
lload 3
lstore 5
L29:
aload 9
ifnull L33
aload 9
invokeinterface android/database/Cursor/close()V 0
L33:
aload 12
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lload 5
lreturn
L32:
lload 3
lstore 5
aload 9
astore 8
aload 9
astore 7
L24:
aload 12
ldc "forum_rss_posts"
aconst_null
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl/bean2ContentValue(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lstore 3
L25:
goto L21
L2:
astore 1
aload 8
astore 7
L26:
ldc "MyRssListDaoImpl"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L27:
aload 8
ifnull L34
aload 8
invokeinterface android/database/Cursor/close()V 0
L34:
aload 12
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lload 5
lreturn
L3:
astore 1
aload 7
ifnull L35
aload 7
invokeinterface android/database/Cursor/close()V 0
L35:
aload 12
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 14
.limit stack 10
.end method
