.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/operator/IPostOperator

.field private 'postCom' Lcom/nd/android/forumsdk/business/com/http/IPostCom;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/forumsdk/business/com/ForumHttpFactory/getInstance()Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
invokevirtual com/nd/android/forumsdk/business/com/ForumHttpFactory/getPostCom()Lcom/nd/android/forumsdk/business/com/http/IPostCom;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
return
.limit locals 1
.limit stack 2
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 3
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 3
ldc "\u53d6\u6d88\u8d5e\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 2
.end method

.method public cleanMyRssListOffLine(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public createComment(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 3
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 3
ldc "\u8d5e\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 2
.end method

.method public createReply(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
ldc "\u56de\u5e16\u5220\u9664\u6210\u529f\uff01"
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 2
.end method

.method public deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 3
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 3
ldc "\u5e16\u5b50\u5220\u9664\u6210\u529f\uff01"
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 2
.end method

.method public deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 3
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 3
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultCode(I)V
aload 3
ldc "\u8bc4\u8bba\u5220\u9664\u6210\u529f\uff01"
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setResultMsg(Ljava/lang/String;)V
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 2
.end method

.method public deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J
lconst_0
lreturn
.limit locals 4
.limit stack 2
.end method

.method public getCommentDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 4
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 5
aload 5
ldc "\u98ce\u4fe1\u5b50"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 5
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 5
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 6
aload 6
ldc2_w 3434L
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setId(J)V
aload 6
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 4
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 4
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 4
ldc2_w 120L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 3
L0:
iload 3
iconst_4
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 6
aload 6
iload 3
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 4
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 4
areturn
.limit locals 7
.limit stack 5
.end method

.method public getCommentList(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/InterruptedException from L11 to L12 using L2
.catch java/lang/InterruptedException from L13 to L14 using L2
.catch java/lang/InterruptedException from L15 to L16 using L2
.catch java/lang/InterruptedException from L16 to L17 using L2
.catch java/lang/InterruptedException from L18 to L19 using L2
.catch java/lang/InterruptedException from L20 to L21 using L2
.catch java/lang/InterruptedException from L22 to L23 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 6
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
aload 6
bipush 100
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L1:
iconst_0
istore 3
L24:
iload 3
bipush 20
if_icmpge L22
L3:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 8
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 9
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 9
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 8
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 8
iload 3
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 9
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
L4:
iload 3
iconst_2
irem
ifne L25
iconst_1
istore 4
L5:
aload 10
iload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 8
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L6:
iconst_0
istore 4
L26:
iload 4
iconst_4
if_icmpge L9
L7:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 11
aload 11
iload 4
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
iload 4
iconst_1
iadd
istore 4
goto L26
L9:
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L10:
iload 3
iconst_2
irem
ifne L27
iconst_1
istore 4
L11:
aload 8
iload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 5000L
lsub
iload 3
i2l
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L12:
iconst_0
istore 4
L28:
iload 4
iconst_2
if_icmpge L29
L13:
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 11
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
bipush 99
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setRid(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 12
L14:
iload 4
iconst_1
if_icmpne L18
L15:
aload 12
ldc "\u67ef\u666f\u817e"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setPost_time(J)V
L16:
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L17:
iload 4
iconst_1
iadd
istore 4
goto L28
L18:
aload 12
ldc "\u7cbe\u94a2\u72fc"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setPost_time(J)V
L19:
goto L16
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 6
areturn
L29:
iload 3
bipush 20
iadd
i2l
lstore 1
L20:
aload 8
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReply_info(Ljava/util/List;)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L21:
iload 3
iconst_1
iadd
istore 3
goto L24
L22:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setData(Ljava/util/List;)V
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
aload 6
ldc "\u67e5\u8be2\u5217\u8868\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultMsg(Ljava/lang/String;)V
L23:
aload 6
areturn
L25:
iconst_2
istore 4
goto L5
L27:
iconst_0
istore 4
goto L11
.limit locals 13
.limit stack 5
.end method

.method public getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;
aconst_null
areturn
.limit locals 5
.limit stack 1
.end method

.method public getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 8
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/InterruptedException from L11 to L12 using L2
.catch java/lang/InterruptedException from L13 to L14 using L2
.catch java/lang/InterruptedException from L15 to L16 using L2
.catch java/lang/InterruptedException from L17 to L18 using L2
.catch java/lang/InterruptedException from L19 to L20 using L2
.catch java/lang/InterruptedException from L20 to L21 using L2
.catch java/lang/InterruptedException from L22 to L23 using L2
.catch java/lang/InterruptedException from L24 to L25 using L2
.catch java/lang/InterruptedException from L26 to L27 using L2
.catch java/lang/InterruptedException from L27 to L28 using L2
.catch java/lang/InterruptedException from L29 to L30 using L2
new com/nd/android/forumsdk/business/bean/result/ResultHotPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultHotPostList/<init>()V
astore 6
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
aload 6
bipush 20
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setCount(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L1:
iconst_0
istore 3
L31:
iload 3
bipush 20
if_icmpge L26
L3:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 8
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 9
ldc_w 123123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 9
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 8
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 8
iload 3
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 9
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
L4:
iload 3
iconst_2
irem
ifne L32
iconst_1
istore 4
L5:
aload 10
iload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 8
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L6:
iconst_0
istore 4
L33:
iload 4
iconst_4
if_icmpge L9
L7:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 11
aload 11
iload 4
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
iload 4
iconst_1
iadd
istore 4
goto L33
L9:
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L10:
iload 3
iconst_2
irem
ifne L34
iconst_1
istore 4
L11:
aload 8
iload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 5000L
lsub
iload 3
i2l
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L12:
iconst_0
istore 4
L35:
iload 4
iconst_2
if_icmpge L24
L13:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 11
aload 11
iload 4
bipush 99
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 12
L14:
iload 4
iconst_1
if_icmpne L22
L15:
aload 12
ldc "\u67ef\u666f\u817e"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 12
L16:
iconst_0
istore 5
L36:
iload 5
iconst_4
if_icmpge L19
L17:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 13
aload 13
iload 5
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 12
aload 13
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L18:
iload 5
iconst_1
iadd
istore 5
goto L36
L19:
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L20:
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L21:
iload 4
iconst_1
iadd
istore 4
goto L35
L22:
aload 12
ldc "\u7cbe\u94a2\u72fc"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L23:
goto L20
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 6
areturn
L24:
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L25:
iload 3
iconst_1
iadd
istore 3
goto L31
L26:
aload 6
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setGhost_v(J)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 2L
lrem
lconst_0
lcmp
ifne L29
aload 6
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setLatest_v(J)V
L27:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setPosts(Ljava/util/List;)V
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setResultCode(I)V
aload 6
ldc "\u67e5\u8be2\u5217\u8868\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setResultMsg(Ljava/lang/String;)V
L28:
aload 6
areturn
L29:
aload 6
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/setLatest_v(J)V
L30:
goto L27
L32:
iconst_2
istore 4
goto L5
L34:
iconst_0
istore 4
goto L11
.limit locals 14
.limit stack 5
.end method

.method public getMsgBoxCount()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/<init>()V
astore 1
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
astore 5
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
aload 5
bipush 60
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setTotal(I)V
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iload 2
istore 4
iload 4
istore 3
iload 1
iconst_3
if_icmpne L3
iload 4
iload 2
iconst_2
idiv
isub
istore 3
L3:
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L5
new com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/<init>()V
astore 7
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 9
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 8
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 9
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 9
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 9
iload 1
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 10
aload 10
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
aload 10
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
iload 1
iconst_2
irem
ifne L6
iconst_1
istore 2
L7:
aload 10
iload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 9
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 7
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/setPost_info(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 9
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
iload 1
sipush 23123
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 7
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L4
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L6:
iconst_2
istore 2
goto L7
L5:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setList(Ljava/util/List;)V
aload 5
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultCode(I)V
aload 5
ldc "\u5f02\u5e38"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/setResultMsg(Ljava/lang/String;)V
aload 5
areturn
.limit locals 11
.limit stack 5
.end method

.method public getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/<init>()V
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
L3:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
aload 5
bipush 60
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setTotal(I)V
L4:
iload 2
istore 4
iload 4
istore 3
iload 1
iconst_3
if_icmpne L6
iload 4
iload 2
iconst_2
idiv
isub
istore 3
L6:
iconst_0
istore 1
L7:
iload 1
iload 3
if_icmpge L8
new com/nd/android/forumsdk/business/bean/structure/MyReceiveCommentBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/MyReceiveCommentBean/<init>()V
astore 7
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 8
aload 8
ldc "\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u6211\u8bc4\u8bba\u7684\u5185\u5bb9\u3002"
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
sipush 1000
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setRid(Ljava/lang/String;)V
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceiveCommentBean/setReply_info(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
iload 1
sipush 23123
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceiveCommentBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L7
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L5:
astore 7
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
L8:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setList(Ljava/util/List;)V
aload 5
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultCode(I)V
aload 5
ldc "\u5f02\u5e38"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/setResultMsg(Ljava/lang/String;)V
aload 5
areturn
.limit locals 9
.limit stack 4
.end method

.method public getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/<init>()V
astore 5
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
aload 5
bipush 60
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setTotal(I)V
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iload 2
istore 4
iload 4
istore 3
iload 1
iconst_3
if_icmpne L3
iload 4
iload 2
iconst_2
idiv
isub
istore 3
L3:
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L5
new com/nd/android/forumsdk/business/bean/structure/MyReceivePraise
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/<init>()V
astore 7
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 9
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 8
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 9
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 9
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 9
iload 1
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 10
aload 10
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
aload 10
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
iload 1
iconst_2
irem
ifne L6
iconst_1
istore 2
L7:
aload 10
iload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 9
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 7
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/setPost_info(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 9
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
iload 1
sipush 23123
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 7
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L4
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L6:
iconst_2
istore 2
goto L7
L5:
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setList(Ljava/util/List;)V
aload 5
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultCode(I)V
aload 5
ldc "\u5f02\u5e38"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/setResultMsg(Ljava/lang/String;)V
aload 5
areturn
.limit locals 11
.limit stack 5
.end method

.method public getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/InterruptedException from L11 to L12 using L2
.catch java/lang/InterruptedException from L13 to L14 using L2
.catch java/lang/InterruptedException from L15 to L16 using L2
.catch java/lang/InterruptedException from L17 to L18 using L2
.catch java/lang/InterruptedException from L18 to L19 using L2
.catch java/lang/InterruptedException from L20 to L21 using L2
.catch java/lang/InterruptedException from L22 to L23 using L2
.catch java/lang/InterruptedException from L24 to L25 using L2
.catch java/lang/InterruptedException from L26 to L27 using L2
.catch java/lang/InterruptedException from L27 to L28 using L2
.catch java/lang/InterruptedException from L29 to L30 using L2
new com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/<init>()V
astore 9
L0:
ldc2_w 3000L
invokestatic java/lang/Thread/sleep(J)V
aload 9
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setCount(I)V
aload 9
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L1:
iconst_0
istore 6
L31:
iload 6
iload 1
if_icmpge L24
L3:
new com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/<init>()V
astore 11
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 12
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 13
aload 13
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 13
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 13
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 12
aload 13
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 12
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 12
iload 6
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 13
aload 13
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 13
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 13
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 13
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 12
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 12
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 14
L4:
iconst_0
istore 7
L32:
iload 7
iconst_4
if_icmpge L7
L5:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 15
aload 15
iload 7
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 14
aload 15
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 7
iconst_1
iadd
istore 7
goto L32
L7:
aload 12
aload 14
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L8:
iload 6
iconst_2
irem
ifne L33
iconst_1
istore 7
L9:
aload 12
iload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 14
aload 14
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 12
aload 14
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 12
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 100000L
lsub
iload 6
i2l
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 14
L10:
iconst_0
istore 7
L34:
iload 7
iconst_2
if_icmpge L22
L11:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 15
aload 15
iload 7
bipush 99
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 16
L12:
iload 7
iconst_1
if_icmpne L20
L13:
aload 16
iload 7
bipush 123
iadd
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 16
ldc "\u661f\u7235@-@"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 16
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 15
aload 16
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 16
L14:
iconst_0
istore 8
L35:
iload 8
iconst_2
if_icmpge L17
L15:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 17
aload 17
iload 8
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 16
aload 17
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L16:
iload 8
iconst_1
iadd
istore 8
goto L35
L17:
aload 15
aload 16
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 15
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L18:
aload 14
aload 15
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L19:
iload 7
iconst_1
iadd
istore 7
goto L34
L20:
aload 16
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 16
ldc "\u7cbe\u94a2\u72fc"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 16
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 15
aload 16
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u54c8\u54c8\u54c8\uff0c\u679c\u7136\u662f\u795e\u8d34!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 15
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L21:
goto L18
L2:
astore 10
aload 10
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 9
areturn
L22:
aload 12
aload 14
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
iload 6
sipush 10000
imul
i2l
lsub
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/setActive(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/setPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L23:
iload 6
iconst_1
iadd
istore 6
goto L31
L24:
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setPosts(Ljava/util/List;)V
L25:
lload 4
ldc2_w 88L
lcmp
ifne L29
L26:
aload 9
sipush 400
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
L27:
aload 9
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setMax_active(J)V
aload 9
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setMin_active(J)V
aload 9
ldc "\u67e5\u8be2\u5217\u8868\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultMsg(Ljava/lang/String;)V
L28:
aload 9
areturn
L29:
aload 9
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/setResultCode(I)V
L30:
goto L27
L33:
iconst_0
istore 7
goto L9
.limit locals 18
.limit stack 5
.end method

.method public getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 4
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 5
aload 5
ldc "\u98ce\u4fe1\u5b50"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 5
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 5
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 6
aload 6
ldc2_w 3434L
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setId(J)V
aload 6
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setType(I)V
aload 4
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 4
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 4
ldc2_w 120L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 3
L0:
iload 3
bipush 10
if_icmpge L1
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 6
aload 6
ldc_w 36917
iload 3
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "RunningMan"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iconst_0
istore 3
L2:
iload 3
iconst_4
if_icmpge L3
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 7
aload 7
iload 3
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 4
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraisor(Ljava/util/List;)V
aload 4
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 4
areturn
.limit locals 8
.limit stack 5
.end method

.method public getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
ldc2_w 3000L
invokestatic java/lang/Thread/sleep(J)V
L1:
new com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPraise/<init>()V
astore 7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 7
bipush 30
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setTotal(I)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getTotal()I
istore 6
iconst_0
istore 5
L3:
iload 5
iload 6
iload 3
iconst_1
isub
iload 4
imul
isub
if_icmpge L4
new com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/<init>()V
astore 9
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 10
aload 9
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1800L
lsub
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/setTimestamp(J)V
aload 10
ldc "\u6731\u7af9\u73e0"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 10
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 10
iload 5
bipush 123
iadd
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 9
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 8
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
iconst_1
iadd
istore 5
goto L3
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
L4:
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setUsers(Ljava/util/List;)V
aload 7
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultCode(I)V
aload 7
ldc "\u6210\u529f\uff01"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/setResultMsg(Ljava/lang/String;)V
aload 7
areturn
.limit locals 11
.limit stack 5
.end method

.method public getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultReplyList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultReplyList/<init>()V
astore 5
aload 5
bipush 100
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setTotal(I)V
L0:
ldc2_w 2000L
invokestatic java/lang/Thread/sleep(J)V
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iconst_0
istore 3
L3:
iload 3
iload 4
if_icmpge L4
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 7
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
aload 8
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc_w 423423
iload 3
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setRid(Ljava/lang/String;)V
aload 7
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
iload 3
sipush 10000
imul
i2l
lsub
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setPost_time(J)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u767d\u5c0f\u867e"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 8
ldc2_w 34234L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 7
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L4:
aload 5
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setResultCode(I)V
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/setData(Ljava/util/List;)V
aload 5
areturn
.limit locals 9
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
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public insertMyRssListSingleOffLine(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public sendPost(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpPostOperatorImpl/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
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
