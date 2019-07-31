.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/httptool/HttpCom
.super java/lang/Object

.field protected static 'sid' Ljava/lang/String;

.field protected 'httpclient' Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/forumsdk/business/com/httptool/HttpClient
dup
iconst_1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpClient/<init>(I)V
putfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
return
.limit locals 1
.limit stack 4
.end method

.method public delete(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "DELETE"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method public dopost(Ljava/lang/String;[B)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
aconst_null
ldc "POST"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;[BLorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected formatUrl(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/com/httptool/HttpCom/sid Ljava/lang/String;
ifnull L0
ldc ""
getstatic com/nd/android/forumsdk/business/com/httptool/HttpCom/sid Ljava/lang/String;
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
getstatic com/nd/android/forumsdk/business/com/httptool/HttpCom/sid Ljava/lang/String;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/forumsdk/business/com/httptool/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L5:
aload 1
areturn
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/forumsdk/business/com/httptool/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L5
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "GET"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method public patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "PATCH"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "POST"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "PUT"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpCom/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "DELETE"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 4
.end method
