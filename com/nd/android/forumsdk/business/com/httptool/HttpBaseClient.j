.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/httptool/HttpBaseClient
.super java/lang/Object
.inner class inner com/nd/android/forumsdk/business/com/httptool/HttpBaseClient$1

.field public static final 'AUTH_ERROR' I = 403


.field protected static final 'CONNECTION_TIMEOUT_MS' I = 20000


.field public static final 'ERROR_404' I = 404


.field public static final 'INTERFACE_NOT_IMPLEMENTS' I = 501


.field public static final 'IPNUT_DATA_ERROR' I = 400


.field public static final 'METHOND_NOT_FOUND' I = 405


.field public static final 'NOT_AUTHORIZED' I = 401


.field public static final 'NOT_RESULT' I = 204


.field public static final 'OK' I = 200


.field public static final 'REGISTER_OK' I = 201


.field public static final 'RESULT_OK' I = 204


.field public static final 'RETRIED_TIME' I = 0


.field public static final 'RETRIEVE_LIMIT' I = 20


.field protected static final 'SOCKET_TIMEOUT_MS' I = 60000


.field protected static final 'TAG' Ljava/lang/String; = "HttpBaseClient"

.field protected static final 'UTF8' Ljava/lang/String; = "UTF-8"

.field protected 'localcontext' Lorg/apache/http/protocol/BasicHttpContext;

.field protected 'mClient' Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected 'requestRetryHandler' Lorg/apache/http/client/HttpRequestRetryHandler;

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/forumsdk/business/com/httptool/HttpBaseClient$1
dup
aload 0
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpBaseClient$1/<init>(Lcom/nd/android/forumsdk/business/com/httptool/HttpBaseClient;)V
putfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/requestRetryHandler Lorg/apache/http/client/HttpRequestRetryHandler;
aload 0
iconst_1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/prepareHttpClient(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
.signature "(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lorg/apache/http/client/methods/HttpUriRequest;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
aload 1
aload 2
aconst_null
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/apache/http/entity/mime/MultipartEntity;)Lorg/apache/http/client/methods/HttpUriRequest;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 1
ldc "POST"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
new org/apache/http/client/methods/HttpPost
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/net/URI;)V
astore 1
aload 1
aload 3
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
aload 1
areturn
L0:
aload 1
ldc "DELETE"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
new org/apache/http/client/methods/HttpDelete
dup
aload 2
invokespecial org/apache/http/client/methods/HttpDelete/<init>(Ljava/net/URI;)V
areturn
L1:
aload 1
ldc "PUT"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new org/apache/http/client/methods/HttpPut
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPut/<init>(Ljava/net/URI;)V
areturn
L2:
new org/apache/http/client/methods/HttpGet
dup
aload 2
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/net/URI;)V
astore 1
ldc "HttpBaseClient"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createMethod:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getMethod()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
.signature "(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lorg/apache/http/client/methods/HttpUriRequest;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
areturn
.limit locals 6
.limit stack 5
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
.signature "(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lorg/apache/http/client/methods/HttpUriRequest;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L3 to L4 using L5
.catch java/io/UnsupportedEncodingException from L4 to L6 using L7
.catch java/io/IOException from L8 to L9 using L10
.catch java/io/IOException from L11 to L12 using L13
aload 1
ldc "POST"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L14
new org/apache/http/client/methods/HttpPost
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/net/URI;)V
astore 2
aload 3
ifnull L1
L0:
new org/apache/http/entity/StringEntity
dup
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
aload 2
aload 1
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L1:
aload 4
ifnull L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 4
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L15:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 1
new org/apache/http/message/BasicNameValuePair
dup
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L15
L2:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
new org/apache/http/client/entity/UrlEncodedFormEntity
dup
aload 1
ldc "UTF-8"
invokespecial org/apache/http/client/entity/UrlEncodedFormEntity/<init>(Ljava/util/List;Ljava/lang/String;)V
astore 1
L4:
aload 2
aload 1
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L6:
aload 2
areturn
L5:
astore 1
L16:
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L6
L14:
aload 1
ldc "DELETE"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L17
new org/apache/http/client/methods/HttpDelete
dup
aload 2
invokespecial org/apache/http/client/methods/HttpDelete/<init>(Ljava/net/URI;)V
areturn
L17:
aload 1
ldc "PUT"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
new org/apache/http/client/methods/HttpPut
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPut/<init>(Ljava/net/URI;)V
astore 1
aload 3
ifnull L9
L8:
aload 1
new org/apache/http/entity/StringEntity
dup
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpPut/setEntity(Lorg/apache/http/HttpEntity;)V
L9:
aload 1
areturn
L10:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L18:
aload 1
ldc "PATCH"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L19
new com/nd/android/forumsdk/business/com/httptool/HttpPatch
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpPatch/<init>(Ljava/net/URI;)V
astore 1
aload 3
ifnull L12
L11:
new org/apache/http/entity/StringEntity
dup
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 2
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
aload 1
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpPatch/setEntity(Lorg/apache/http/HttpEntity;)V
L12:
aload 1
areturn
L13:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L19:
new org/apache/http/client/methods/HttpGet
dup
aload 2
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/net/URI;)V
astore 1
ldc "HttpBaseClient"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createMethod:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getMethod()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
L7:
astore 1
goto L16
.limit locals 5
.limit stack 5
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;[B)Lorg/apache/http/client/methods/HttpUriRequest;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ldc "POST"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
new org/apache/http/client/methods/HttpPost
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/net/URI;)V
astore 1
aload 3
ifnull L1
L0:
aload 1
new org/apache/http/entity/ByteArrayEntity
dup
aload 3
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L1:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L3:
new org/apache/http/client/methods/HttpGet
dup
aload 2
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/net/URI;)V
areturn
.limit locals 4
.limit stack 4
.end method

