.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/BaseSinaManager$1
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/android/u/weibo/sina/controller/BaseSinaManager/getLimitStatus(Landroid/content/Context;)V
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1$1

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/BaseSinaManager;

.field final synthetic 'val$context' Landroid/content/Context;

.method <init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager;Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/BaseSinaManager$1/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/BaseSinaManager$1/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/sina/business/parser/RateLimitStatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/RateLimitStatusParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/RateLimitStatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1/val$context Landroid/content/Context;
checkcast android/app/Activity
new com/android/u/weibo/sina/controller/BaseSinaManager$1$1
dup
aload 0
aload 1
invokespecial com/android/u/weibo/sina/controller/BaseSinaManager$1$1/<init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 5
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onIOException(Ljava/io/IOException;)V
return
.limit locals 2
.limit stack 0
.end method
