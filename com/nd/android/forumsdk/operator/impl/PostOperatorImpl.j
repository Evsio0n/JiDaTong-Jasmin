.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/operator/impl/PostOperatorImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/operator/IPostOperator

.field private 'myRssListDao' Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;

.field private 'postCom' Lcom/nd/android/forumsdk/business/com/http/IPostCom;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/forumsdk/business/com/ForumHttpFactory/getInstance()Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
invokevirtual com/nd/android/forumsdk/business/com/ForumHttpFactory/getPostCom()Lcom/nd/android/forumsdk/business/com/http/IPostCom;
putfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
aload 0
invokestatic com/nd/android/forumsdk/business/db/ForumDBFactory/getInstance()Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
invokevirtual com/nd/android/forumsdk/business/db/ForumDBFactory/getMyRssListDao()Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
putfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
return
.limit locals 1
.limit stack 2
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/ForumResultBase
dup
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "cancelPraise  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public cleanMyRssListOffLine(I)Z
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
iload 1
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/cleanMyRssList(I)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public createComment(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/createComment(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createComment  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public createPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createPraise  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public createReply(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/createReply(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createReply  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public deleteComment(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/deleteComment(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deleteComment  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deletePost  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deleteReply  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
aload 1
lload 2
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J 3
lreturn
.limit locals 4
.limit stack 4
.end method

.method public getCommentDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getCommentDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommentDetail  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getCommentList(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
iload 3
iload 4
iload 5
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getCommentList(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommentList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityHotPosts  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 8
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
lload 3
lload 5
iload 7
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
astore 9
L1:
aload 9
areturn
L2:
astore 9
aload 8
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
aload 8
aload 9
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityPosts  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 8
areturn
.limit locals 10
.limit stack 8
.end method

.method public getDataCountOffLine()J
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/getDataCount()J 0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultHotPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultHotPostList/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
iload 3
iload 4
iload 5
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getHotPosts  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getMsgBoxCount()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/<init>()V
astore 1
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getMsgBoxCount()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips; 0
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMsgBoxCount  -- resultCode : "
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
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt; 2
astore 4
L1:
aload 4
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyReceiveAt  -- resultCode : "
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
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment; 2
astore 4
L1:
aload 4
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyReceiveComment  -- resultCode : "
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
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise; 2
astore 4
L1:
aload 4
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyReceivePraise  -- resultCode : "
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
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
iload 1
lload 2
lload 4
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 5
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
aload 6
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyRssList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
areturn
.limit locals 8
.limit stack 6
.end method

.method public getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
iload 1
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/getMyRssList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getPostDetail  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getPraiseList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultReplyList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultReplyList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 4
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
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getReplyList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 8
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
lload 1
lload 3
lload 5
iload 7
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
astore 9
L1:
aload 9
areturn
L2:
astore 9
aload 8
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
aload 8
aload 9
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTeamPosts  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 8
areturn
.limit locals 10
.limit stack 8
.end method

.method public insertMyRssListOffLine(Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;)J
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
aload 1
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/insertMyRssList(Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;)J 1
lreturn
.limit locals 2
.limit stack 2
.end method

.method public insertMyRssListSingleOffLine(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)J
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
aload 1
invokeinterface com/nd/android/forumsdk/business/db/dao/IMyRssListDao/insertMyRssListSingle(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)J 1
lreturn
.limit locals 2
.limit stack 2
.end method

.method public searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultSearchPost
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultSearchPost/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost; 3
astore 1
L1:
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
ldc "PostOperatorImpl"
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
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public sendPost(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/PostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/IPostCom/sendPost(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "PostOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sendPost  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method
