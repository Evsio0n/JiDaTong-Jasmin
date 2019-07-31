.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/operator/impl/NewsOperatorImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/operator/INewsOperator

.field private 'newsCom' Lcom/nd/android/forumsdk/business/com/http/INewsCom;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
aload 0
invokestatic com/nd/android/forumsdk/business/com/ForumHttpFactory/getInstance()Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
invokevirtual com/nd/android/forumsdk/business/com/ForumHttpFactory/getNewsCom()Lcom/nd/android/forumsdk/business/com/http/INewsCom;
putfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
return
.limit locals 1
.limit stack 2
.end method

.method public cancelPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/cancelPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public createPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/createPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultReplyList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultReplyList/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
lload 3
iload 5
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultMsg(Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultMsg(Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public getMoreNewsPraiseList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
lload 3
iload 5
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getMoreNewsPraiseList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
lload 3
iload 5
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultMsg(Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultReplyList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultReplyList/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultMsg(Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public getNewsCmtList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultReplyList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultReplyList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsCmtList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultMsg(Ljava/lang/String;)V
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getNewsHomePage(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
iload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsHomePage(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 1
astore 3
L1:
aload 3
astore 2
L3:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/isSuccess()Z
ifeq L6
L4:
aload 3
astore 2
L5:
invokestatic com/nd/android/forumsdk/business/db/ForumDBFactory/getInstance()Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
invokevirtual com/nd/android/forumsdk/business/db/ForumDBFactory/getNewsDao()Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
aload 3
invokeinterface com/nd/android/forumsdk/business/db/dao/INewsDao/insertNewsList(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)I 1
pop
L6:
aload 3
areturn
L2:
astore 3
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 2
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultMsg(Ljava/lang/String;)V
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getNewsHomePageFromLocal(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic com/nd/android/forumsdk/business/db/ForumDBFactory/getInstance()Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
invokevirtual com/nd/android/forumsdk/business/db/ForumDBFactory/getNewsDao()Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
iload 1
invokeinterface com/nd/android/forumsdk/business/db/dao/INewsDao/getNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 1
astore 2
L1:
aload 2
areturn
L2:
astore 2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
areturn
.limit locals 3
.limit stack 2
.end method

.method public getNewsPraiseList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsPraiseList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultNewsList/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/setResultMsg(Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public postNewsComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
lload 1
aload 3
invokeinterface com/nd/android/forumsdk/business/com/http/INewsCom/postNewsComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 3
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultCode(I)V
aload 4
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultMsg(Ljava/lang/String;)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method
