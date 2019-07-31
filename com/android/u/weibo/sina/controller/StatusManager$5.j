.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/StatusManager$5
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/android/u/weibo/sina/controller/StatusManager/repostStatus(JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/sina/controller/StatusManager$5

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/StatusManager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/StatusManager$5/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/StatusManager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
invokestatic com/android/u/weibo/sina/controller/StatusManager/access$100()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L1:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
L2:
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/Exception;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L1
.limit locals 2
.limit stack 5
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getMessage()Ljava/lang/String;
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getCause()Ljava/lang/Throwable;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public onIOException(Ljava/io/IOException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/getCause()Ljava/lang/Throwable;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$5/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method
