.bytecode 50.0
.class public abstract interface com/nd/schoollife/controller/operator/IPostOperator
.super java/lang/Object

.method public abstract cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.end method

.method public abstract deleteComment(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
.end method

.method public abstract deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.end method

.method public abstract deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.end method

.method public abstract deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J
.end method

.method public abstract doPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.end method

.method public abstract getCommentDetail(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
.end method

.method public abstract getCommentList(JIII)Lcom/nd/schoollife/common/bean/result/ResultCommentList;
.end method

.method public abstract getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;
.end method

.method public abstract getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.end method

.method public abstract getHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;
.end method

.method public abstract getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.end method

.method public abstract getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.end method

.method public abstract getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.end method

.method public abstract getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.end method

.method public abstract getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.end method

.method public abstract getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.end method

.method public abstract sendCommentToPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
.signature "(JLjava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;"
.end method

.method public abstract sendPost(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.signature "(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;JLjava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;"
.end method

.method public abstract sendReplyToComment(JLjava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.end method
