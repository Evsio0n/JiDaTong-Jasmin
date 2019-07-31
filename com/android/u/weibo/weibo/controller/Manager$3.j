.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$3
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/refreshFriendsTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$currentTimeMillis' J

.field final synthetic 'val$force' Z

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;ZJ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
iload 3
putfield com/android/u/weibo/weibo/controller/Manager$3/val$force Z
aload 0
lload 4
putfield com/android/u/weibo/weibo/controller/Manager$3/val$currentTimeMillis J
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 6
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$500(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "threading running"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
invokestatic com/android/u/weibo/weibo/controller/Manager/access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new com/android/u/weibo/weibo/controller/Manager$BindState
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokespecial com/android/u/weibo/weibo/controller/Manager$BindState/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokestatic com/android/u/weibo/weibo/controller/Manager/access$202(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/Manager$BindState;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$force Z
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewFriendsTopicInfoList(Z)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 5
aload 5
ifnonnull L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_nd_weibo_fail_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nd used:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$currentTimeMillis J
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 5
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "==============no new nd weibo get"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5237\u65b0\u5fae\u535a\uff0c\u662f\u5426\u5f3a\u5236\u66f4\u65b0:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$force Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", \u6570\u636e\u4e3a\u7a7a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L6:
invokestatic java/lang/Thread/interrupted()Z
ifeq L7
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L8
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L8:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5237\u65b0\u5fae\u535a\uff0c\u662f\u5426\u5f3a\u5236\u66f4\u65b0:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$force Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", \u6570\u636e\u5927\u5c0f:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
goto L6
L7:
invokestatic java/lang/System/currentTimeMillis()J
lload 2
lsub
ldc2_w 1000L
ldiv
l2i
istore 1
iload 1
iconst_5
if_icmple L9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",\u8017\u65f6:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "s, \u672a\u7ed1\u5b9a\u65b0\u6d6a\u5fae\u535a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L10:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1001
aload 5
aload 4
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$3/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L9:
ldc ""
astore 4
goto L10
.limit locals 6
.limit stack 6
.end method
