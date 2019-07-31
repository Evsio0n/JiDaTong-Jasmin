.bytecode 50.0
.class public synchronized com/nd/android/u/weibo/buss/sdk/XYUserSdk
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getRecommends(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/GET_RECOMMENDS Ljava/lang/String;
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
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/weibo/business/parser/WbUserInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/<init>()V
aload 1
ldc "users"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
areturn
L0:
iload 2
sipush 400
if_icmpne L1
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 3
.limit stack 6
.end method

.method public getUserGuideVer(Landroid/content/Context;)Ljava/lang/String;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/GET_USER_GUIDEVER Ljava/lang/String;
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
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "guide_ver"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
iload 2
sipush 400
if_icmpne L1
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 3
.limit stack 6
.end method

.method public setUserGuideVer(Landroid/content/Context;Ljava/lang/String;)Z
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/GET_USER_GUIDEVER Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "guide_ver"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 3
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 3
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
iload 3
sipush 400
if_icmpne L1
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
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 3
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 5
.limit stack 6
.end method
