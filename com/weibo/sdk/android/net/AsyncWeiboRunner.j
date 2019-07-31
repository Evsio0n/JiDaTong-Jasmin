.bytecode 50.0
.class public synchronized com/weibo/sdk/android/net/AsyncWeiboRunner
.super java/lang/Object
.inner class inner com/weibo/sdk/android/net/AsyncWeiboRunner$1
.inner class inner com/weibo/sdk/android/net/AsyncWeiboRunner$2

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/net/AsyncWeiboRunner$1
dup
aload 0
aload 2
aload 1
aload 3
invokespecial com/weibo/sdk/android/net/AsyncWeiboRunner$1/<init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V
invokevirtual com/weibo/sdk/android/net/AsyncWeiboRunner$1/start()V
return
.limit locals 4
.limit stack 6
.end method

.method public static request4Binary(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/net/AsyncWeiboRunner$2
dup
aload 0
aload 2
aload 1
aload 3
invokespecial com/weibo/sdk/android/net/AsyncWeiboRunner$2/<init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V
invokevirtual com/weibo/sdk/android/net/AsyncWeiboRunner$2/start()V
return
.limit locals 4
.limit stack 6
.end method
