.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$22
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.enclosing method com/android/u/weibo/weibo/controller/Manager/replyComment(JJZLjava/lang/String;IIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$22

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$22/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$22/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$22/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
sipush 2004
aload 2
aload 3
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$22/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
sipush 2004
aload 2
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method
