.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl
.super com/nd/schoollife/controller/operator/impl/BaseOperator
.implements com/nd/schoollife/controller/operator/ISquareOperator

.field 'bannerDao' Lcom/nd/schoollife/business/db/dao/SquareBannerDao;

.field 'communityDao' Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;

.field 'postDao' Lcom/nd/schoollife/business/db/dao/SquarePostsDao;

.field 'squareCom' Lcom/nd/schoollife/business/com/http/ISquareCom;

.field 'teamDao' Lcom/nd/schoollife/business/db/dao/SquareTeamDao;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/controller/operator/impl/BaseOperator/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/squareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
aload 0
invokestatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/getInstance()Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
invokevirtual com/nd/schoollife/business/com/SchoolLifeHttpFactory/getSquareCom()Lcom/nd/schoollife/business/com/http/ISquareCom;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/squareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareCommunitiesDao()Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquarePostsDao()Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareTeamDao()Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpSquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
return
.limit locals 1
.limit stack 2
.end method

.method public getMsgNumTips()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/<init>()V
astore 1
L0:
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMsgBoxCount()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips; 0
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 1
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/setResultCode(I)V
aload 1
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMsgNumTips  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt;
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment;
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise;
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
astore 2
aload 2
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 4
aload 4
ldc "\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2\u793e\u56e2"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 4
ldc "http://img4.imgtn.bdimg.com/it/u=2846123696,902921732&fm=23&gp=0.jpg"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setAvatar(Ljava/lang/String;)V
aload 4
ldc "community"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 5
aload 5
ldc "team"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
aload 5
ldc "\u5c0f\u7ec4\u5c0f\u7ec4\u5c0f\u7ec4\u5c0f\u7ec4\u5c0f\u7ec4\u7ec4\u5c0f\u7ec4\u5c0f\u7ec4\u5c0f\u7ec4\u5c0f"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 5
ldc "http://img5.imgtn.bdimg.com/it/u=3012125152,3019067375&fm=21&gp=0.jpg"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setAvatar(Ljava/lang/String;)V
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 6
aload 6
ldc "banerBean3"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 6
ldc "http://img2.imgtn.bdimg.com/it/u=4187262848,2781313210&fm=23&gp=0.jpg"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setAvatar(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setBanner(Ljava/util/List;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L0:
iload 1
iconst_2
if_icmpge L1
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 4
aload 4
ldc "[\u82724]\u5468\u672bwww.baidu.com<M 317322>@\u9ec4\u7f8e\u7389</M>\u90fd\u53ea\u770b\u5230\u6e05\u7eaf\u7684\u5b66\u59b9\uff0c\u4e3a\u4ec0\u4e48\u6ca1\u6709\u5e05\u54e5\u5b66\u957f\u90fd\u53ea\u770b\u5230\u6e05\u7eaf\u7684\u5b66\u59b9\uff0c\u4e3a\u4ec0\u4e48\u6ca1\u6709\u5e05\u54e5\u5b66\u957f\u90fd\u53ea\u770b\u5230\u6e05\u7eaf\u7684\u5b66\u59b9\uff0c\u4e3a\u4ec0\u4e48\u6ca1\u6709\u5e05\u54e5\u5b66\u957f\u90fd\u53ea\u770b\u5230\u6e05\u7eaf\u7684\u5b66\u59b9\uff0c\u4e3a\u4ec0\u4e48\u6ca1\u6709\u5e05\u54e5\u5b66\u957f\u90fd\u53ea\u770b\u5230\u6e05\u7eaf\u7684\u5b66\u59b9\uff0c\u4e3a\u4ec0\u4e48\u6ca1\u6709\u5e05\u54e5\u5b66\u957f"
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 5
aload 5
ldc "\u9648\u51a0\u5e0c"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 5
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 5
aload 5
ldc "\u4e3a\u4ec0\u4e48\u6211\u8fd8\u6ca1\u5bf9\u8c61dd"
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 4
ldc_w 31.0F
iload 1
i2f
fadd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setHeat(F)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setPosts(Ljava/util/List;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 4
aload 4
bipush 93
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setMembers_total(I)V
aload 4
ldc "\u5468\u4e94\u665a\u4e0a\u8fdb\u884c\u7b2c\u4e09\u8282\u7bee\u7403\u676f...\u5468\u4e94\u665a\u4e0a\u8fdb\u884c\u7b2c\u4e09\u8282\u7bee\u7403\u676f...\u5468\u4e94\u665a\u4e0a\u8fdb\u884c\u7b2c\u4e09\u8282\u7bee\u7403\u676f...\u5468\u4e94\u665a\u4e0a\u8fdb\u884c\u7b2c\u4e09\u8282\u7bee\u7403\u676f..."
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 4
ldc "\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e\u7bee\u7403\u793e"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 4
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setCommunities(Ljava/util/List;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/<init>()V
astore 4
aload 4
ldc "\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4"
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setName(Ljava/lang/String;)V
aload 4
ldc "\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4\u6211\u7231love\u5c0f\u7ec4"
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setIntro(Ljava/lang/String;)V
aload 4
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setAvatar(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setTeams(Ljava/util/List;)V
aload 2
areturn
.limit locals 7
.limit stack 3
.end method

.method public getSquareAllDataOffLine()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
astore 1
aload 1
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 4
aload 4
bipush 17
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
L0:
iload 2
bipush 18
if_icmpge L1
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gjanofgafg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fmnoagnf"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 6
iconst_0
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 6
ldc ""
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
aload 4
areturn
.limit locals 7
.limit stack 3
.end method

.method public searchComplex(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2;
new com/nd/schoollife/common/bean/result/ResultSearchComplex2
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSearchComplex2/<init>()V
astore 6
new com/nd/android/forumsdk/business/bean/result/ResultSearchPost
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultSearchPost/<init>()V
astore 7
aload 7
bipush 20
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
iconst_0
istore 2
L0:
iload 2
bipush 20
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/<init>()V
astore 9
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "jfnoaigjnfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 10
sipush 1000
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFavorited(I)V
aload 10
ldc_w 10.0F
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setHeat(F)V
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "kfoanfjkagmae"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 10
ldc "lanqiugakgad"
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFrom_string(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 11
aload 11
ldc "\u5468\u5c0f\u767d"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 10
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/setPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 8
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setPosts(Ljava/util/ArrayList;)V
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 8
aload 8
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
iconst_0
istore 2
L2:
iload 2
bipush 20
if_icmpge L3
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gjanofgafg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fmnoagnf"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 10
iconst_0
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 10
ldc ""
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 9
aload 10
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 8
aload 9
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 9
aload 9
bipush 20
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
iconst_0
istore 2
L4:
iload 2
bipush 20
if_icmpge L5
new com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/<init>()V
astore 11
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gjanofgafg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setIntro(Ljava/lang/String;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fmnoagnf"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setName(Ljava/lang/String;)V
aload 11
ldc ""
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setAvatar(Ljava/lang/String;)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setList(Ljava/util/List;)V
aload 1
ldc "a"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
aload 6
aload 8
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
aload 6
aload 9
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setTeamList(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
L7:
aload 6
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
areturn
L6:
aload 1
ldc "p"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
goto L7
L8:
aload 1
ldc "t"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L9
aload 6
aload 9
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setTeamList(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
goto L7
L9:
aload 1
ldc "c"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 6
aload 8
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
goto L7
L10:
aload 1
ldc "2"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
aload 6
aload 8
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
goto L7
.limit locals 12
.limit stack 3
.end method

.method public searchComplexWithoutCommunity(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2;
aconst_null
areturn
.limit locals 6
.limit stack 1
.end method

.method public searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
new com/nd/android/forumsdk/business/bean/result/ResultSearchPost
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultSearchPost/<init>()V
astore 4
aload 4
bipush 30
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
L0:
iload 2
bipush 18
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/<init>()V
astore 6
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "jfnoaigjnfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 7
sipush 1000
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFavorited(I)V
aload 7
ldc_w 10.0F
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setHeat(F)V
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "kfoanfjkagmae"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 7
ldc "lanqiugakgad"
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFrom_string(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
ldc "\u5468\u5c0f\u767d"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/setPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 5
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setPosts(Ljava/util/ArrayList;)V
aload 4
areturn
.limit locals 9
.limit stack 3
.end method

.method public searchScope(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultSearchScope;
new com/nd/schoollife/common/bean/result/ResultSearchScope
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSearchScope/<init>()V
astore 4
aload 4
bipush 17
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchScope/setSearch_total(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
L0:
iload 2
bipush 18
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gjanofgafg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setIntro(Ljava/lang/String;)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fmnoagnf"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 6
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setRole(I)V
aload 6
sipush 1200
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setTotal(I)V
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchScope/setScopes(Ljava/util/List;)V
aload 4
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchScope/setResultCode(I)V
aload 4
areturn
.limit locals 7
.limit stack 3
.end method

.method public searchTeam(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 4
aload 4
bipush 17
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
L0:
iload 2
bipush 18
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/<init>()V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gjanofgafg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setIntro(Ljava/lang/String;)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fmnoagnf"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setName(Ljava/lang/String;)V
aload 6
ldc ""
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setList(Ljava/util/List;)V
aload 4
areturn
.limit locals 7
.limit stack 3
.end method
