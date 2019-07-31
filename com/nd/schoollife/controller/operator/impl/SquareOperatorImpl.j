.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/SquareOperatorImpl
.super com/nd/schoollife/controller/operator/impl/BaseOperator
.implements com/nd/schoollife/controller/operator/ISquareOperator

.field 'bannerDao' Lcom/nd/schoollife/business/db/dao/SquareBannerDao;

.field 'communityDao' Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;

.field 'communityOperator' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

.field 'postDao' Lcom/nd/schoollife/business/db/dao/SquarePostsDao;

.field 'postOperator' Lcom/nd/android/forumsdk/operator/IPostOperator;

.field 'squareCom' Lcom/nd/schoollife/business/com/http/ISquareCom;

.field 'teamDao' Lcom/nd/schoollife/business/db/dao/SquareTeamDao;

.field 'teamOperator' Lcom/nd/android/forumsdk/operator/ITeamOperator;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/controller/operator/impl/BaseOperator/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/squareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
aload 0
invokestatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/getInstance()Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
invokevirtual com/nd/schoollife/business/com/SchoolLifeHttpFactory/getSquareCom()Lcom/nd/schoollife/business/com/http/ISquareCom;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/squareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getTeamOperator()Lcom/nd/android/forumsdk/operator/ITeamOperator;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareCommunitiesDao()Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquarePostsDao()Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
aload 0
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareTeamDao()Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
putfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
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
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
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
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getAtMeList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getReplyMsgInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getPraiseList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L6 to L8 using L7
.catch java/lang/Exception from L8 to L9 using L7
.catch java/lang/Exception from L9 to L10 using L7
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
astore 2
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/squareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
invokeinterface com/nd/schoollife/business/com/http/ISquareCom/getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData; 0
astore 3
L1:
aload 3
ifnull L10
aload 3
astore 2
L3:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultCode()I
istore 1
L4:
sipush 200
iload 1
if_icmpne L10
L5:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
ifnull L6
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L6
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/insertSquareBanner(Ljava/util/List;)J 1
pop2
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/cleanSquareBanner(I)Z 1
pop
L6:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
ifnull L8
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L8
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
invokeinterface com/nd/schoollife/business/db/dao/SquareCommunitiesDao/insertSquareCummunities(Ljava/util/List;)J 1
pop2
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareCommunitiesDao/cleanSquareCummunities(I)Z 1
pop
L8:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
ifnull L9
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L9
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
invokeinterface com/nd/schoollife/business/db/dao/SquarePostsDao/insertSquarePosts(Ljava/util/List;)J 1
pop2
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquarePostsDao/cleanSquarePosts(I)Z 1
pop
L9:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
ifnull L10
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L10
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
invokeinterface com/nd/schoollife/business/db/dao/SquareTeamDao/insertSquareTeam(Ljava/util/List;)J 1
pop2
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareTeamDao/cleanSquareTeam(I)Z 1
pop
L10:
aload 3
areturn
L7:
astore 4
aload 3
astore 2
L11:
aload 3
sipush 998
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
L12:
aload 3
astore 2
L13:
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultMsg(Ljava/lang/String;)V
L14:
aload 3
astore 2
L15:
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getSquareAllData  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L16:
aload 3
areturn
L2:
astore 3
aload 2
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
aload 2
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getSquareAllData  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public getSquareAllDataOffLine()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
astore 1
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/bannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/getSquareBanner(I)Ljava/util/List; 1
astore 2
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareCommunitiesDao/getSquareCummunities(I)Ljava/util/List; 1
astore 3
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquarePostsDao/getSquarePosts(I)Ljava/util/List; 1
astore 4
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
iconst_2
invokeinterface com/nd/schoollife/business/db/dao/SquareTeamDao/getSquareTeam(I)Ljava/util/List; 1
astore 5
aload 1
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setBanner(Ljava/util/List;)V
aload 1
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setCommunities(Ljava/util/List;)V
aload 1
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setPosts(Ljava/util/List;)V
aload 1
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setTeams(Ljava/util/List;)V
aload 1
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
L1:
aload 1
areturn
L2:
astore 2
aload 1
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultCode(I)V
aload 1
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getSquareAllDataOffLine  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 6
.limit stack 3
.end method

