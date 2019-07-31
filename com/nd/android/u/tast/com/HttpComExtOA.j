.bytecode 50.0
.class public synchronized com/nd/android/u/tast/com/HttpComExtOA
.super com/common/android/utils/http/HttpCom

.field private static final 'TAG' Ljava/lang/String; = "HttpComExt"

.field private final 'AUTHSTATUSCODE' I

.method public <init>()V
aload 0
invokespecial com/common/android/utils/http/HttpCom/<init>()V
aload 0
sipush 401
putfield com/nd/android/u/tast/com/HttpComExtOA/AUTHSTATUSCODE I
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 2
aload 2
ifnull L4
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
athrow
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
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
areturn
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 2
aload 2
ifnull L4
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
athrow
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 3
aload 3
ifnull L4
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 3
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
athrow
.limit locals 4
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 4
ifnull L4
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 4
athrow
.limit locals 5
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 5
aload 5
ifnull L4
ldc ""
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 5
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 5
athrow
.limit locals 6
.limit stack 7
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
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
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 3
aload 3
ifnull L4
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 3
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
athrow
.limit locals 4
.limit stack 7
.end method

.method public postByMap(Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 3
aload 3
ifnull L4
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 3
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
athrow
.limit locals 4
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 3
aload 3
ifnull L4
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 3
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
athrow
.limit locals 4
.limit stack 7
.end method

.method public setHttpHeader()V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public setSid(Ljava/lang/String;)V
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 3
aload 3
ifnull L4
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 3
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/HttpComExtOA/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
L4:
new com/common/android/utils/http/HttpException
dup
ldc "relogin error"
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
athrow
.limit locals 4
.limit stack 4
.end method
