.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/util/CommentUtils
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static convertToCommentInfo(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
new com/nd/schoollife/common/bean/result/CommentInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommentInfoBean/<init>()V
astore 1
aload 0
ifnull L0
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setResultCode(I)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setResultMsg(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setErrorBean(Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;)V
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setComment_id(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getRoot_tid()J
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setPost_id(J)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFloor()I
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setFloor(I)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getMore_content()I
iconst_1
if_icmpne L1
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setContent(Ljava/lang/String;)V
L2:
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setImages(Ljava/util/List;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setTimestamp(J)V
L0:
aload 1
areturn
L1:
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setContent(Ljava/lang/String;)V
goto L2
.limit locals 2
.limit stack 4
.end method

.method public static convertToCommentList(Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;)Lcom/nd/schoollife/common/bean/result/ResultCommentList;
new com/nd/schoollife/common/bean/result/ResultCommentList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommentList/<init>()V
astore 2
aload 2
sipush 500
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setResultCode(I)V
aload 0
ifnull L0
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setResultCode(I)V
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setResultMsg(Ljava/lang/String;)V
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setErrorBean(Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;)V
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getTotal()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setTotal(I)V
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMax_ts()J
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setMax_ts(J)V
aload 2
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMin_ts()J
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setMin_ts(J)V
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getData()Ljava/util/List;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L1:
iload 1
aload 0
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 3
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokestatic com/nd/schoollife/ui/common/util/CommentUtils/convertToCommentInfo(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/setData(Ljava/util/ArrayList;)V
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
