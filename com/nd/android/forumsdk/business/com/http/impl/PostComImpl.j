.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/http/impl/PostComImpl
.super com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom
.implements com/nd/android/forumsdk/business/com/http/IPostCom

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
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
astore 3
aload 3
ldc "/atype/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "p"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
.limit locals 4
.limit stack 5
.end method

.method public createComment(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
bipush 7
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setPost_type(I)V
aload 1
sipush 128
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_post"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 2
aconst_null
astore 1
L0:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 2
astore 1
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 5
.end method

.method public createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
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
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "atype"
ldc "p"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "post_type"
iconst_2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 4
ldc "post_id"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aload 4
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 5
.end method

.method public createReply(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
bipush 8
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setPost_type(I)V
aload 1
sipush 256
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setRegion_type(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_post"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 2
aconst_null
astore 1
L0:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 2
astore 1
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
ldc com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 5
.end method

.method public deleteComment(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_delete"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
bipush 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public deletePost(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_delete"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public deleteReply(J)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_delete"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getCommentDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
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
astore 3
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
bipush 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getCommentList(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
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
astore 6
aload 6
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
sipush 128
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 6
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
bipush 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
lload 1
ldc2_w -1L
lcmp
ifeq L0
aload 6
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L0:
iload 3
iconst_m1
if_icmpeq L1
iload 3
ifle L1
aload 6
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
iload 5
iconst_m1
if_icmpeq L2
iload 5
ifle L2
aload 6
ldc "/replys/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L2:
iload 4
iconst_m1
if_icmpeq L3
iload 4
ifle L3
aload 6
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPostList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPostList
areturn
.limit locals 7
.limit stack 5
.end method

.method public getCommunityHotPosts(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_community_hot"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "/id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
iload 3
iconst_m1
if_icmpeq L0
iload 3
ifle L0
aload 5
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
iload 4
ifle L1
aload 5
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
areturn
.limit locals 6
.limit stack 5
.end method

.method public getCommunityPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
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
astore 8
aload 8
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
bipush 16
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 8
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
lload 1
ldc2_w -1L
lcmp
ifeq L0
aload 8
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L0:
lload 3
ldc2_w -1L
lcmp
ifeq L1
lload 3
lconst_0
lcmp
ifle L1
aload 8
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L1:
lload 5
ldc2_w -1L
lcmp
ifeq L2
lload 5
lconst_0
lcmp
ifle L2
aload 8
ldc "/min_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L2:
iload 7
iconst_m1
if_icmpeq L3
iload 7
ifle L3
aload 8
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPostList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPostList
areturn
.limit locals 9
.limit stack 5
.end method

.method public getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_hots"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 6
lload 1
ldc2_w -1L
lcmp
ifeq L0
aload 6
ldc "/ghost_v/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L0:
iload 3
iconst_m1
if_icmpeq L1
iload 3
ifle L1
aload 6
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
iload 4
iconst_m1
if_icmpeq L2
iload 4
ifle L2
aload 6
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L2:
iload 5
iconst_m1
if_icmpeq L3
iload 5
iconst_m1
if_icmple L3
aload 6
ldc "/replys/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultHotPostList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultHotPostList
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMsgBoxCount()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/notify_counter"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 1
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
areturn
.limit locals 2
.limit stack 5
.end method

.method public getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/notify_at"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
iload 1
iconst_m1
if_icmpeq L0
iload 1
ifle L0
aload 3
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
iconst_m1
if_icmpeq L1
iload 2
ifle L1
aload 3
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
areturn
.limit locals 4
.limit stack 5
.end method

.method public getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/notify_comment"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
iload 1
iconst_m1
if_icmpeq L0
iload 1
ifle L0
aload 3
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
iconst_m1
if_icmpeq L1
iload 2
ifle L1
aload 3
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
areturn
.limit locals 4
.limit stack 5
.end method

.method public getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/notify_praise"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
iload 1
iconst_m1
if_icmpeq L0
iload 1
ifle L0
aload 3
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
iconst_m1
if_icmpeq L1
iload 2
ifle L1
aload 3
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
areturn
.limit locals 4
.limit stack 5
.end method

.method public getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_rss"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 6
iload 1
iconst_m1
if_icmpeq L0
iload 1
ifle L0
aload 6
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
lload 2
ldc2_w -1L
lcmp
ifeq L1
lload 2
lconst_0
lcmp
ifle L1
aload 6
ldc "/active_gt/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L1:
lload 4
ldc2_w -1L
lcmp
ifeq L2
lload 4
lconst_0
lcmp
ifle L2
aload 6
ldc "/active_lt/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L2:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
areturn
.limit locals 7
.limit stack 5
.end method

.method public getPostDetail(J)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
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
astore 3
aload 3
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public getPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
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
astore 5
aload 5
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/post_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
iload 3
iconst_m1
if_icmpeq L0
iload 3
ifle L0
aload 5
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
iload 4
ifle L1
aload 5
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPraise
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
areturn
.limit locals 6
.limit stack 5
.end method

.method public getReplyList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
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
astore 5
aload 5
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
sipush 256
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 3
iconst_m1
if_icmpeq L0
iload 3
ifle L0
aload 5
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
iload 4
ifle L1
aload 5
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultReplyList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getTeamPosts(JJJI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
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
astore 8
aload 8
ldc "/region_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
bipush 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 8
ldc "/post_type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
lload 1
ldc2_w -1L
lcmp
ifeq L0
aload 8
ldc "/region_id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L0:
lload 3
ldc2_w -1L
lcmp
ifeq L1
lload 3
lconst_0
lcmp
ifle L1
aload 8
ldc "/max_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L1:
lload 5
ldc2_w -1L
lcmp
ifeq L2
lload 5
lconst_0
lcmp
ifle L2
aload 8
ldc "/min_ts/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L2:
iload 7
iconst_m1
if_icmpeq L3
iload 7
ifle L3
aload 8
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultPostList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultPostList
areturn
.limit locals 9
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

.method public searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_search"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "/keyword/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
iconst_m1
if_icmpeq L0
iload 2
ifle L0
aload 4
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 3
iconst_m1
if_icmpeq L1
iload 3
ifle L1
aload 4
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultSearchPost
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultSearchPost
areturn
.limit locals 5
.limit stack 5
.end method

.method public sendPost(Lcom/nd/android/forumsdk/business/bean/priv/PostParams;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/posts_post"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 1
iconst_2
invokevirtual com/nd/android/forumsdk/business/bean/priv/PostParams/setPost_type(I)V
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 2
aconst_null
astore 1
L0:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 2
astore 1
L3:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
ldc com/nd/android/forumsdk/business/bean/result/PostInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/PostComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 5
.end method
