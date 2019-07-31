.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdTagSdk
.super com/android/u/weibo/weibo/business/comm/NdBaseSdk

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdBaseSdk/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getTagTopicInfoList(Landroid/content/Context;JLjava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_HASHTAGS_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 7
ldc "keyword"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 7
lload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
lload 2
lconst_0
lcmp
ifle L0
aload 0
aload 7
ldc "group_id"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L0:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 0
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/parseTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 8
.limit stack 5
.end method

.method public getTagTopicInfoList(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
aload 1
lconst_0
aload 2
lload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/getTagTopicInfoList(Landroid/content/Context;JLjava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 7
.end method
