.bytecode 50.0
.class public synchronized com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl
.super java/lang/Object
.implements com/nd/schoollife/business/db/dao/SquarePostsDao

.field private static final 'TAG' Ljava/lang/String; = "SquarePostsDaoImpl"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private bean2Value(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
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
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
astore 4
aload 4
ifnull L4
aload 1
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
L5:
aload 2
ldc "file_info"
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method private cursor2List(Landroid/database/Cursor;)Ljava/util/List;
.signature "(Landroid/database/Cursor;)Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L8 to L9 using L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
invokeinterface android/database/Cursor/getCount()I 0
iconst_1
if_icmpge L10
L11:
aload 4
areturn
L10:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
iconst_0
istore 2
L12:
iload 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
if_icmpge L11
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
ifne L13
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
iconst_0
istore 3
L0:
iload 3
aload 7
arraylength
if_icmpge L14
L1:
aload 7
iload 3
aaload
astore 8
L3:
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
L4:
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
astore 7
ldc "SquarePostsDaoImpl"
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L14:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L13:
aload 1
aload 1
ldc "file_info"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 7
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L15
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
iconst_0
istore 3
L5:
iload 3
aload 7
arraylength
if_icmpge L16
L6:
aload 7
iload 3
aaload
astore 8
L8:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 9
aload 9
aload 8
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
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
ldc "SquarePostsDaoImpl"
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L16:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
L15:
aload 4
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
iload 2
iconst_1
iadd
istore 2
goto L12
.limit locals 10
.limit stack 4
.end method

.method public cleanSquarePosts(I)Z
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
iload 1
iconst_1
if_icmpge L0
aload 2
ldc "DELETE FROM sl_square_posts"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "sl_square_posts"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tid NOT IN (SELECT tid FROM sl_square_posts ORDER BY insert_time DESC LIMIT "
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
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getDataCount()J
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "SELECT count(*) FROM sl_square_posts"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 3
.end method

.method public getSquarePosts(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
iload 1
iconst_1
if_icmpge L0
aconst_null
areturn
L0:
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
aload 2
ldc "sl_square_posts"
iconst_0
anewarray java/lang/String
aconst_null
iconst_0
anewarray java/lang/String
aconst_null
aconst_null
ldc "insert_time DESC "
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
invokespecial com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl/cursor2List(Landroid/database/Cursor;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 10
.end method

.method public insertSquarePosts(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpge L1
L0:
lconst_0
lreturn
L1:
iconst_0
istore 3
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
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl/insertSquarePostsSingle(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)J
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

.method public insertSquarePostsSingle(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)J
aload 1
ifnonnull L0
ldc2_w -1L
lreturn
L0:
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 2
ldc "sl_square_posts"
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
aload 3
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 2
ldc "sl_square_posts"
aload 0
aload 1
invokespecial com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl/bean2Value(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
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
i2l
lreturn
L1:
aload 2
ldc "sl_square_posts"
aconst_null
aload 0
aload 1
invokespecial com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl/bean2Value(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 4
.limit stack 10
.end method
