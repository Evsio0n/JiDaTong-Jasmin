.bytecode 50.0
.class public synchronized com/common/android/utils/http/HttpComHandlerJsonCode
.super com/common/android/utils/http/HttpComExt

.method public <init>(Z)V
aload 0
iload 1
invokespecial com/common/android/utils/http/HttpComExt/<init>(Z)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L4 to L6 using L7
aconst_null
astore 4
L0:
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 2
L1:
aload 2
astore 4
aconst_null
astore 2
L8:
aconst_null
astore 6
aconst_null
astore 5
aload 6
astore 3
aload 4
ifnull L9
aload 6
astore 3
aload 2
ifnonnull L9
aload 4
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 4
L3:
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
L4:
aload 3
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 401
if_icmpne L10
new com/common/android/utils/http/HttpException
dup
aload 4
sipush 401
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
astore 4
L6:
aload 4
astore 2
L11:
aload 2
ifnull L12
aload 0
aload 1
aload 2
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L12:
aload 3
areturn
L2:
astore 2
goto L8
L5:
astore 4
aload 5
astore 3
L13:
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
L9:
goto L11
L7:
astore 4
goto L13
L10:
goto L11
.limit locals 7
.limit stack 7
.end method

.method public postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L4 to L6 using L7
aconst_null
astore 5
L0:
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
astore 5
aconst_null
astore 3
L8:
aconst_null
astore 7
aconst_null
astore 6
aload 7
astore 4
aload 5
ifnull L9
aload 7
astore 4
aload 3
ifnonnull L9
aload 5
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 5
L3:
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
L4:
aload 4
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 401
if_icmpne L10
new com/common/android/utils/http/HttpException
dup
aload 5
sipush 401
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
astore 5
L6:
aload 5
astore 3
L11:
aload 3
ifnull L12
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
L12:
aload 4
areturn
L2:
astore 3
goto L8
L5:
astore 5
aload 6
astore 4
L13:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L9:
goto L11
L7:
astore 5
goto L13
L10:
goto L11
.limit locals 8
.limit stack 7
.end method

.method public postRetMap(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
.signature "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lorg/json/JSONObject;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L4 to L6 using L7
aconst_null
astore 5
L0:
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
astore 5
aconst_null
astore 3
L8:
aconst_null
astore 7
aconst_null
astore 6
aload 7
astore 4
aload 5
ifnull L9
aload 7
astore 4
aload 3
ifnonnull L9
aload 5
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 5
L3:
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
L4:
aload 4
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 401
if_icmpne L10
new com/common/android/utils/http/HttpException
dup
aload 5
sipush 401
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
astore 5
L6:
aload 5
astore 3
L11:
aload 3
ifnull L12
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComHandlerJsonCode/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
L12:
aload 4
areturn
L2:
astore 3
goto L8
L5:
astore 5
aload 6
astore 4
L13:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L9:
goto L11
L7:
astore 5
goto L13
L10:
goto L11
.limit locals 8
.limit stack 4
.end method
