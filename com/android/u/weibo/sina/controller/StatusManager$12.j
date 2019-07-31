.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/StatusManager$12
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/android/u/weibo/sina/controller/StatusManager/getOlderRetweetList(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/sina/controller/StatusManager$12

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/StatusManager;

.field final synthetic 'val$index' I

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.field final synthetic 'val$retweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;I)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/StatusManager$12/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/StatusManager$12/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
aload 3
putfield com/android/u/weibo/sina/controller/StatusManager$12/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
iload 4
putfield com/android/u/weibo/sina/controller/StatusManager$12/val$index I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public onComplete(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/weibo/business/parser/TopicInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoListParser/<init>()V
aload 1
ldc "reposts"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L4
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
aload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/insertRepostTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
pop
L4:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$index I
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$index I
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L5:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_0
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
L2:
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/Exception;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L5
.limit locals 2
.limit stack 6
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
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
getfield com/android/u/weibo/sina/controller/StatusManager$12/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_0
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public onIOException(Ljava/io/IOException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$12/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
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
getfield com/android/u/weibo/sina/controller/StatusManager$12/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_0
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method
