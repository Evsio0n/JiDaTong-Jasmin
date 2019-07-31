.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$8
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/repostTweet(JLjava/lang/String;ZLcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$8

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$content' Ljava/lang/String;

.field final synthetic 'val$id' J

.field final synthetic 'val$is_comment' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$8/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$8/val$id J
aload 0
aload 4
putfield com/android/u/weibo/weibo/controller/Manager$8/val$content Ljava/lang/String;
aload 0
aload 5
putfield com/android/u/weibo/weibo/controller/Manager$8/val$is_comment Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
aload 0
aload 6
putfield com/android/u/weibo/weibo/controller/Manager$8/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 7
.limit stack 3
.end method

.method public run()V
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aconst_null
astore 1
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$id J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$is_comment Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/ordinal()I
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/retweet(JLjava/lang/String;IJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 2
L1:
aload 2
astore 1
L3:
invokestatic java/lang/Thread/interrupted()Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1006
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L5:
return
L2:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L3
L4:
aload 1
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1006
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$8/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1006
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
.limit locals 3
.limit stack 7
.end method
