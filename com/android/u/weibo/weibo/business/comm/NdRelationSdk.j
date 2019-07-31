.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdRelationSdk
.super com/android/u/weibo/weibo/business/comm/NdBaseSdk

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdBaseSdk/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addIdol(Landroid/content/Context;J)Lcom/product/android/commonInterface/weibo/IdolList;
.throws java/lang/IllegalStateException
.throws java/io/UnsupportedEncodingException
.throws java/io/IOException
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aconst_null
astore 5
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_IDOL Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 6
aload 6
ldc "/idol_uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 6
iload 4
sipush 200
if_icmpne L0
aload 5
astore 1
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new org/json/JSONObject
dup
aload 6
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 1
ldc "idols"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
L1:
aload 1
areturn
L0:
aload 5
astore 1
iload 4
sipush 404
if_icmpeq L1
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
new org/json/JSONObject
dup
aload 6
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 7
.limit stack 6
.end method

.method public addIdols(Landroid/content/Context;Ljava/util/List;)Lcom/product/android/commonInterface/weibo/IdolList;
.signature "(Landroid/content/Context;Ljava/util/List<Ljava/lang/Long;>;)Lcom/product/android/commonInterface/weibo/IdolList;"
.throws java/lang/IllegalStateException
.throws java/io/UnsupportedEncodingException
.throws java/io/IOException
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_IDOL_BATCH Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iconst_0
istore 3
aload 2
invokeinterface java/util/List/size()I 0
istore 4
L2:
iload 3
iload 4
if_icmpge L3
aload 6
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 5
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 3
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 3
sipush 200
if_icmpne L4
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 1
ldc "idols"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L4:
iload 3
sipush 404
if_icmpeq L0
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 3
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 7
.limit stack 6
.end method

.method public delIdol(Landroid/content/Context;J)Lcom/product/android/commonInterface/weibo/IdolList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/DEL_IDOL Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
aload 5
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoDelete()I
istore 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 4
sipush 200
if_icmpne L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 1
ldc "idols"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L1:
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
areturn
L0:
iload 4
sipush 404
if_icmpne L2
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
areturn
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 6
.end method

.method public getFans(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
aload 1
lload 2
new com/product/android/business/bean/PagingParams
dup
lload 6
lload 4
iload 8
iload 9
invokespecial com/product/android/business/bean/PagingParams/<init>(JJII)V
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JLcom/product/android/business/bean/PagingParams;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
.limit locals 10
.limit stack 12
.end method

.method public getFans(Landroid/content/Context;JLcom/product/android/business/bean/PagingParams;)Lcom/product/android/commonInterface/weibo/IdolList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_FANS Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 6
aload 6
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
aload 6
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getIdMax()J
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
aload 0
aload 6
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getIdMin()J
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMinParam(Ljava/lang/StringBuilder;J)V
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getPage()I
ifle L0
aload 0
aload 6
ldc "page"
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getPage()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L0:
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getPageSize()I
ifle L1
aload 0
aload 6
ldc "page_size"
aload 4
invokevirtual com/product/android/business/bean/PagingParams/getPageSize()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L1:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 5
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
iload 5
sipush 200
if_icmpne L2
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 4
ldc "fans"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L2:
iload 5
sipush 404
if_icmpne L3
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 5
aload 4
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L3:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 5
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_IDOLS Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 10
aload 10
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
aload 10
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
aload 0
aload 10
lload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMinParam(Ljava/lang/StringBuilder;J)V
iload 8
ifle L0
aload 0
aload 10
ldc "page"
iload 8
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L0:
iload 9
ifle L1
aload 0
aload 10
ldc "page_size"
iload 9
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L1:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 8
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 10
iload 8
sipush 200
if_icmpne L2
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 10
ldc "idols"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L2:
iload 8
sipush 404
if_icmpne L3
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 8
aload 10
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L3:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 8
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 11
.limit stack 5
.end method

.method public getIdolsChange(Landroid/content/Context;JJJJJJ)Lcom/product/android/commonInterface/weibo/IdolList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_IDOLS_CHANGE Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 15
aload 0
aload 15
ldc "uid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 15
ldc "ts"
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 15
lload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
aload 0
aload 15
lload 8
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMinParam(Ljava/lang/StringBuilder;J)V
lload 10
lconst_0
lcmp
ifle L0
aload 0
aload 15
ldc "page"
lload 10
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L0:
lload 12
lconst_0
lcmp
ifle L1
aload 0
aload 15
ldc "page_size"
lload 12
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L1:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 15
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 14
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 14
sipush 200
if_icmpne L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "idols"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
new com/product/android/commonInterface/weibo/parser/IdolListParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolListParser/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 14
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L3:
aconst_null
areturn
.limit locals 16
.limit stack 5
.end method

.method public getRecommend(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_JIMEIRECOMMEND Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 2
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 2
sipush 200
if_icmpne L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/weibo/business/parser/RecommendListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RecommendListParser/<init>()V
aload 1
ldc "users"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/weibo/business/parser/RecommendListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
areturn
L0:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
aconst_null
areturn
.limit locals 3
.limit stack 6
.end method

.method public getRecommend(Landroid/content/Context;IIJJ)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;IIJJ)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RECOMMEND Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 8
aload 0
aload 8
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
aload 0
aload 8
lload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdMinParam(Ljava/lang/StringBuilder;J)V
iload 2
ifle L0
aload 0
aload 8
ldc "page"
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L0:
iload 3
ifle L1
aload 0
aload 8
ldc "page_size"
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
L1:
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 2
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 2
sipush 200
if_icmpne L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "users"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
aload 9
ifnonnull L4
aconst_null
astore 1
L5:
aload 1
areturn
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
iconst_0
istore 2
aload 9
invokevirtual org/json/JSONArray/length()I
istore 3
L6:
aload 8
astore 1
iload 2
iload 3
if_icmpge L5
new com/product/android/commonInterface/weibo/CommonFriendInfo
dup
invokespecial com/product/android/commonInterface/weibo/CommonFriendInfo/<init>()V
astore 1
aload 9
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 10
aload 10
ifnull L7
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 10
ldc "idols"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
astore 10
aload 1
aload 10
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
aload 1
aload 10
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/nickName Ljava/lang/String;
aload 8
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L6
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L3:
aconst_null
areturn
.limit locals 11
.limit stack 4
.end method

.method public getRelationWithOther(Landroid/content/Context;J)I
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RELATION_OTHER Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
aload 5
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
iload 4
sipush 200
if_icmpne L0
aload 5
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
ireturn
L0:
iload 4
sipush 404
if_icmpne L1
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
aload 5
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method
