.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener
.super com/android/u/weibo/weibo/controller/NdPostOrReTweetListener
.inner class private NdPostListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener outer com/android/u/weibo/weibo/controller/PostTweetService

.field private 'currentTimeMillis1' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/PostTweetService;

.method public <init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;J)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 0
invokespecial com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/currentTimeMillis1 J
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/currentTimeMillis1 J
return
.limit locals 4
.limit stack 3
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 2
aload 3
lload 4
invokestatic com/android/u/weibo/weibo/controller/PostTweetService/access$100(Lcom/android/u/weibo/weibo/controller/PostTweetService;Ljava/lang/Object;Ljava/lang/String;J)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 2
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
getstatic com/android/u/weibo/R$string/send_weibo_success I
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getString(I)Ljava/lang/String;
lload 4
invokestatic com/android/u/weibo/weibo/controller/PostTweetService/access$100(Lcom/android/u/weibo/weibo/controller/PostTweetService;Ljava/lang/Object;Ljava/lang/String;J)V
return
.limit locals 6
.limit stack 5
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aconst_null
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
getstatic com/android/u/weibo/R$string/send_weibo_fail I
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getString(I)Ljava/lang/String;
lload 3
invokestatic com/android/u/weibo/weibo/controller/PostTweetService/access$100(Lcom/android/u/weibo/weibo/controller/PostTweetService;Ljava/lang/Object;Ljava/lang/String;J)V
return
.limit locals 5
.limit stack 5
.end method
