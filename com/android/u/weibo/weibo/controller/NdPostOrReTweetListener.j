.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/weibo/controller/NdPostOrReTweetListener
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 0
iload 1
aload 2
aload 3
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
return
.limit locals 4
.limit stack 6
.end method

.method public abstract onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
iload 1
aload 2
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
return
.limit locals 3
.limit stack 5
.end method

.method public abstract onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
.end method
