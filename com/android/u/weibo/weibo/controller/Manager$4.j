.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$4
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/getOlderFriendsTimeline(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$4

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.field final synthetic 'val$tid' J

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$4/val$tid J
aload 0
aload 4
putfield com/android/u/weibo/weibo/controller/Manager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$600(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "threading running"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
invokestatic com/android/u/weibo/weibo/controller/Manager/access$602(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/val$tid J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldFriendsTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1007
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_nd_weibo_fail_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$602(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1007
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$602(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1007
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$4/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$602(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
.limit locals 2
.limit stack 6
.end method
