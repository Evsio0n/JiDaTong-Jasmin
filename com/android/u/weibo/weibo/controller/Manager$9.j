.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$9
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/postTweet(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZJZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$9
.inner class inner com/android/u/weibo/weibo/controller/Manager$9$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$category' Ljava/lang/String;

.field final synthetic 'val$content' Ljava/lang/String;

.field final synthetic 'val$files' Ljava/util/ArrayList;

.field final synthetic 'val$hasSina' Z

.field final synthetic 'val$is360Pic' Z

.field final synthetic 'val$lat' Ljava/lang/String;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;

.field final synthetic 'val$localCreateAt' J

.field final synthetic 'val$lon' Ljava/lang/String;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;ZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;JLjava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$9/val$content Ljava/lang/String;
aload 0
iload 3
putfield com/android/u/weibo/weibo/controller/Manager$9/val$hasSina Z
aload 0
aload 4
putfield com/android/u/weibo/weibo/controller/Manager$9/val$category Ljava/lang/String;
aload 0
aload 5
putfield com/android/u/weibo/weibo/controller/Manager$9/val$files Ljava/util/ArrayList;
aload 0
iload 6
putfield com/android/u/weibo/weibo/controller/Manager$9/val$is360Pic Z
aload 0
aload 7
putfield com/android/u/weibo/weibo/controller/Manager$9/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
aload 0
lload 8
putfield com/android/u/weibo/weibo/controller/Manager$9/val$localCreateAt J
aload 0
aload 10
putfield com/android/u/weibo/weibo/controller/Manager$9/val$lat Ljava/lang/String;
aload 0
aload 11
putfield com/android/u/weibo/weibo/controller/Manager$9/val$lon Ljava/lang/String;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 12
.limit stack 3
.end method

.method public run()V
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "postTweet,content="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$content Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",isSync="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$hasSina Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$hasSina Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$800(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$category Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$content Ljava/lang/String;
fconst_0
fconst_0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$files Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$is360Pic Z
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/postTopicInfo(Ljava/lang/String;Ljava/lang/String;FFLjava/util/ArrayList;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
sipush 1004
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
L5:
return
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
astore 1
goto L1
L4:
aload 1
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
sipush 1004
aload 1
aconst_null
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
return
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
sipush 1004
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
return
L3:
aconst_null
astore 2
aload 2
astore 1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$files Ljava/util/ArrayList;
ifnull L7
aload 2
astore 1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$files Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L7
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$files Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L7:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1000(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$content Ljava/lang/String;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
aload 1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$lat Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$lon Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$9/val$localCreateAt J
new com/android/u/weibo/weibo/controller/Manager$9$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$9$1/<init>(Lcom/android/u/weibo/weibo/controller/Manager$9;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/postStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
.limit locals 3
.limit stack 10
.end method
