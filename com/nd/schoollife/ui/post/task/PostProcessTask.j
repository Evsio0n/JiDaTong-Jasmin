.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/task/PostProcessTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask
.inner class inner com/nd/schoollife/ui/post/task/PostProcessTask$1
.inner class inner com/nd/schoollife/ui/post/task/PostProcessTask$2

.field public static final 'TASKCODE_CANCEL_PRAISE' I = 7


.field public static final 'TASKCODE_DELETE_COMMENT' I = 11


.field public static final 'TASKCODE_DELETE_POST' I = 8


.field public static final 'TASKCODE_DELETE_REPLY' I = 9


.field public static final 'TASKCODE_DO_PRAISE' I = 6


.field public static final 'TASKCODE_GET_COMMENT_DETAIL' I = 5


.field public static final 'TASKCODE_GET_COMMENT_LIST' I = 4


.field public static final 'TASKCODE_GET_HOTPOST_IN＿COMMUNITY' I = 17


.field public static final 'TASKCODE_GET_POST_DETAIL' I = 2


.field public static final 'TASKCODE_GET_POST_LIST_FROM_COMMUNITY' I = 15


.field public static final 'TASKCODE_GET_POST_LIST_FROM_TEAM' I = 14


.field public static final 'TASKCODE_GET_PRAISE_LIST' I = 10


.field public static final 'TASKCODE_GET_REPLY_LIST' I = 16


.field public static final 'TASKCODE_SEND_COMMENT' I = 12


.field public static final 'TASKCODE_SEND_POST' I = 3


.field public static final 'TASKCODE_SEND_REPLY' I = 13


.field private 'ipo' Lcom/nd/schoollife/controller/operator/IPostOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getPostOperator()Lcom/nd/schoollife/controller/operator/IPostOperator;
putfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
return
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 11
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/mCode I
tableswitch 2
L0
L1
L2
L3
L4
L5
L6
L7
L8
L9
L10
L11
L12
L13
L14
L15
default : L16
L16:
aconst_null
areturn
L12:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
ifnull L16
aload 1
arraylength
iconst_4
if_icmpne L16
aload 1
iconst_0
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 1
iconst_1
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 5
aload 1
iconst_2
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 7
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
lload 3
lload 7
lload 5
iload 2
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
areturn
L13:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
ifnull L16
aload 1
arraylength
iconst_4
if_icmpne L16
aload 1
iconst_0
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 1
iconst_1
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 5
aload 1
iconst_2
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 7
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
lload 3
lload 7
lload 5
iload 2
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList; 7
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
ifnull L16
aload 1
arraylength
ifle L16
aload 1
iconst_0
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
lload 3
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 1
iconst_3
aaload
ifnull L17
aload 1
iconst_2
aaload
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L17
aload 11
aload 1
iconst_3
aaload
new com/nd/schoollife/ui/post/task/PostProcessTask$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask$1/<init>(Lcom/nd/schoollife/ui/post/task/PostProcessTask;)V
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask$1/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 9
aload 9
ifnull L17
aload 9
invokevirtual java/util/ArrayList/size()I
ifle L17
iconst_0
istore 2
L18:
iload 2
aload 9
invokevirtual java/util/ArrayList/size()I
if_icmpge L17
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 11
aload 11
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/mCtx Landroid/content/Context;
aload 9
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokestatic com/nd/schoollife/ui/common/util/PostUtils/uploadPostImage(Landroid/content/Context;Ljava/lang/String;)J
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 10
aload 11
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L18
L17:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
bipush 16
if_icmpne L19
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
astore 9
L20:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 9
aload 1
iconst_1
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_2
aaload
aload 10
aload 1
iconst_4
aaload
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/sendPost(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 6
areturn
L19:
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
astore 9
goto L20
L2:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getCommentList(JIII)Lcom/nd/schoollife/common/bean/result/ResultCommentList; 5
areturn
L3:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getCommentDetail(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean; 2
areturn
L14:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 4
areturn
L4:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/doPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
L5:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
L6:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean; 2
areturn
L8:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
areturn
L7:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 2
areturn
L9:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/deleteComment(J)Lcom/nd/schoollife/common/bean/result/CommentInfoBean; 2
areturn
L10:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
aload 1
iconst_2
aaload
ifnull L21
aload 1
iconst_2
aaload
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L21
aload 11
aload 1
iconst_2
aaload
new com/nd/schoollife/ui/post/task/PostProcessTask$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask$2/<init>(Lcom/nd/schoollife/ui/post/task/PostProcessTask;)V
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask$2/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 10
iconst_0
istore 2
L22:
iload 2
aload 10
invokevirtual java/util/ArrayList/size()I
if_icmpge L21
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/mCtx Landroid/content/Context;
aload 10
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokestatic com/nd/schoollife/ui/common/util/PostUtils/uploadPostImage(Landroid/content/Context;Ljava/lang/String;)J
lstore 3
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 11
aload 11
lload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 9
aload 11
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L22
L21:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
aload 9
aload 1
iconst_3
aaload
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/sendCommentToPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean; 5
areturn
L11:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
ifnull L16
aload 1
arraylength
iconst_3
if_icmpne L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
aload 1
iconst_2
aaload
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/sendReplyToComment(JLjava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 4
areturn
L15:
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L16
aload 1
ifnull L16
aload 1
arraylength
iconst_3
if_icmpne L16
aload 0
getfield com/nd/schoollife/ui/post/task/PostProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts; 4
areturn
.limit locals 12
.limit stack 8
.end method
