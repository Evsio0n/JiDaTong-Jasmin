.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$1
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/refreshPublicTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$currentTimeMillis' J

.field final synthetic 'val$force' Z

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;JZ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
lload 3
putfield com/android/u/weibo/weibo/controller/Manager$1/val$currentTimeMillis J
aload 0
iload 5
putfield com/android/u/weibo/weibo/controller/Manager$1/val$force Z
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 6
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$000(Lcom/android/u/weibo/weibo/controller/Manager;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
ldc "threading running"
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
invokestatic com/android/u/weibo/weibo/controller/Manager/access$002(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new com/android/u/weibo/weibo/controller/Manager$BindState
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokespecial com/android/u/weibo/weibo/controller/Manager$BindState/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokestatic com/android/u/weibo/weibo/controller/Manager/access$202(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/Manager$BindState;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1000
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$002(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewPublicTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 3
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$currentTimeMillis J
lsub
ldc2_w 1000L
ldiv
l2i
istore 1
iload 1
iconst_5
if_icmple L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5237\u65b0\u4f01\u4e1a\u5fae\u535a\uff0c\u662f\u5426\u5f3a\u5236\u66f4\u65b0:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$force Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ",\u8017\u65f6:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L5:
invokestatic java/lang/Thread/interrupted()Z
ifeq L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L7
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1000
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L7:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$002(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L4:
ldc ""
astore 2
goto L5
L6:
aload 3
ifnull L8
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1000
aload 3
aload 2
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L9:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$002(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L8:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1000
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$1/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_nd_weibo_fail_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L9
.limit locals 4
.limit stack 6
.end method
