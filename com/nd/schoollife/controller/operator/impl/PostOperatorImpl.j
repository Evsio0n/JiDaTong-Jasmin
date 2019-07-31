.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/PostOperatorImpl
.super java/lang/Object
.implements com/nd/schoollife/controller/operator/IPostOperator
.inner class static synthetic inner com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1

.field private 'mOperator' Lcom/nd/android/forumsdk/operator/IPostOperator;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
return
.limit locals 1
.limit stack 2
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public deleteComment(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/deleteComment(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
invokestatic com/nd/schoollife/ui/common/util/CommentUtils/convertToCommentInfo(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
areturn
.limit locals 3
.limit stack 3
.end method

.method public deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 1
lload 2
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J 3
lreturn
.limit locals 4
.limit stack 4
.end method

.method public doPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/createPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getCommentDetail(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getCommentDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/post2Comment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getCommentList(JIII)Lcom/nd/schoollife/common/bean/result/ResultCommentList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
iload 3
iload 4
iload 5
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getCommentList(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getData()Ljava/util/List;
invokestatic com/nd/schoollife/ui/common/util/PostUtils/postList2commentList(Ljava/util/List;)Ljava/util/ArrayList;
astore 6
new com/nd/schoollife/common/bean/result/ResultCommentList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommentList/<init>()V
astore 7
aload 7
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setResultCode(I)V
aload 7
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setData(Ljava/util/ArrayList;)V
aload 7
areturn
.limit locals 8
.limit stack 6
.end method

.method public getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts; 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
lload 3
lload 5
iload 7
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
areturn
.limit locals 8
.limit stack 8
.end method

.method public getHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
iload 3
iload 4
iconst_0
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList; 5
areturn
.limit locals 5
.limit stack 6
.end method

.method public getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 1
lload 2
lload 4
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 5
astore 6
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 6
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/insertMyRssListOffLine(Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;)J 1
pop2
aload 6
areturn
.limit locals 7
.limit stack 6
.end method

.method public getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
lload 1
lload 3
lload 5
iload 7
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
areturn
.limit locals 8
.limit stack 8
.end method

.method public sendCommentToPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
.signature "(JLjava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;"
new com/nd/android/forumsdk/business/bean/priv/PostParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostParams/<init>()V
astore 6
aload 6
sipush 128
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
aload 6
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_id(J)V
aload 6
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setArticle(Ljava/lang/String;)V
aload 6
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setFile(Ljava/util/ArrayList;)V
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setAt_uids(Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 6
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/createComment(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 1
invokestatic com/nd/schoollife/ui/common/util/CommentUtils/convertToCommentInfo(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
areturn
.limit locals 7
.limit stack 3
.end method

.method public sendPost(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.signature "(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;JLjava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;"
new com/nd/android/forumsdk/business/bean/priv/PostParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostParams/<init>()V
astore 7
getstatic com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1/$SwitchMap$com$nd$android$forumsdk$business$constant$RequestConst$ScopeType [I
aload 1
invokevirtual com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/ordinal()I
iaload
tableswitch 1
L0
L1
default : L2
L2:
aload 7
lload 2
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_id(J)V
aload 7
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setArticle(Ljava/lang/String;)V
aload 7
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setFile(Ljava/util/ArrayList;)V
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 7
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setAt_uids(Ljava/lang/String;)V
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 7
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/sendPost(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 1
areturn
L0:
aload 7
bipush 16
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
goto L2
L1:
aload 7
bipush 8
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
goto L2
.limit locals 8
.limit stack 3
.end method

.method public sendReplyToComment(JLjava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
new com/nd/android/forumsdk/business/bean/priv/PostParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostParams/<init>()V
astore 5
aload 5
sipush 256
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
aload 5
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_id(J)V
aload 5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setContent(Ljava/lang/String;)V
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 5
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setAt_uids(Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/PostOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 5
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/createReply(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 1
areturn
.limit locals 6
.limit stack 3
.end method
