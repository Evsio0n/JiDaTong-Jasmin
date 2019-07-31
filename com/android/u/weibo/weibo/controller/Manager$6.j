.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$6
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/getOlderUserTimeline(JJJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$6
.inner class inner com/android/u/weibo/weibo/controller/Manager$6$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.field final synthetic 'val$sina_uid' J

.field final synthetic 'val$tid' J

.field final synthetic 'val$timestamp' J

.field final synthetic 'val$uid' J

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;JJ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$6/val$uid J
aload 0
lload 4
putfield com/android/u/weibo/weibo/controller/Manager$6/val$tid J
aload 0
aload 6
putfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
lload 7
putfield com/android/u/weibo/weibo/controller/Manager$6/val$sina_uid J
aload 0
lload 9
putfield com/android/u/weibo/weibo/controller/Manager$6/val$timestamp J
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 11
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1100(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "threading running"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOlderUserTimeline,uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$tid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$uid J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$tid J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldUserTopicInfoList(JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1008
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_nd_weibo_fail_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1008
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$800(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1008
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$uid J
lconst_0
lcmp
ifne L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "no sina uid input"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1008
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L5:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1000(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$sina_uid J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$6/val$timestamp J
new com/android/u/weibo/weibo/controller/Manager$6$1
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/controller/Manager$6$1/<init>(Lcom/android/u/weibo/weibo/controller/Manager$6;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/getOlderStatusList_user(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 2
.limit stack 9
.end method
