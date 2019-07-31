.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$14
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.enclosing method com/android/u/weibo/weibo/controller/Manager/delTweet(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$14

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$14/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$14/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$14/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1005
aload 2
aload 3
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
.limit locals 4
.limit stack 4
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$14/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
sipush 1005
aload 2
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
.limit locals 3
.limit stack 3
.end method
