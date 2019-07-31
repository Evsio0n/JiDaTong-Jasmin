.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/httptool/HttpComExt
.super com/nd/android/forumsdk/business/com/httptool/HttpCom

.field private static final 'TAG' Ljava/lang/String; = "HttpComExt"

.field private final 'AUTHSTATUSCODE' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpCom/<init>()V
aload 0
sipush 401
putfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/AUTHSTATUSCODE I
return
.limit locals 1
.limit stack 2
.end method

.method public delete(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 0
aload 1
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 0
aload 1
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public getAndReloginIfNeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getNewSid()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
aload 2
aload 4
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
L3:
aload 3
athrow
.limit locals 5
.limit stack 7
.end method

.method protected getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpException/getStatusCode()I
sipush 401
if_icmpne L4
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getNewSid()Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
ifnull L5
aload 1
ldc "sid="
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
aload 1
ldc "sid="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 1
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
iload 4
iconst_m1
if_icmpeq L1
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
ldc "sid="
invokevirtual java/lang/String/length()I
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iload 4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
ldc "sid="
invokevirtual java/lang/String/length()I
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 2
athrow
L4:
aload 2
athrow
L5:
aload 1
areturn
.limit locals 6
.limit stack 5
.end method

.method public patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "PATCH"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "PATCH"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 0
aload 1
aload 4
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 5
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 0
aload 1
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 6
.limit stack 7
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public postByMap(Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpComExt/httpclient Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 4
.end method
