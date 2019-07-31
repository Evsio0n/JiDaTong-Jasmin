.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener
.super com/android/u/weibo/weibo/controller/NdPostOrReTweetListener
.inner class private NdRepostListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener outer com/android/u/weibo/weibo/controller/PostTweetService

.field private 'currentTimeMillis1' J

.field private 'mComposeMore' Z

.field private 'retweetId' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/PostTweetService;

.method public <init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;JJZ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 0
invokespecial com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/currentTimeMillis1 J
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/currentTimeMillis1 J
aload 0
lload 4
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/retweetId J
aload 0
iload 6
putfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/mComposeMore Z
return
.limit locals 7
.limit stack 3
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
.catch org/json/JSONException from L0 to L1 using L2
aload 2
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transpond_weibo_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aconst_null
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/showNotifyOnBar(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/clearNotify(Landroid/content/Context;)V
new android/content/Intent
dup
ldc "refresh-forward-tweet"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 6
ldc ""
astore 3
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 2
L1:
aload 6
ldc "retweet"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 6
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
astore 2
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/retweetId J
lstore 4
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/mComposeMore Z
ifeq L4
iconst_m1
istore 1
L5:
aload 2
lload 4
iconst_m1
iload 1
bipush -2
bipush -2
iconst_0
aconst_null
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
L3:
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 3
astore 2
goto L1
L4:
bipush -2
istore 1
goto L5
.limit locals 7
.limit stack 9
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
aload 2
ifnull L0
aload 2
astore 5
aload 2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
ifnonnull L1
L0:
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transpond_weibo_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
astore 5
L1:
ldc "PostTweetService"
aload 5
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transpond_weibo_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aconst_null
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/showNotifyOnBar(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/this$0 Lcom/android/u/weibo/weibo/controller/PostTweetService;
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/clearNotify(Landroid/content/Context;)V
return
.limit locals 6
.limit stack 4
.end method
