.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdPraiseSdk
.super com/android/u/weibo/weibo/business/comm/NdBaseSdk

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdBaseSdk/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPraiseList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_PRAISE_TWEET_LIST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 5
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 4
new org/json/JSONObject
dup
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
iload 4
sipush 200
if_icmpne L0
aload 5
ldc "topics"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/PraiseList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraiseList/<init>()V
areturn
L2:
new com/android/u/weibo/weibo/business/parser/PraiseListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/PraiseListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/PraiseListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
L0:
aload 1
iload 4
aload 5
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public getPraisorList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/get_praise_userlit Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 7
ldc "tid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 7
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/addIdMaxParam(Ljava/lang/StringBuilder;J)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 6
new org/json/JSONObject
dup
aload 7
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 8
iload 6
sipush 200
if_icmpne L0
aload 8
ldc "praisors"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/PraisorList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraisorList/<init>()V
astore 1
L3:
aload 1
aload 8
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/PraisorList/mTotal I
aload 1
areturn
L2:
new com/android/u/weibo/weibo/business/parser/PraisorListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/PraisorListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/PraisorListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 9
L4:
aload 7
astore 1
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
lload 2
putfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
goto L4
L0:
aload 1
iload 6
aload 8
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 10
.limit stack 5
.end method

.method public praiseTopic(Landroid/content/Context;J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/LIKE_WEIBO Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 5
ldc "tid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
aload 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 4
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 5
iload 4
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
aload 1
iload 4
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
iconst_0
ireturn
.limit locals 6
.limit stack 5
.end method

.method public unpraiseTopic(Landroid/content/Context;J)Z
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/LIKE_WEIBO Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 5
ldc "tid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
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
iconst_1
ireturn
L1:
aload 1
iload 4
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
iconst_0
ireturn
.limit locals 6
.limit stack 5
.end method
