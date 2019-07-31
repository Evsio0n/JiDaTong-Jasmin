.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapSecretLoveSupportCom
.super com/nd/android/u/contact/com/base/NewOapSupportCom

.field private static final 'L_ADD_LOVER' Ljava/lang/String; = "v2/api/secretlove/addlover"

.field private static final 'L_DEL_MYLOVE' Ljava/lang/String; = "v2/api/secretlove/dellover"

.field private static final 'L_LOVEME_INFO' Ljava/lang/String; = "v2/api/secretlove/lovemeinfo"

.field private static final 'L_LOVE_RANK' Ljava/lang/String; = "v2/api/secretlove/rank"

.field private static final 'L_LOVE_RANK_AD' Ljava/lang/String; = "v2/api/secretlove/rankad"

.field private static final 'L_MYLOVE_INFO' Ljava/lang/String; = "v2/api/secretlove/myloverinfo"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/NewOapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addMyLove(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/addlover"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "loveruid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public final addSecretLove(J)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/addlover"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "loveruid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final delMyLove(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/dellover"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "loveruid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public final delSecretLove(J)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/dellover"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "loveruid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final getLoveMeInfo()Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/lovemeinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 1
aconst_null
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getLoveRank(IJIIII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L10 to L11 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/rank"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
L0:
aload 9
ldc "history"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 9
ldc "gender"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
lload 2
lconst_0
lcmp
ifeq L4
L3:
aload 9
ldc "deptid"
lload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L4:
iload 5
ifeq L6
L5:
aload 9
ldc "count"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
iload 6
ifeq L8
L7:
aload 9
ldc "rank_min"
iload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L8:
iload 7
ifeq L10
L9:
aload 9
ldc "rank_max"
iload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L10:
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 8
aload 9
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 8
L11:
aload 8
areturn
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 10
.limit stack 4
.end method

.method public final getLoveRankAd()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/rankad"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 1
aconst_null
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getMyLoveInfo()Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/api/secretlove/myloverinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 1
aconst_null
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method