.method protected createURI(Ljava/lang/String;)Ljava/net/URI;
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/net/URISyntaxException from L0 to L1 using L2
L0:
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "HttpBaseClient"
aload 1
invokevirtual java/net/URISyntaxException/getMessage()Ljava/lang/String;
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
ldc "Invalid URL."
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method protected handleResponseStatusCode(ILcom/nd/android/forumsdk/business/com/httptool/Response;)V
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
iload 1
lookupswitch
200 : L0
201 : L0
204 : L0
400 : L1
401 : L2
403 : L2
404 : L2
405 : L1
501 : L3
default : L4
L4:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
iload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;I)V
athrow
L1:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
iload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;I)V
athrow
L2:
new com/nd/android/forumsdk/business/com/httptool/HttpAuthException
dup
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
iload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpAuthException/<init>(Ljava/lang/String;I)V
athrow
L3:
new com/nd/android/forumsdk/business/com/httptool/HttpServerException
dup
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
iload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpServerException/<init>(Ljava/lang/String;I)V
athrow
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
aload 1
aconst_null
aload 2
aload 3
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 5
.end method

.method public httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 4
.limit stack 5
.end method

.method public httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
areturn
.limit locals 7
.limit stack 5
.end method

.method public httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/lang/RuntimeException from L0 to L1 using L5
.catch java/net/SocketTimeoutException from L6 to L7 using L2
.catch org/apache/http/client/ClientProtocolException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch java/lang/RuntimeException from L6 to L7 using L5
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createURI(Ljava/lang/String;)Ljava/net/URI;
astore 6
aconst_null
astore 1
aconst_null
astore 5
aload 0
aload 3
aload 6
aload 2
aload 4
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
astore 2
aload 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
aload 2
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/localcontext Lorg/apache/http/protocol/BasicHttpContext;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 2
L1:
aload 2
astore 1
L6:
new com/nd/android/forumsdk/business/com/httptool/Response
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/Response/<init>(Lorg/apache/http/HttpResponse;)V
astore 3
L7:
aload 3
astore 1
aload 2
astore 3
aload 1
astore 2
L8:
aload 3
ifnull L9
aload 0
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/handleResponseStatusCode(ILcom/nd/android/forumsdk/business/com/httptool/Response;)V
aload 2
areturn
L2:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/net/SocketTimeoutException/getMessage()Ljava/lang/String;
sipush 409
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;I)V
athrow
L3:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual org/apache/http/client/ClientProtocolException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L4:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L5:
astore 2
ldc "HttpBaseClient"
ldc " httpRequest throw runtimeException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
astore 2
aload 1
astore 3
goto L8
L9:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
ldc "response is null"
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public httpRequest(Ljava/lang/String;[BLorg/json/JSONObject;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/lang/RuntimeException from L0 to L1 using L5
.catch java/net/SocketTimeoutException from L6 to L7 using L2
.catch org/apache/http/client/ClientProtocolException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch java/lang/RuntimeException from L6 to L7 using L5
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createURI(Ljava/lang/String;)Ljava/net/URI;
astore 5
aconst_null
astore 1
aconst_null
astore 3
aload 0
aload 4
aload 5
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createMethod(Ljava/lang/String;Ljava/net/URI;[B)Lorg/apache/http/client/methods/HttpUriRequest;
astore 2
aload 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
aload 2
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/localcontext Lorg/apache/http/protocol/BasicHttpContext;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 2
L1:
aload 2
astore 1
L6:
new com/nd/android/forumsdk/business/com/httptool/Response
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/Response/<init>(Lorg/apache/http/HttpResponse;)V
astore 4
L7:
aload 4
astore 1
aload 2
astore 3
aload 1
astore 2
L8:
aload 3
ifnull L9
aload 0
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/handleResponseStatusCode(ILcom/nd/android/forumsdk/business/com/httptool/Response;)V
aload 2
areturn
L2:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/net/SocketTimeoutException/getMessage()Ljava/lang/String;
sipush 409
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;I)V
athrow
L3:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual org/apache/http/client/ClientProtocolException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L4:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L5:
astore 2
ldc "HttpBaseClient"
ldc " httpRequest throw runtimeException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
astore 2
aload 1
astore 3
goto L8
L9:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
ldc "response is null"
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.throws com/nd/android/forumsdk/business/com/httptool/HttpAuthException
.throws com/nd/android/forumsdk/business/com/httptool/HttpServerException
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
.catch java/io/UnsupportedEncodingException from L1 to L3 using L2
.catch java/io/UnsupportedEncodingException from L3 to L5 using L2
.catch java/net/SocketTimeoutException from L6 to L7 using L8
.catch org/apache/http/client/ClientProtocolException from L6 to L7 using L9
.catch java/io/IOException from L6 to L7 using L10
.catch java/lang/RuntimeException from L6 to L7 using L11
.catch java/net/SocketTimeoutException from L12 to L13 using L8
.catch org/apache/http/client/ClientProtocolException from L12 to L13 using L9
.catch java/io/IOException from L12 to L13 using L10
.catch java/lang/RuntimeException from L12 to L13 using L11
.catch java/io/UnsupportedEncodingException from L14 to L15 using L2
aload 2
ifnull L16
aload 2
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L17
L16:
aconst_null
areturn
L17:
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
astore 4
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
aload 4
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 5
L0:
aload 5
ldc "offset"
new org/apache/http/entity/mime/content/StringBody
dup
iconst_0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 5
ldc "filesize"
new org/apache/http/entity/mime/content/StringBody
dup
aload 2
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
imul
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 4
aload 2
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 4
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
ldc "tmp.jpg"
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 2
aload 5
ldc "md5"
new org/apache/http/entity/mime/content/StringBody
dup
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokestatic com/nd/android/forumsdk/business/com/httptool/MD5Arithmetic/getMD5OfBytes([B)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L1:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L3:
aload 5
ldc "photo"
aload 2
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L5:
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createURI(Ljava/lang/String;)Ljava/net/URI;
astore 2
aconst_null
astore 1
aconst_null
astore 4
aload 0
aload 3
aload 2
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/apache/http/entity/mime/MultipartEntity;)Lorg/apache/http/client/methods/HttpUriRequest;
astore 2
aload 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
L6:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
aload 2
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/localcontext Lorg/apache/http/protocol/BasicHttpContext;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 2
L7:
aload 2
astore 1
L12:
new com/nd/android/forumsdk/business/com/httptool/Response
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/Response/<init>(Lorg/apache/http/HttpResponse;)V
astore 3
L13:
aload 3
astore 1
aload 2
astore 3
aload 1
astore 2
L18:
aload 3
ifnull L19
aload 0
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/handleResponseStatusCode(ILcom/nd/android/forumsdk/business/com/httptool/Response;)V
aload 2
areturn
L4:
astore 4
L14:
aload 4
invokevirtual java/io/IOException/printStackTrace()V
L15:
goto L3
L2:
astore 2
aload 2
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L5
L8:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/net/SocketTimeoutException/getMessage()Ljava/lang/String;
sipush 409
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;I)V
athrow
L9:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual org/apache/http/client/ClientProtocolException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L10:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L11:
astore 2
ldc "HttpBaseClient"
ldc " httpRequest throw runtimeException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
astore 2
aload 1
astore 3
goto L18
L19:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
ldc "response is null"
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 6
.end method

.method protected prepareHttpClient(Z)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic java/security/KeyStore/getDefaultType()Ljava/lang/String;
invokestatic java/security/KeyStore/getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
astore 2
aload 2
aconst_null
aconst_null
invokevirtual java/security/KeyStore/load(Ljava/io/InputStream;[C)V
new com/nd/android/forumsdk/business/com/httptool/SSLSocketFactoryEx
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
astore 2
aload 2
getstatic org/apache/http/conn/ssl/SSLSocketFactory/ALLOW_ALL_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 3
aload 3
bipush 100
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
aload 3
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 3
ldc "UTF-8"
invokestatic org/apache/http/params/HttpProtocolParams/setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
aload 3
iconst_1
invokestatic org/apache/http/params/HttpProtocolParams/setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
aload 3
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 3
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 4
aload 4
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 4
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
aload 2
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 0
new org/apache/http/impl/client/DefaultHttpClient
dup
new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
dup
aload 3
aload 4
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 3
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
putfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
putfield com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
return
.limit locals 5
.limit stack 7
.end method

.method public removeProxy()V
return
.limit locals 1
.limit stack 0
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;)V
return
.limit locals 4
.limit stack 0
.end method

.method protected setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getParams()Lorg/apache/http/params/HttpParams; 0
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getParams()Lorg/apache/http/params/HttpParams; 0
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
ldc "Accept-Encoding"
ldc "gzip, deflate"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "SID"
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getSid()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "TAGID"
ldc "1"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CUID"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLIENTTYPE"
ldc "android"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "APPID"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getAppId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLOUDID"
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getCloudID()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "APIKEY"
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getForumApiKey()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
return
.limit locals 2
.limit stack 7
.end method
