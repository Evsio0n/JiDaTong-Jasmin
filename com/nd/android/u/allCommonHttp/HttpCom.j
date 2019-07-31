.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonHttp/HttpCom
.super java/lang/Object

.field protected static 'sid' Ljava/lang/String;

.field protected 'httpclient' Lcom/nd/android/u/allCommonHttp/HttpBaseClient;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
invokespecial com/nd/android/u/allCommonHttp/HttpCom/initHttpClient(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
invokespecial com/nd/android/u/allCommonHttp/HttpCom/initHttpClient(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private initHttpClient(Z)V
iload 1
ifeq L0
aload 0
new com/nd/android/u/allCommonHttp/HttpClientExt
dup
invokespecial com/nd/android/u/allCommonHttp/HttpClientExt/<init>()V
putfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
return
L0:
aload 0
new com/nd/android/u/allCommonHttp/HttpClient
dup
invokespecial com/nd/android/u/allCommonHttp/HttpClient/<init>()V
putfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
return
.limit locals 2
.limit stack 3
.end method

.method public delete(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpAuthException
.throws com/nd/android/u/allCommonHttp/HttpServerException
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "DELETE"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method public dopost(Ljava/lang/String;[B)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpAuthException
.throws com/nd/android/u/allCommonHttp/HttpServerException
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
aconst_null
ldc "POST"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpRequest(Ljava/lang/String;[BLorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected formatUrl(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/android/u/allCommonHttp/HttpCom/sid Ljava/lang/String;
ifnull L0
ldc ""
getstatic com/nd/android/u/allCommonHttp/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
ifnonnull L1
L0:
aload 1
areturn
L1:
aload 1
ldc "sid"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
getstatic com/nd/android/u/allCommonHttp/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
L2:
aload 1
areturn
L3:
aload 1
ldc "?"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/allCommonHttp/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L5:
aload 1
areturn
L4:
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/allCommonHttp/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L5
.limit locals 2
.limit stack 3
.end method

.method public get(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpAuthException
.throws com/nd/android/u/allCommonHttp/HttpServerException
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "GET"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpAuthException
.throws com/nd/android/u/allCommonHttp/HttpServerException
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "POST"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpAuthException
.throws com/nd/android/u/allCommonHttp/HttpServerException
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "PUT"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
.throws com/nd/android/u/allCommonHttp/HttpException
aload 0
getfield com/nd/android/u/allCommonHttp/HttpCom/httpclient Lcom/nd/android/u/allCommonHttp/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "DELETE"
invokevirtual com/nd/android/u/allCommonHttp/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
areturn
.limit locals 4
.limit stack 4
.end method
