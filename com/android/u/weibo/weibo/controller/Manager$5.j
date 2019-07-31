.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$5
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$5
.inner class inner com/android/u/weibo/weibo/controller/Manager$5$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.field final synthetic 'val$nd_uid' J

.field final synthetic 'val$sina_uid' J

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$5/val$nd_uid J
aload 0
lload 4
putfield com/android/u/weibo/weibo/controller/Manager$5/val$sina_uid J
aload 0
aload 6
putfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 7
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$700(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "threading running"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new com/android/u/weibo/weibo/controller/Manager$BindState
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokespecial com/android/u/weibo/weibo/controller/Manager$BindState/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokestatic com/android/u/weibo/weibo/controller/Manager/access$202(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/Manager$BindState;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshUserTimeline,nd_uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$nd_uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",sina_uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$sina_uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$nd_uid J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewUserTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 1
ifnonnull L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$800(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L5:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$sina_uid J
lconst_0
lcmp
ifne L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "no sina uid input"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1000(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5/val$sina_uid J
new com/android/u/weibo/weibo/controller/Manager$5$1
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/controller/Manager$5$1/<init>(Lcom/android/u/weibo/weibo/controller/Manager$5;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/refreshStatusList_user(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 2
.limit stack 7
.end method
