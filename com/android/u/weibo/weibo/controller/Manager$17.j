.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$17
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/getOlderPraiseUserList(JZJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$17

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$id' J

.field final synthetic 'val$id_max' J

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$17/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$17/val$id J
aload 0
lload 4
putfield com/android/u/weibo/weibo/controller/Manager$17/val$id_max J
aload 0
aload 6
putfield com/android/u/weibo/weibo/controller/Manager$17/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 7
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$id J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$id_max J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldPraiseUserList(JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
astore 1
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 6002
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L0:
aload 1
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 6002
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$17/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 6002
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L3
.limit locals 2
.limit stack 6
.end method