.method public searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public searchComplex(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L16 to L17 using L2
new com/nd/schoollife/common/bean/result/ResultSearchComplex2
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSearchComplex2/<init>()V
astore 6
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L1:
aload 6
areturn
L18:
iload 2
iconst_m1
if_icmpeq L19
iload 2
ifgt L19
L3:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L4:
aload 6
areturn
L2:
astore 1
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchComplex  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
L19:
iload 3
iconst_m1
if_icmpeq L20
iload 3
ifgt L20
L5:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L6:
aload 6
areturn
L20:
iload 3
bipush 100
if_icmple L21
L7:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L8:
aload 6
areturn
L21:
iload 4
iconst_m1
if_icmpeq L22
iload 4
ifgt L22
L9:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4/\u793e\u56e2\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L10:
aload 6
areturn
L22:
iload 5
iconst_m1
if_icmpeq L23
iload 5
ifgt L23
L11:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4/\u793e\u56e2\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L12:
aload 6
areturn
L23:
iload 5
bipush 100
if_icmple L15
L13:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4/\u793e\u56e2\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L14:
aload 6
areturn
L15:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost; 3
astore 7
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aload 1
iload 4
iload 5
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
astore 8
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 1
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
astore 1
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
aload 6
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
aload 6
aload 8
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setTeamList(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/isSuccess()Z
ifne L16
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/isSuccess()Z
ifne L16
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/isSuccess()Z
ifeq L17
L16:
aload 6
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
L17:
aload 6
areturn
.limit locals 9
.limit stack 4
.end method

.method public searchComplexWithoutCommunity(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L16 to L17 using L2
new com/nd/schoollife/common/bean/result/ResultSearchComplex2
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSearchComplex2/<init>()V
astore 6
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L1:
aload 6
areturn
L18:
iload 2
iconst_m1
if_icmpeq L19
iload 2
ifgt L19
L3:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L4:
aload 6
areturn
L2:
astore 1
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchComplex  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
L19:
iload 3
iconst_m1
if_icmpeq L20
iload 3
ifgt L20
L5:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L6:
aload 6
areturn
L20:
iload 3
bipush 100
if_icmple L21
L7:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5e16\u5b50\u7ed3\u679c\u96c6\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L8:
aload 6
areturn
L21:
iload 4
iconst_m1
if_icmpeq L22
iload 4
ifgt L22
L9:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L10:
aload 6
areturn
L22:
iload 5
iconst_m1
if_icmpeq L23
iload 5
ifgt L23
L11:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L12:
aload 6
areturn
L23:
iload 5
bipush 100
if_icmple L15
L13:
aload 6
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
aload 6
ldc "\u5c0f\u7ec4\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultMsg(Ljava/lang/String;)V
L14:
aload 6
areturn
L15:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost; 3
astore 7
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aload 1
iload 4
iload 5
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
astore 1
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
aload 6
aconst_null
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
aload 6
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setTeamList(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/isSuccess()Z
ifne L16
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/isSuccess()Z
ifeq L17
L16:
aload 6
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/setResultCode(I)V
L17:
aload 6
areturn
.limit locals 8
.limit stack 4
.end method

.method public searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/android/forumsdk/business/bean/result/ResultSearchPost
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultSearchPost/<init>()V
astore 4
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
ldc "\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultMsg(Ljava/lang/String;)V
L1:
aload 4
areturn
L11:
iload 2
iconst_m1
if_icmpeq L12
iload 2
ifgt L12
L3:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L12:
iload 3
iconst_m1
if_icmpeq L13
iload 3
ifgt L13
L5:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultMsg(Ljava/lang/String;)V
L6:
aload 4
areturn
L13:
iload 3
bipush 100
if_icmple L9
L7:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L9:
aload 0
getfield com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost; 3
astore 1
L10:
aload 1
areturn
L2:
astore 1
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultCode(I)V
aload 4
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/setResultMsg(Ljava/lang/String;)V
ldc "SquareOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchPost  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
astore 1
goto L10
.limit locals 5
.limit stack 4
.end method

.method public searchScope(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultSearchScope;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public searchTeam(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
areturn
.limit locals 4
.limit stack 4
.end method
