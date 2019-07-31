.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$5$1
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.enclosing method com/android/u/weibo/weibo/controller/Manager$5/run()V
.inner class inner com/android/u/weibo/weibo/controller/Manager$5
.inner class inner com/android/u/weibo/weibo/controller/Manager$5$1

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/controller/Manager$5;

.field final synthetic 'val$ndList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager$5;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$5$1/val$ndList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
astore 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/val$ndList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 2
invokestatic com/android/u/weibo/weibo/controller/Manager/access$900(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 4
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L0:
aload 4
ifnonnull L2
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 2
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
aload 2
aload 3
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
L2:
aload 4
astore 2
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
bipush 20
if_icmple L3
aload 4
iconst_0
bipush 20
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 2
goto L3
.limit locals 5
.limit stack 6
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1002
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/val$ndList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$5$1/this$1 Lcom/android/u/weibo/weibo/controller/Manager$5;
getfield com/android/u/weibo/weibo/controller/Manager$5/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/Manager/access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
pop
return
.limit locals 3
.limit stack 4
.end method
