.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener
.super com/android/u/weibo/weibo/controller/NdPostOrReTweetListener
.inner class private NdCommentListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener outer com/android/u/weibo/weibo/controller/PostTweetService

.field private 'currentTimeMillis1' J

.field private 'mComposeMore' Z

.field private 'mIsFromOutside' Z

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/PostTweetService;

.method public <init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;JZZ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 0
invokespecial com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/currentTimeMillis1 J
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/currentTimeMillis1 J
aload 0
iload 4
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/mIsFromOutside Z
aload 0
iload 5
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/mComposeMore Z
return
.limit locals 6
.limit stack 3
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
aload 2
instanceof com/android/u/weibo/weibo/business/bean/ReplyInfo
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/mIsFromOutside Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
lload 4
aload 2
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
invokestatic com/android/u/weibo/weibo/controller/PostTweetService/access$000(Lcom/android/u/weibo/weibo/controller/PostTweetService;JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
astore 3
aload 2
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
lstore 4
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/mComposeMore Z
ifeq L2
iconst_m1
istore 1
L3:
aload 3
lload 4
iload 1
iconst_m1
bipush -2
bipush -2
iconst_0
aconst_null
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
L0:
return
L2:
bipush -2
istore 1
goto L3
.limit locals 6
.limit stack 9
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
aload 2
ifnull L0
aload 2
astore 5
aload 2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
ifnonnull L1
L0:
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transpond_weibo_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
astore 5
L1:
ldc "PostTweetService"
aload 5
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/mIsFromOutside Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
lconst_0
bipush -2
bipush -2
bipush -2
bipush -2
iconst_0
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/post_comment_err I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
lload 3
aconst_null
invokestatic com/android/u/weibo/weibo/controller/PostTweetService/access$000(Lcom/android/u/weibo/weibo/controller/PostTweetService;JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
.limit locals 6
.limit stack 10
.end method
