.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/BaseSinaManager$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/sina/controller/BaseSinaManager$1/onComplete(Ljava/lang/String;)V
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1$1

.field final synthetic 'this$1' Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;

.field final synthetic 'val$rateLimitStatus' Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;

.method <init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/BaseSinaManager$1$1/this$1 Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/BaseSinaManager$1$1/val$rateLimitStatus Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1$1/this$1 Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
invokestatic com/android/u/weibo/sina/controller/LimitManager/getInstance()Lcom/android/u/weibo/sina/controller/LimitManager;
putfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1$1/this$1 Lcom/android/u/weibo/sina/controller/BaseSinaManager$1;
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$1$1/val$rateLimitStatus Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;
invokevirtual com/android/u/weibo/sina/controller/LimitManager/setRateLimitStatus(Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)V
return
.limit locals 1
.limit stack 2
.end method
