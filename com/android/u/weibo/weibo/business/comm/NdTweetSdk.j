.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdTweetSdk
.super com/android/u/weibo/weibo/business/comm/NdBaseSdk

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdBaseSdk/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addGlanceCount(Landroid/content/Context;Ljava/util/Set;)Z
.signature "(Landroid/content/Context;Ljava/util/Set<Ljava/lang/Long;>;)Z"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 4
aload 2
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
goto L0
L1:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_GLANCE_COUNT Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "tids"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 3
aload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 2
iload 3
sipush 200
if_icmpne L2
iconst_1
ireturn
L2:
aload 1
iload 3
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
iconst_0
ireturn
.limit locals 6
.limit stack 5
.end method

.method public deleteTopicInfo(Landroid/content/Context;J)I
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/DELETE_TWEET Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 5
ldc "tid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoDelete()I
istore 4
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 5
iload 4
sipush 200
if_icmpeq L0
iload 4
sipush 404
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 1
iload 4
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
iload 4
ireturn
.limit locals 6
.limit stack 5
.end method

.method public getAtTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_AT_ME_TWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 4
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 0
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseAtTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 4
.end method

.method public getFriendTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_TWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 4
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 0
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 4
.end method

.method public getPublicTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_PUBLIC_TWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 4
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 0
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 4
.end method

.method public getRepostList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RETWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 6
ldc "tid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 6
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 6
aload 0
aload 1
aload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseAtTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 7
.limit stack 5
.end method

.method public getTallys(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/u/weibo/weibo/business/bean/Tally;>;"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
aload 2
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpeq L0
iconst_1
istore 3
L1:
iload 3
aload 2
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L1
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_TALLYS Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
ldc "tids"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 3
aload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 2
iload 3
sipush 200
if_icmpne L2
new org/json/JSONArray
dup
aload 2
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 4
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
astore 1
aload 4
ifnull L3
new com/android/u/weibo/weibo/business/parser/TallyListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TallyListParser/<init>()V
aload 4
invokevirtual com/android/u/weibo/weibo/business/parser/TallyListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TallyList;
invokevirtual com/android/u/weibo/weibo/business/bean/TallyList/iterator()Ljava/util/Iterator;
astore 4
L4:
aload 2
astore 1
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Tally
astore 1
aload 2
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L4
L2:
aload 1
iload 3
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
astore 1
L3:
aload 1
areturn
.limit locals 5
.limit stack 5
.end method

.method public getUserTopicInfoList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_USER_TWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 6
ldc "uid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 6
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 6
aload 0
aload 1
aload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
aload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 7
.limit stack 5
.end method

.method public postTopicInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.signature "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;"
.throws java/io/IOException
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
aload 0
aload 1
aload 2
aload 3
aload 4
iload 5
lload 6
lconst_0
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/postTopicInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 8
.limit stack 10
.end method

.method public postTopicInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.signature "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;ZJJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;"
.throws java/io/IOException
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
aconst_null
astore 12
aload 12
astore 11
aload 4
ifnull L0
aload 12
astore 11
aload 4
invokevirtual java/util/ArrayList/size()I
ifle L0
new com/android/u/weibo/weibo/business/comm/NdUploadSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdUploadSdk/<init>()V
aload 1
aload 4
iload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdUploadSdk/uploadImageList(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
astore 11
L0:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/POST_TOPIC Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 12
aload 12
ldc "category"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 12
ldc "content"
aload 3
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 6
lconst_0
lcmp
ifle L1
aload 12
ldc "weibo_tid"
lload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
lload 8
lconst_0
lcmp
ifle L2
aload 12
ldc "group_id"
lload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
aload 11
ifnull L3
aload 11
invokevirtual java/util/ArrayList/size()I
ifle L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
aload 11
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_1
istore 10
L4:
iload 10
aload 11
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 2
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 11
iload 10
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 10
iconst_1
iadd
istore 10
goto L4
L5:
aload 12
ldc "extra_id"
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 0
aload 1
aload 4
aload 12
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseTopicInfoFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 13
.limit stack 4
.end method

.method public repostTopicInfo(Landroid/content/Context;Ljava/lang/String;JJI)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.throws java/lang/IllegalStateException
.throws java/io/UnsupportedEncodingException
.throws java/io/IOException
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
aload 0
aload 1
aload 2
lload 3
lload 5
iload 7
lconst_0
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/repostTopicInfo(Landroid/content/Context;Ljava/lang/String;JJIJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 8
.limit stack 10
.end method

.method public repostTopicInfo(Landroid/content/Context;Ljava/lang/String;JJIJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.throws java/lang/IllegalStateException
.throws java/io/UnsupportedEncodingException
.throws java/io/IOException
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/REPOST_TOPIC Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 10
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 11
aload 11
ldc "content"
aload 2
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 5
lconst_0
lcmp
ifle L0
aload 11
ldc "weibo_tid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L0:
lload 8
lconst_0
lcmp
ifle L1
aload 11
ldc "group_id"
lload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 11
ldc "root_tid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 11
ldc "reply_flag"
iload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
aload 1
aload 10
aload 11
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
aload 10
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/parseTopicInfoFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 12
.limit stack 4
.end method
