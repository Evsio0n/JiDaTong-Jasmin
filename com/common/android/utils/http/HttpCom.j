.bytecode 50.0
.class public synchronized com/common/android/utils/http/HttpCom
.super java/lang/Object

.field protected static 'sid' Ljava/lang/String;

.field protected 'httpclient' Lcom/common/android/utils/http/HttpBaseClient;

.field protected 'mIsNewPro' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/http/HttpCom/mIsNewPro Z
aload 0
iconst_0
invokevirtual com/common/android/utils/http/HttpCom/initHttpClient(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/http/HttpCom/mIsNewPro Z
aload 0
iconst_0
iload 1
invokespecial com/common/android/utils/http/HttpCom/initHttpClient(ZI)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/http/HttpCom/mIsNewPro Z
aload 0
iload 1
putfield com/common/android/utils/http/HttpCom/mIsNewPro Z
aload 0
iload 1
invokevirtual com/common/android/utils/http/HttpCom/initHttpClient(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private initHttpClient(ZI)V
iload 1
ifeq L0
aload 0
new com/common/android/utils/http/HttpClientExt
dup
iload 2
invokespecial com/common/android/utils/http/HttpClientExt/<init>(I)V
putfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
return
L0:
aload 0
new com/common/android/utils/http/HttpClient
dup
iload 2
invokespecial com/common/android/utils/http/HttpClient/<init>(I)V
putfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
return
.limit locals 3
.limit stack 4
.end method

.method public delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "DELETE"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method public dopost(Ljava/lang/String;[B)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
aconst_null
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;[BLorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected formatUrl(Ljava/lang/String;)Ljava/lang/String;
getstatic com/common/android/utils/http/HttpCom/sid Ljava/lang/String;
ifnull L0
ldc ""
getstatic com/common/android/utils/http/HttpCom/sid Ljava/lang/String;
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
getstatic com/common/android/utils/http/HttpCom/sid Ljava/lang/String;
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
getstatic com/common/android/utils/http/HttpCom/sid Ljava/lang/String;
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
getstatic com/common/android/utils/http/HttpCom/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L5
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aconst_null
ldc "GET"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected initHttpClient(Z)V
iload 1
ifeq L0
aload 0
new com/common/android/utils/http/HttpClientExt
dup
invokespecial com/common/android/utils/http/HttpClientExt/<init>()V
putfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
return
L0:
aload 0
new com/common/android/utils/http/HttpClient
dup
invokespecial com/common/android/utils/http/HttpClient/<init>()V
putfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
return
.limit locals 2
.limit stack 3
.end method

.method public patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "PATCH"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "PUT"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 4
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/common/android/utils/http/HttpCom/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpCom/formatUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "DELETE"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 4
.end method
