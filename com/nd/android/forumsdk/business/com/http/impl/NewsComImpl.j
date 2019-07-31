.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/http/impl/NewsComImpl
.super com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom
.implements com/nd/android/forumsdk/business/com/http/INewsCom
.inner class private static final PostDetialConst inner com/nd/android/forumsdk/business/com/http/impl/NewsComImpl$PostDetialConst outer com/nd/android/forumsdk/business/com/http/impl/NewsComImpl
.inner class private static final PostListConst inner com/nd/android/forumsdk/business/com/http/impl/NewsComImpl$PostListConst outer com/nd/android/forumsdk/business/com/http/impl/NewsComImpl
.inner class private static final PraiseConst inner com/nd/android/forumsdk/business/com/http/impl/NewsComImpl$PraiseConst outer com/nd/android/forumsdk/business/com/http/impl/NewsComImpl
.inner class private static final PraiseListConst inner com/nd/android/forumsdk/business/com/http/impl/NewsComImpl$PraiseListConst outer com/nd/android/forumsdk/business/com/http/impl/NewsComImpl

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public cancelPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/uia_api_posts_del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/atype/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "p"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/uia_api_posts_del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/atype/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "p"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public createPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/uia_api_posts"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 3
new com/nd/android/forumsdk/business/bean/priv/PostPraiseParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/<init>()V
astore 4
aload 4
ldc "p"
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setAtype(Ljava/lang/String;)V
aload 4
bipush 6
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setPostType(I)V
aload 4
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setPostId(J)V
aload 3
aload 4
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 4
aconst_null
astore 3
L0:
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
L1:
aload 4
astore 3
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
aload 3
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/uia_api_posts"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 3
new com/nd/android/forumsdk/business/bean/priv/PostPraiseParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/<init>()V
astore 4
aload 4
ldc "p"
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setAtype(Ljava/lang/String;)V
aload 4
iconst_3
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setPostType(I)V
aload 4
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/setPostId(J)V
aload 3
aload 4
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 4
aconst_null
astore 3
L0:
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
L1:
aload 4
astore 3
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
aload 3
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 512
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 6
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultReplyList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 4
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultNewsList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
areturn
.limit locals 5
.limit stack 5
.end method

.method public getMoreNewsPraiseList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/praise_api_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 6
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 32
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 6
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultNewsList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
areturn
.limit locals 7
.limit stack 5
.end method

.method public getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 512
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 4
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultReplyList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
areturn
.limit locals 5
.limit stack 5
.end method

.method public getNewsCmtList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 512
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 5
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultReplyList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_detail"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/NewsInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getNewsHomePage(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 2
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultNewsList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
areturn
.limit locals 3
.limit stack 5
.end method

.method public getNewsPraiseList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/praise_api_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 4
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
.limit locals 5
.limit stack 5
.end method

.method public getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/praise_api_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 5
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
.limit locals 6
.limit stack 5
.end method

.method public getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_detail"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/NewsInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_detail"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/NewsInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 32
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 4
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultNewsList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
areturn
.limit locals 5
.limit stack 5
.end method

.method public postNewsComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_post"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 4
new com/nd/android/forumsdk/business/bean/priv/PostParams
dup
invokespecial com/nd/android/forumsdk/business/bean/priv/PostParams/<init>()V
astore 6
aload 6
bipush 8
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setPost_type(I)V
aload 6
sipush 512
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
aload 6
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_id(J)V
aload 6
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setContent(Ljava/lang/String;)V
aload 4
aload 6
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 4
aconst_null
astore 3
L0:
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
L1:
aload 4
astore 3
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
aload 3
invokevirtual com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 7
.limit stack 5
.end method

.method public volatile synthetic processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
.limit locals 6
.limit stack 6
.end method

.method public volatile synthetic processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
.limit locals 5
.limit stack 5
.end method
