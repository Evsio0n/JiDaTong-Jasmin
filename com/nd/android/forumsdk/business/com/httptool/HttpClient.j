.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/httptool/HttpClient
.super com/nd/android/forumsdk/business/com/httptool/HttpBaseClient

.field private static final 'TAG' Ljava/lang/String; = "HttpClient"

.method public <init>(I)V
aload 0
iload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpBaseClient/<init>(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private createMultipartEntity(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lorg/apache/http/entity/mime/MultipartEntity;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lorg/apache/http/entity/mime/MultipartEntity;"
.throws java/io/UnsupportedEncodingException
new org/apache/http/entity/mime/MultipartEntity
dup
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>()V
astore 3
aload 3
aload 1
new org/apache/http/entity/mime/content/FileBody
dup
aload 2
invokespecial org/apache/http/entity/mime/content/FileBody/<init>(Ljava/io/File;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
.signature "(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lorg/apache/http/client/methods/HttpUriRequest;"
.throws com/nd/android/forumsdk/business/com/httptool/HttpException
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/io/IOException from L6 to L7 using L8
.catch java/io/IOException from L9 to L10 using L11
aload 1
ldc "POST"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L12
new org/apache/http/client/methods/HttpPost
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/net/URI;)V
astore 1
aload 4
ifnull L1
L0:
aload 1
aload 0
ldc "upfile"
aload 4
aload 5
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpClient/createMultipartEntity(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lorg/apache/http/entity/mime/MultipartEntity;
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L1:
aload 3
ifnull L4
L3:
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
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L4:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L1
L5:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L12:
aload 1
ldc "DELETE"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L13
new org/apache/http/client/methods/HttpDelete
dup
aload 2
invokespecial org/apache/http/client/methods/HttpDelete/<init>(Ljava/net/URI;)V
areturn
L13:
aload 1
ldc "PUT"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L14
new org/apache/http/client/methods/HttpPut
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPut/<init>(Ljava/net/URI;)V
astore 1
aload 3
ifnull L7
L6:
aload 1
new org/apache/http/entity/StringEntity
dup
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpPut/setEntity(Lorg/apache/http/HttpEntity;)V
L7:
aload 1
areturn
L8:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L14:
aload 1
ldc "PATCH"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
new com/nd/android/forumsdk/business/com/httptool/HttpPatch
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpPatch/<init>(Ljava/net/URI;)V
astore 1
aload 3
ifnull L10
L9:
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
L10:
aload 1
areturn
L11:
astore 1
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L15:
new org/apache/http/client/methods/HttpGet
dup
aload 2
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/net/URI;)V
areturn
.limit locals 6
.limit stack 5
.end method

.method public httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
.signature "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;Lorg/apache/http/client/CookieStore;)Lcom/nd/android/forumsdk/business/com/httptool/Response;"
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
.catch all from L8 to L9 using L10
.catch all from L11 to L12 using L10
.catch java/net/SocketTimeoutException from L13 to L14 using L2
.catch org/apache/http/client/ClientProtocolException from L13 to L14 using L3
.catch java/io/IOException from L13 to L14 using L4
.catch java/lang/RuntimeException from L13 to L14 using L5
.catch all from L15 to L16 using L10
.catch java/net/SocketTimeoutException from L16 to L2 using L2
.catch org/apache/http/client/ClientProtocolException from L16 to L2 using L3
.catch java/io/IOException from L16 to L2 using L4
.catch java/lang/RuntimeException from L16 to L2 using L5
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpClient/createURI(Ljava/lang/String;)Ljava/net/URI;
astore 1
aconst_null
astore 9
aconst_null
astore 8
aconst_null
astore 7
aload 0
aload 3
aload 1
aload 2
aload 4
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpClient/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
astore 2
aload 4
ifnull L17
aload 6
ifnull L17
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
aload 6
invokevirtual org/apache/http/impl/client/DefaultHttpClient/setCookieStore(Lorg/apache/http/client/CookieStore;)V
L17:
aload 0
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpClient/setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
aload 9
astore 1
L0:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
astore 3
L1:
aload 9
astore 1
L6:
aload 3
monitorenter
L7:
aload 8
astore 1
L8:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
aload 2
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/localcontext Lorg/apache/http/protocol/BasicHttpContext;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 2
L9:
aload 2
astore 1
L11:
aload 3
monitorexit
L12:
aload 2
astore 1
L13:
new com/nd/android/forumsdk/business/com/httptool/Response
dup
aload 2
invokespecial com/nd/android/forumsdk/business/com/httptool/Response/<init>(Lorg/apache/http/HttpResponse;)V
astore 3
L14:
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
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpClient/handleResponseStatusCode(ILcom/nd/android/forumsdk/business/com/httptool/Response;)V
aload 6
ifnull L20
aload 6
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getCookieStore()Lorg/apache/http/client/CookieStore;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L21
L20:
aload 0
getfield com/nd/android/forumsdk/business/com/httptool/HttpClient/mClient Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getCookieStore()Lorg/apache/http/client/CookieStore;
pop
L21:
aload 2
areturn
L10:
astore 2
L15:
aload 3
monitorexit
L16:
aload 2
athrow
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
L19:
new com/nd/android/forumsdk/business/com/httptool/HttpException
dup
ldc "response is null"
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpException/<init>(Ljava/lang/String;)V
athrow
L5:
astore 2
aload 7
astore 2
aload 1
astore 3
goto L18
.limit locals 10
.limit stack 6
.end method
