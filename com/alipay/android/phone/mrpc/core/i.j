.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/i
.super java/lang/Object
.implements org/apache/http/client/HttpClient
.inner class private final a inner com/alipay/android/phone/mrpc/core/i$a outer com/alipay/android/phone/mrpc/core/i
.inner class private static final b inner com/alipay/android/phone/mrpc/core/i$b outer com/alipay/android/phone/mrpc/core/i

.field public static 'a' J

.field private static 'b' [Ljava/lang/String;

.field private static final 'c' Lorg/apache/http/HttpRequestInterceptor;

.field private final 'd' Lorg/apache/http/client/HttpClient;

.field private 'e' Ljava/lang/RuntimeException;

.field private volatile 'f' Lcom/alipay/android/phone/mrpc/core/i$b;

.method static <clinit>()V
ldc2_w 160L
putstatic com/alipay/android/phone/mrpc/core/i/a J
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "text/"
aastore
dup
iconst_1
ldc "application/xml"
aastore
dup
iconst_2
ldc "application/json"
aastore
putstatic com/alipay/android/phone/mrpc/core/i/b [Ljava/lang/String;
new com/alipay/android/phone/mrpc/core/j
dup
invokespecial com/alipay/android/phone/mrpc/core/j/<init>()V
putstatic com/alipay/android/phone/mrpc/core/i/c Lorg/apache/http/HttpRequestInterceptor;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/IllegalStateException
dup
ldc "AndroidHttpClient created and never closed"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
putfield com/alipay/android/phone/mrpc/core/i/e Ljava/lang/RuntimeException;
aload 0
new com/alipay/android/phone/mrpc/core/k
dup
aload 0
aload 1
aload 2
invokespecial com/alipay/android/phone/mrpc/core/k/<init>(Lcom/alipay/android/phone/mrpc/core/i;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
putfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
return
.limit locals 3
.limit stack 6
.end method

.method static synthetic a(Lcom/alipay/android/phone/mrpc/core/i;)Lcom/alipay/android/phone/mrpc/core/i$b;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/f Lcom/alipay/android/phone/mrpc/core/i$b;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/i;
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 1
aload 1
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 1
iconst_0
invokestatic org/apache/http/params/HttpProtocolParams/setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
aload 1
iconst_0
invokestatic org/apache/http/params/HttpConnectionParams/setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
aload 1
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
sipush 30000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
sipush 8192
invokestatic org/apache/http/params/HttpConnectionParams/setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
aload 1
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
aload 1
iconst_0
invokestatic org/apache/http/client/params/HttpClientParams/setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V
aload 1
aload 0
invokestatic org/apache/http/params/HttpProtocolParams/setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 0
aload 0
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 0
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
sipush 30000
aconst_null
invokestatic android/net/SSLCertificateSocketFactory/getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
dup
aload 1
aload 0
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
astore 0
aload 1
ldc2_w 60000L
invokestatic org/apache/http/conn/params/ConnManagerParams/setTimeout(Lorg/apache/http/params/HttpParams;J)V
aload 1
new org/apache/http/conn/params/ConnPerRouteBean
dup
bipush 10
invokespecial org/apache/http/conn/params/ConnPerRouteBean/<init>(I)V
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
aload 1
bipush 50
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
ldc "networkaddress.cache.ttl"
ldc "-1"
invokestatic java/security/Security/setProperty(Ljava/lang/String;Ljava/lang/String;)V
getstatic org/apache/http/conn/ssl/SSLSocketFactory/STRICT_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokestatic javax/net/ssl/HttpsURLConnection/setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
new com/alipay/android/phone/mrpc/core/i
dup
aload 0
aload 1
invokespecial com/alipay/android/phone/mrpc/core/i/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
areturn
.limit locals 2
.limit stack 6
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
aload 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 1
aload 1
ifnonnull L0
L1:
aload 1
areturn
L0:
aload 0
invokeinterface org/apache/http/HttpEntity/getContentEncoding()Lorg/apache/http/Header; 0
astore 0
aload 0
ifnull L1
aload 0
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
astore 0
aload 0
ifnull L1
aload 0
ldc "gzip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
new java/util/zip/GZIPInputStream
dup
aload 1
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 0
L3:
aload 0
areturn
L2:
aload 1
astore 0
goto L3
.limit locals 2
.limit stack 3
.end method

.method static synthetic a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "curl "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokeinterface org/apache/http/client/methods/HttpUriRequest/getAllHeaders()[Lorg/apache/http/Header; 0
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 5
aload 5
invokeinterface org/apache/http/Header/getName()Ljava/lang/String; 0
ldc "Authorization"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 5
invokeinterface org/apache/http/Header/getName()Ljava/lang/String; 0
ldc "Cookie"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 4
ldc "--header \""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 5
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "\" "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
invokeinterface org/apache/http/client/methods/HttpUriRequest/getURI()Ljava/net/URI; 0
astore 3
aload 0
instanceof org/apache/http/impl/client/RequestWrapper
ifeq L3
aload 0
checkcast org/apache/http/impl/client/RequestWrapper
invokevirtual org/apache/http/impl/client/RequestWrapper/getOriginal()Lorg/apache/http/HttpRequest;
astore 5
aload 5
instanceof org/apache/http/client/methods/HttpUriRequest
ifeq L3
aload 5
checkcast org/apache/http/client/methods/HttpUriRequest
invokeinterface org/apache/http/client/methods/HttpUriRequest/getURI()Ljava/net/URI; 0
astore 3
L4:
aload 4
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
instanceof org/apache/http/HttpEntityEnclosingRequest
ifeq L5
aload 0
checkcast org/apache/http/HttpEntityEnclosingRequest
invokeinterface org/apache/http/HttpEntityEnclosingRequest/getEntity()Lorg/apache/http/HttpEntity; 0
astore 3
aload 3
ifnull L5
aload 3
invokeinterface org/apache/http/HttpEntity/isRepeatable()Z 0
ifeq L5
aload 3
invokeinterface org/apache/http/HttpEntity/getContentLength()J 0
ldc2_w 1024L
lcmp
ifge L6
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 5
aload 3
aload 5
invokeinterface org/apache/http/HttpEntity/writeTo(Ljava/io/OutputStream;)V 1
aload 0
invokestatic com/alipay/android/phone/mrpc/core/i/b(Lorg/apache/http/client/methods/HttpUriRequest;)Z
ifeq L7
aload 5
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
iconst_2
invokestatic android/util/Base64/encodeToString([BI)Ljava/lang/String;
astore 0
aload 4
iconst_0
new java/lang/StringBuilder
dup
ldc "echo '"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' | base64 -d > /tmp/$$.bin; "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc " --data-binary @/tmp/$$.bin"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L7:
aload 5
invokevirtual java/io/ByteArrayOutputStream/toString()Ljava/lang/String;
astore 0
aload 4
ldc " --data-ascii \""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L6:
aload 4
ldc " [TOO MUCH DATA TO INCLUDE]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L3:
goto L4
.limit locals 6
.limit stack 5
.end method

.method static synthetic a()Lorg/apache/http/HttpRequestInterceptor;
getstatic com/alipay/android/phone/mrpc/core/i/c Lorg/apache/http/HttpRequestInterceptor;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static a([B)Lorg/apache/http/entity/AbstractHttpEntity;
aload 0
arraylength
i2l
getstatic com/alipay/android/phone/mrpc/core/i/a J
lcmp
ifge L0
new org/apache/http/entity/ByteArrayEntity
dup
aload 0
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
areturn
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
new java/util/zip/GZIPOutputStream
dup
aload 1
invokespecial java/util/zip/GZIPOutputStream/<init>(Ljava/io/OutputStream;)V
astore 2
aload 2
aload 0
invokevirtual java/io/OutputStream/write([B)V
aload 2
invokevirtual java/io/OutputStream/close()V
new org/apache/http/entity/ByteArrayEntity
dup
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
astore 1
aload 1
ldc "gzip"
invokevirtual org/apache/http/entity/AbstractHttpEntity/setContentEncoding(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
ldc "gzip size:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
arraylength
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "->"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual org/apache/http/entity/AbstractHttpEntity/getContentLength()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public static a(Lorg/apache/http/HttpRequest;)V
aload 0
ldc "Accept-Encoding"
ldc "gzip"
invokeinterface org/apache/http/HttpRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
return
.limit locals 1
.limit stack 3
.end method

.method public static b(Ljava/lang/String;)J
aload 0
invokestatic com/alipay/android/phone/mrpc/core/r/a(Ljava/lang/String;)J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public static b(Lorg/apache/http/HttpRequest;)V
aload 0
ldc "Connection"
ldc "Keep-Alive"
invokeinterface org/apache/http/HttpRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
return
.limit locals 1
.limit stack 3
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;)Z
aload 0
ldc "content-encoding"
invokeinterface org/apache/http/client/methods/HttpUriRequest/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 5
aload 5
ifnull L0
aload 5
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
ldc "gzip"
aload 5
iload 1
aaload
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
L3:
iconst_1
ireturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 0
ldc "content-type"
invokeinterface org/apache/http/client/methods/HttpUriRequest/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 0
aload 0
ifnull L3
aload 0
arraylength
istore 3
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L3
aload 0
iload 1
aaload
astore 5
getstatic com/alipay/android/phone/mrpc/core/i/b [Ljava/lang/String;
astore 6
aload 6
arraylength
istore 4
iconst_0
istore 2
L5:
iload 2
iload 4
if_icmpge L6
aload 6
iload 2
aaload
astore 7
aload 5
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
aload 7
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L7
iconst_0
ireturn
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L6:
iload 1
iconst_1
iadd
istore 1
goto L4
.limit locals 8
.limit stack 3
.end method

.method public final a(Lorg/apache/http/client/HttpRequestRetryHandler;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
checkcast org/apache/http/impl/client/DefaultHttpClient
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;)TT;"
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
aload 3
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;Lorg/apache/http/protocol/HttpContext;)TT;"
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
aload 3
aload 4
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object; 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;)TT;"
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;Lorg/apache/http/protocol/HttpContext;)TT;"
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
aload 3
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
aload 3
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
aload 1
aload 2
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
invokeinterface org/apache/http/client/HttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getParams()Lorg/apache/http/params/HttpParams;
aload 0
getfield com/alipay/android/phone/mrpc/core/i/d Lorg/apache/http/client/HttpClient;
invokeinterface org/apache/http/client/HttpClient/getParams()Lorg/apache/http/params/HttpParams; 0
areturn
.limit locals 1
.limit stack 1
.end method
