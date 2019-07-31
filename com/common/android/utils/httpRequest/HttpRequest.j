.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/HttpRequest
.super java/lang/Object
.implements com/common/android/utils/httpRequest/IHttpRequest
.inner class public DownloadFileTask inner com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask outer com/common/android/utils/httpRequest/HttpRequest
.inner class public static abstract interface DownloadListener inner com/common/android/utils/httpRequest/HttpRequest$DownloadListener outer com/common/android/utils/httpRequest/HttpRequest

.field public static final 'ACCEPT_ENCODEING' Ljava/lang/String; = "Accept-Encoding"

.field public static final 'GZIP' Ljava/lang/String; = "gzip"

.field protected static 'mContext' Landroid/content/Context;

.field private static 'mHttp' Lcom/common/android/utils/httpRequest/IHttpRequest;

.field private final 'CONNECTION_TIMEOUT_MS' I

.field private final 'SOCKET_TIMEOUT_MS' I

.field protected 'TAG' Ljava/lang/String;

.field 'debuggable' Z

.field private 'mSid' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "HttpRequest"
putfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
sipush 20000
putfield com/common/android/utils/httpRequest/HttpRequest/CONNECTION_TIMEOUT_MS I
aload 0
ldc_w 60000
putfield com/common/android/utils/httpRequest/HttpRequest/SOCKET_TIMEOUT_MS I
aload 0
ldc ""
putfield com/common/android/utils/httpRequest/HttpRequest/mSid Ljava/lang/String;
aload 0
iconst_0
putfield com/common/android/utils/httpRequest/HttpRequest/debuggable Z
aload 1
ifnull L0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putstatic com/common/android/utils/httpRequest/HttpRequest/mContext Landroid/content/Context;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/client/HttpClient;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/HttpResponse;)J
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getInstanceLength(Lorg/apache/http/HttpResponse;)J
lreturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private checkProxy(Lorg/apache/http/client/HttpClient;)V
aload 0
getstatic com/common/android/utils/httpRequest/HttpRequest/mContext Landroid/content/Context;
invokespecial com/common/android/utils/httpRequest/HttpRequest/needToProxy(Landroid/content/Context;)Z
ifeq L0
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
ifnull L0
new org/apache/http/HttpHost
dup
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
invokestatic android/net/Proxy/getDefaultPort()I
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
astore 2
aload 2
ifnull L0
aload 1
invokeinterface org/apache/http/client/HttpClient/getParams()Lorg/apache/http/params/HttpParams; 0
ldc "http.route.default-proxy"
aload 2
invokeinterface org/apache/http/params/HttpParams/setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams; 2
pop
L0:
return
.limit locals 3
.limit stack 4
.end method

.method private debug(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/debuggable Z
ifeq L0
ldc "debug"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 1
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 1
aload 1
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getHttpsClient()Lorg/apache/http/client/HttpClient;
.throws java/security/NoSuchAlgorithmException
.throws java/security/cert/CertificateException
.throws java/io/IOException
.throws java/security/KeyStoreException
.throws java/security/KeyManagementException
.throws java/security/UnrecoverableKeyException
invokestatic java/security/KeyStore/getDefaultType()Ljava/lang/String;
invokestatic java/security/KeyStore/getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
astore 1
aload 1
aconst_null
aconst_null
invokevirtual java/security/KeyStore/load(Ljava/io/InputStream;[C)V
new com/common/android/utils/http/SSLSocketFactoryEx
dup
aload 1
invokespecial com/common/android/utils/http/SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
astore 1
aload 1
getstatic org/apache/http/conn/ssl/SSLSocketFactory/ALLOW_ALL_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 2
aload 2
bipush 100
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
aload 2
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 2
ldc "UTF-8"
invokestatic org/apache/http/params/HttpProtocolParams/setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
aload 2
iconst_1
invokestatic org/apache/http/params/HttpProtocolParams/setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
aload 2
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 2
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 3
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
aload 1
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
new org/apache/http/impl/client/DefaultHttpClient
dup
new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
dup
aload 2
aload 3
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 2
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
areturn
.limit locals 4
.limit stack 6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
getstatic com/common/android/utils/httpRequest/HttpRequest/mHttp Lcom/common/android/utils/httpRequest/IHttpRequest;
ifnonnull L0
new com/common/android/utils/httpRequest/HttpRequest
dup
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/<init>(Landroid/content/Context;)V
putstatic com/common/android/utils/httpRequest/HttpRequest/mHttp Lcom/common/android/utils/httpRequest/IHttpRequest;
L0:
getstatic com/common/android/utils/httpRequest/HttpRequest/mHttp Lcom/common/android/utils/httpRequest/IHttpRequest;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getInstanceLength(Lorg/apache/http/HttpResponse;)J
.catch java/lang/NumberFormatException from L0 to L1 using L2
ldc2_w -1L
lstore 4
lload 4
lstore 2
aload 1
ifnull L1
aload 1
ldc "Content-Range"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 1
lload 4
lstore 2
aload 1
arraylength
ifle L1
aload 1
iconst_0
aaload
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
astore 1
aload 1
ldc "/"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
L0:
aload 6
iconst_1
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 2
L1:
lload 2
lreturn
L2:
astore 6
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
ldc "The HttpResponse contains an invalid instance-length: %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc2_w -1L
lreturn
.limit locals 7
.limit stack 6
.end method

.method private getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic java/security/KeyStore/getDefaultType()Ljava/lang/String;
invokestatic java/security/KeyStore/getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
astore 2
aload 2
aconst_null
aconst_null
invokevirtual java/security/KeyStore/load(Ljava/io/InputStream;[C)V
new com/common/android/utils/http/SSLSocketFactoryEx
dup
aload 2
invokespecial com/common/android/utils/http/SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
astore 2
aload 2
getstatic org/apache/http/conn/ssl/SSLSocketFactory/ALLOW_ALL_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
aload 1
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 1
ldc "UTF-8"
invokestatic org/apache/http/params/HttpProtocolParams/setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
aload 1
iconst_1
invokestatic org/apache/http/params/HttpProtocolParams/setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 3
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
aload 2
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
new org/apache/http/impl/client/DefaultHttpClient
dup
new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
dup
aload 1
aload 3
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 1
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
areturn
.limit locals 4
.limit stack 6
.end method

.method private needToProxy(Landroid/content/Context;)Z
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 1
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
ldc "MOBILE"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
aload 1
invokevirtual android/net/NetworkInfo/getExtraInfo()Ljava/lang/String;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "wap"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 1
aload 1
ifnull L1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/apache/http/entity/mime/MultipartEntity;)Lorg/apache/http/client/methods/HttpUriRequest;
.throws org/apache/http/HttpException
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
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
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

.method public doDelete(Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch java/net/SocketTimeoutException from L34 to L35 using L2
.catch java/net/SocketException from L34 to L35 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L34 to L35 using L4
.catch java/net/UnknownHostException from L34 to L35 using L5
.catch java/lang/Exception from L34 to L35 using L6
.catch all from L34 to L35 using L7
.catch java/net/SocketTimeoutException from L36 to L37 using L2
.catch java/net/SocketException from L36 to L37 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L36 to L37 using L4
.catch java/net/UnknownHostException from L36 to L37 using L5
.catch java/lang/Exception from L36 to L37 using L6
.catch all from L36 to L37 using L7
.catch java/net/SocketTimeoutException from L38 to L39 using L2
.catch java/net/SocketException from L38 to L39 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L38 to L39 using L4
.catch java/net/UnknownHostException from L38 to L39 using L5
.catch java/lang/Exception from L38 to L39 using L6
.catch all from L38 to L39 using L7
.catch all from L40 to L41 using L7
.catch all from L42 to L43 using L7
.catch java/io/IOException from L44 to L45 using L46
.catch java/io/IOException from L47 to L48 using L49
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch java/net/SocketTimeoutException from L54 to L55 using L2
.catch java/net/SocketException from L54 to L55 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L54 to L55 using L4
.catch java/net/UnknownHostException from L54 to L55 using L5
.catch java/lang/Exception from L54 to L55 using L6
.catch all from L54 to L55 using L7
.catch java/net/SocketTimeoutException from L56 to L57 using L2
.catch java/net/SocketException from L56 to L57 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L56 to L57 using L4
.catch java/net/UnknownHostException from L56 to L57 using L5
.catch java/lang/Exception from L56 to L57 using L6
.catch all from L56 to L57 using L7
.catch java/net/SocketTimeoutException from L58 to L59 using L2
.catch java/net/SocketException from L58 to L59 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L4
.catch java/net/UnknownHostException from L58 to L59 using L5
.catch java/lang/Exception from L58 to L59 using L6
.catch all from L58 to L59 using L7
.catch all from L60 to L61 using L7
.catch all from L62 to L63 using L7
.catch java/io/IOException from L64 to L65 using L66
.catch all from L67 to L68 using L7
.catch all from L69 to L70 using L7
.catch java/io/IOException from L71 to L72 using L73
.catch all from L74 to L75 using L7
.catch all from L76 to L77 using L7
.catch java/io/IOException from L78 to L79 using L80
.catch all from L81 to L82 using L7
.catch all from L83 to L84 using L7
.catch java/io/IOException from L85 to L86 using L87
.catch java/io/IOException from L88 to L89 using L90
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "dodelete:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 3
aconst_null
astore 8
aconst_null
astore 14
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 7
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 18
L1:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L8:
aload 18
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L10:
aload 18
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L12:
aload 18
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
L13:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L14:
aload 0
aload 18
invokespecial com/common/android/utils/httpRequest/HttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 18
L15:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L16:
new org/apache/http/client/methods/HttpDelete
dup
aload 1
invokespecial org/apache/http/client/methods/HttpDelete/<init>(Ljava/lang/String;)V
astore 19
L17:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L18:
aload 0
aload 19
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L19:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L20:
aload 18
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
L21:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L22:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L23:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 5
istore 4
aload 17
astore 6
L24:
aload 18
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L25:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L26:
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L27:
aload 8
astore 7
aload 14
ifnull L31
aload 8
astore 7
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L28:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L31
L29:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L30:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 7
L31:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L32:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 7
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L33:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L34:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L35:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L36:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L37:
aload 15
ifnull L91
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L38:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L39:
goto L35
L2:
astore 1
aload 9
astore 6
L40:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L41:
aload 9
astore 6
L42:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 4
L43:
iload 4
istore 3
aload 9
ifnull L92
L44:
aload 9
invokevirtual java/io/InputStream/close()V
L45:
iload 4
istore 3
L92:
iload 3
ireturn
L91:
iload 5
sipush 200
if_icmpeq L93
iload 5
sipush 201
if_icmpne L94
L93:
iload 5
istore 3
aload 7
ifnull L92
L47:
aload 7
invokevirtual java/io/InputStream/close()V
L48:
iload 5
ireturn
L49:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L94:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L50:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifgt L53
L51:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L52:
aload 2
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L53:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L54:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifle L57
L55:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L56:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L57:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L58:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L59:
goto L93
L3:
astore 1
aload 10
astore 6
L60:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L61:
aload 10
astore 6
L62:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 4
L63:
iload 4
istore 3
aload 10
ifnull L92
L64:
aload 10
invokevirtual java/io/InputStream/close()V
L65:
iload 4
ireturn
L66:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L46:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L4:
astore 1
aload 11
astore 6
L67:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L68:
aload 11
astore 6
L69:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 4
L70:
iload 4
istore 3
aload 11
ifnull L92
L71:
aload 11
invokevirtual java/io/InputStream/close()V
L72:
iload 4
ireturn
L73:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L5:
astore 1
aload 12
astore 6
L74:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L75:
aload 12
astore 6
L76:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 4
L77:
iload 4
istore 3
aload 12
ifnull L92
L78:
aload 12
invokevirtual java/io/InputStream/close()V
L79:
iload 4
ireturn
L80:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L6:
astore 1
aload 13
astore 6
L81:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L82:
aload 13
astore 6
L83:
aload 2
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L84:
iload 4
istore 3
aload 13
ifnull L92
L85:
aload 13
invokevirtual java/io/InputStream/close()V
L86:
iload 4
ireturn
L87:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L7:
astore 1
aload 6
ifnull L89
L88:
aload 6
invokevirtual java/io/InputStream/close()V
L89:
aload 1
athrow
L90:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L89
.limit locals 20
.limit stack 5
.end method

.method public doDeleteWithEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch java/net/SocketTimeoutException from L34 to L35 using L2
.catch java/net/SocketException from L34 to L35 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L34 to L35 using L4
.catch java/net/UnknownHostException from L34 to L35 using L5
.catch java/lang/Exception from L34 to L35 using L6
.catch all from L34 to L35 using L7
.catch java/net/SocketTimeoutException from L36 to L37 using L2
.catch java/net/SocketException from L36 to L37 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L36 to L37 using L4
.catch java/net/UnknownHostException from L36 to L37 using L5
.catch java/lang/Exception from L36 to L37 using L6
.catch all from L36 to L37 using L7
.catch java/net/SocketTimeoutException from L38 to L39 using L2
.catch java/net/SocketException from L38 to L39 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L38 to L39 using L4
.catch java/net/UnknownHostException from L38 to L39 using L5
.catch java/lang/Exception from L38 to L39 using L6
.catch all from L38 to L39 using L7
.catch java/net/SocketTimeoutException from L40 to L41 using L2
.catch java/net/SocketException from L40 to L41 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L40 to L41 using L4
.catch java/net/UnknownHostException from L40 to L41 using L5
.catch java/lang/Exception from L40 to L41 using L6
.catch all from L40 to L41 using L7
.catch all from L42 to L43 using L7
.catch all from L44 to L45 using L7
.catch java/io/IOException from L46 to L47 using L48
.catch java/io/IOException from L49 to L50 using L51
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch java/net/SocketTimeoutException from L54 to L55 using L2
.catch java/net/SocketException from L54 to L55 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L54 to L55 using L4
.catch java/net/UnknownHostException from L54 to L55 using L5
.catch java/lang/Exception from L54 to L55 using L6
.catch all from L54 to L55 using L7
.catch java/net/SocketTimeoutException from L56 to L57 using L2
.catch java/net/SocketException from L56 to L57 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L56 to L57 using L4
.catch java/net/UnknownHostException from L56 to L57 using L5
.catch java/lang/Exception from L56 to L57 using L6
.catch all from L56 to L57 using L7
.catch java/net/SocketTimeoutException from L58 to L59 using L2
.catch java/net/SocketException from L58 to L59 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L4
.catch java/net/UnknownHostException from L58 to L59 using L5
.catch java/lang/Exception from L58 to L59 using L6
.catch all from L58 to L59 using L7
.catch java/net/SocketTimeoutException from L60 to L61 using L2
.catch java/net/SocketException from L60 to L61 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L60 to L61 using L4
.catch java/net/UnknownHostException from L60 to L61 using L5
.catch java/lang/Exception from L60 to L61 using L6
.catch all from L60 to L61 using L7
.catch all from L62 to L63 using L7
.catch all from L64 to L65 using L7
.catch java/io/IOException from L66 to L67 using L68
.catch all from L69 to L70 using L7
.catch all from L71 to L72 using L7
.catch java/io/IOException from L73 to L74 using L75
.catch all from L76 to L77 using L7
.catch all from L78 to L79 using L7
.catch java/io/IOException from L80 to L81 using L82
.catch all from L83 to L84 using L7
.catch all from L85 to L86 using L7
.catch java/io/IOException from L87 to L88 using L89
.catch java/io/IOException from L90 to L91 using L92
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "dodelete:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 4
aconst_null
astore 14
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 18
aconst_null
astore 8
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 19
L1:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L8:
aload 19
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L10:
aload 19
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L12:
aload 19
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
L13:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L14:
aload 0
aload 19
invokespecial com/common/android/utils/httpRequest/HttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 19
L15:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L16:
new com/common/android/utils/http/HttpEntityDelete
dup
aload 1
invokespecial com/common/android/utils/http/HttpEntityDelete/<init>(Ljava/lang/String;)V
astore 20
L17:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L18:
aload 0
aload 20
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L19:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L20:
aload 20
aload 2
invokevirtual com/common/android/utils/http/HttpEntityDelete/setEntity(Lorg/apache/http/HttpEntity;)V
L21:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L22:
aload 19
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
L23:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L24:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L25:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 6
istore 5
aload 18
astore 7
L26:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L27:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L28:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L29:
aload 8
astore 2
aload 14
ifnull L33
aload 8
astore 2
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L30:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L33
L31:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L32:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 2
L33:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L34:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 2
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L35:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L36:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L37:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L38:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L39:
aload 15
ifnull L93
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L40:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L41:
goto L37
L2:
astore 1
aload 9
astore 7
L42:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L43:
aload 9
astore 7
L44:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 5
L45:
iload 5
istore 4
aload 9
ifnull L94
L46:
aload 9
invokevirtual java/io/InputStream/close()V
L47:
iload 5
istore 4
L94:
iload 4
ireturn
L93:
iload 6
sipush 200
if_icmpeq L95
iload 6
sipush 201
if_icmpne L96
L95:
iload 6
istore 4
aload 2
ifnull L94
L49:
aload 2
invokevirtual java/io/InputStream/close()V
L50:
iload 6
ireturn
L51:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L96:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L52:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L55
L53:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L54:
aload 3
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L55:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L56:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L59
L57:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L58:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L59:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L60:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L61:
goto L95
L3:
astore 1
aload 10
astore 7
L62:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L63:
aload 10
astore 7
L64:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 5
L65:
iload 5
istore 4
aload 10
ifnull L94
L66:
aload 10
invokevirtual java/io/InputStream/close()V
L67:
iload 5
ireturn
L68:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L48:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L4:
astore 1
aload 11
astore 7
L69:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L70:
aload 11
astore 7
L71:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 5
L72:
iload 5
istore 4
aload 11
ifnull L94
L73:
aload 11
invokevirtual java/io/InputStream/close()V
L74:
iload 5
ireturn
L75:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L5:
astore 1
aload 12
astore 7
L76:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L77:
aload 12
astore 7
L78:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 5
L79:
iload 5
istore 4
aload 12
ifnull L94
L80:
aload 12
invokevirtual java/io/InputStream/close()V
L81:
iload 5
ireturn
L82:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L6:
astore 1
aload 13
astore 7
L83:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L84:
aload 13
astore 7
L85:
aload 3
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L86:
iload 5
istore 4
aload 13
ifnull L94
L87:
aload 13
invokevirtual java/io/InputStream/close()V
L88:
iload 5
ireturn
L89:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L7:
astore 1
aload 7
ifnull L91
L90:
aload 7
invokevirtual java/io/InputStream/close()V
L91:
aload 1
athrow
L92:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L91
.limit locals 21
.limit stack 5
.end method

.method public doDownFile(Ljava/lang/String;Ljava/io/File;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch all from L30 to L31 using L7
.catch all from L32 to L33 using L7
.catch java/io/IOException from L34 to L35 using L36
.catch java/io/IOException from L37 to L38 using L39
.catch java/net/SocketTimeoutException from L40 to L41 using L2
.catch java/net/SocketException from L40 to L41 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L40 to L41 using L4
.catch java/net/UnknownHostException from L40 to L41 using L5
.catch java/lang/Exception from L40 to L41 using L6
.catch all from L40 to L41 using L7
.catch java/io/IOException from L42 to L43 using L44
.catch java/io/IOException from L45 to L46 using L47
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch java/net/SocketTimeoutException from L54 to L55 using L2
.catch java/net/SocketException from L54 to L55 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L54 to L55 using L4
.catch java/net/UnknownHostException from L54 to L55 using L5
.catch java/lang/Exception from L54 to L55 using L6
.catch all from L54 to L55 using L7
.catch java/net/SocketTimeoutException from L56 to L57 using L2
.catch java/net/SocketException from L56 to L57 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L56 to L57 using L4
.catch java/net/UnknownHostException from L56 to L57 using L5
.catch java/lang/Exception from L56 to L57 using L6
.catch all from L56 to L57 using L7
.catch java/net/SocketTimeoutException from L58 to L59 using L2
.catch java/net/SocketException from L58 to L59 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L4
.catch java/net/UnknownHostException from L58 to L59 using L5
.catch java/lang/Exception from L58 to L59 using L6
.catch all from L58 to L59 using L7
.catch java/net/SocketTimeoutException from L59 to L60 using L61
.catch java/net/SocketException from L59 to L60 using L62
.catch org/apache/http/conn/ConnectTimeoutException from L59 to L60 using L63
.catch java/net/UnknownHostException from L59 to L60 using L64
.catch java/lang/Exception from L59 to L60 using L65
.catch all from L59 to L60 using L66
.catch java/net/SocketTimeoutException from L60 to L67 using L61
.catch java/net/SocketException from L60 to L67 using L62
.catch org/apache/http/conn/ConnectTimeoutException from L60 to L67 using L63
.catch java/net/UnknownHostException from L60 to L67 using L64
.catch java/lang/Exception from L60 to L67 using L65
.catch all from L60 to L67 using L66
.catch java/net/SocketTimeoutException from L68 to L69 using L61
.catch java/net/SocketException from L68 to L69 using L62
.catch org/apache/http/conn/ConnectTimeoutException from L68 to L69 using L63
.catch java/net/UnknownHostException from L68 to L69 using L64
.catch java/lang/Exception from L68 to L69 using L65
.catch all from L68 to L69 using L66
.catch java/io/IOException from L70 to L71 using L72
.catch java/io/IOException from L73 to L74 using L75
.catch java/net/SocketTimeoutException from L76 to L77 using L61
.catch java/net/SocketException from L76 to L77 using L62
.catch org/apache/http/conn/ConnectTimeoutException from L76 to L77 using L63
.catch java/net/UnknownHostException from L76 to L77 using L64
.catch java/lang/Exception from L76 to L77 using L65
.catch all from L76 to L77 using L66
.catch all from L78 to L79 using L7
.catch all from L80 to L81 using L7
.catch java/io/IOException from L82 to L83 using L84
.catch java/io/IOException from L85 to L86 using L87
.catch all from L88 to L89 using L7
.catch all from L90 to L91 using L7
.catch java/io/IOException from L92 to L93 using L94
.catch java/io/IOException from L95 to L96 using L97
.catch all from L98 to L99 using L7
.catch all from L100 to L101 using L7
.catch java/io/IOException from L102 to L103 using L104
.catch java/io/IOException from L105 to L106 using L107
.catch all from L108 to L109 using L7
.catch all from L110 to L111 using L7
.catch all from L112 to L113 using L7
.catch java/io/IOException from L114 to L115 using L116
.catch java/io/IOException from L117 to L118 using L119
.catch java/io/IOException from L120 to L121 using L122
.catch java/io/IOException from L123 to L124 using L125
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doDownFile:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 3
aconst_null
astore 20
aconst_null
astore 8
aconst_null
astore 21
aconst_null
astore 22
aconst_null
astore 23
aconst_null
astore 5
aconst_null
astore 14
aconst_null
astore 16
aconst_null
astore 18
aconst_null
astore 15
aconst_null
astore 19
aconst_null
astore 17
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 25
L1:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L8:
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 24
L9:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L10:
aload 24
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L11:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L12:
aload 0
aload 24
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L13:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L14:
aload 25
aload 24
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 24
L15:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L16:
aload 24
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 3
L17:
aload 5
astore 10
aload 20
astore 11
aload 8
astore 12
aload 21
astore 9
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L18:
aload 24
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L19:
iload 3
sipush 200
if_icmpeq L126
iload 3
sipush 201
if_icmpeq L126
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L20:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 8
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 5
L21:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L22:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
L23:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L24:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 21
L25:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L26:
aload 5
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 20
L27:
aload 20
ifnull L127
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L28:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 20
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 21
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L29:
goto L25
L2:
astore 2
aload 17
astore 1
aload 10
astore 5
L128:
aload 5
astore 6
aload 1
astore 7
L30:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L31:
aload 5
astore 6
aload 1
astore 7
L32:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 4
L33:
aload 5
ifnull L35
L34:
aload 5
invokevirtual java/io/InputStream/close()V
L35:
iload 4
istore 3
aload 1
ifnull L129
L37:
aload 1
invokevirtual java/io/OutputStream/close()V
L38:
iload 4
istore 3
L129:
iload 3
ireturn
L127:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L40:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L41:
aload 8
ifnull L43
L42:
aload 8
invokevirtual java/io/InputStream/close()V
L43:
iconst_0
ifeq L46
L45:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L46:
iload 3
ireturn
L44:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L43
L47:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L46
L126:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L48:
aload 24
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 20
L49:
aload 8
astore 5
aload 20
ifnull L53
aload 8
astore 10
aload 8
astore 5
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L50:
aload 20
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L53
L51:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 9
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L52:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 5
L53:
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
aload 5
astore 9
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L54:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L57
L55:
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
aload 5
astore 9
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L56:
aload 2
invokevirtual java/io/File/delete()Z
pop
L57:
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
aload 5
astore 9
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L58:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 8
L59:
sipush 1024
newarray byte
astore 6
L60:
aload 5
aload 6
invokevirtual java/io/InputStream/read([B)I
istore 4
L67:
iload 4
iconst_m1
if_icmpeq L130
L68:
aload 8
aload 6
iconst_0
iload 4
invokevirtual java/io/OutputStream/write([BII)V
L69:
goto L60
L61:
astore 2
aload 8
astore 1
goto L128
L130:
iload 3
sipush 200
if_icmpeq L131
iload 3
sipush 201
if_icmpne L76
L131:
aload 5
ifnull L71
L70:
aload 5
invokevirtual java/io/InputStream/close()V
L71:
aload 8
ifnull L132
L73:
aload 8
invokevirtual java/io/OutputStream/close()V
L74:
goto L129
L76:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L77:
goto L131
L62:
astore 2
aload 8
astore 1
L133:
aload 5
astore 6
aload 1
astore 7
L78:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L79:
aload 5
astore 6
aload 1
astore 7
L80:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 4
L81:
aload 5
ifnull L83
L82:
aload 5
invokevirtual java/io/InputStream/close()V
L83:
iload 4
istore 3
aload 1
ifnull L129
L85:
aload 1
invokevirtual java/io/OutputStream/close()V
L86:
iload 4
istore 3
goto L129
L87:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
istore 3
goto L129
L72:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L71
L75:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L129
L36:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L35
L39:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
istore 3
goto L129
L84:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
L4:
astore 2
aload 16
astore 1
aload 11
astore 5
L134:
aload 5
astore 6
aload 1
astore 7
L88:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L89:
aload 5
astore 6
aload 1
astore 7
L90:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 4
L91:
aload 5
ifnull L93
L92:
aload 5
invokevirtual java/io/InputStream/close()V
L93:
iload 4
istore 3
aload 1
ifnull L129
L95:
aload 1
invokevirtual java/io/OutputStream/close()V
L96:
iload 4
istore 3
goto L129
L97:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
istore 3
goto L129
L94:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L93
L5:
astore 2
aload 18
astore 1
aload 12
astore 5
L135:
aload 5
astore 6
aload 1
astore 7
L98:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L99:
aload 5
astore 6
aload 1
astore 7
L100:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 4
L101:
aload 5
ifnull L103
L102:
aload 5
invokevirtual java/io/InputStream/close()V
L103:
iload 4
istore 3
aload 1
ifnull L129
L105:
aload 1
invokevirtual java/io/OutputStream/close()V
L106:
iload 4
istore 3
goto L129
L107:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
istore 3
goto L129
L104:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L103
L6:
astore 8
aload 15
astore 1
aload 9
astore 5
L136:
aload 5
astore 6
aload 1
astore 7
L108:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L111
L109:
aload 5
astore 6
aload 1
astore 7
L110:
aload 2
invokevirtual java/io/File/delete()Z
pop
L111:
aload 5
astore 6
aload 1
astore 7
L112:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 8
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L113:
aload 5
ifnull L115
L114:
aload 5
invokevirtual java/io/InputStream/close()V
L115:
iload 4
istore 3
aload 1
ifnull L129
L117:
aload 1
invokevirtual java/io/OutputStream/close()V
L118:
iload 4
istore 3
goto L129
L119:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
istore 3
goto L129
L116:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L115
L7:
astore 1
aload 6
astore 5
L137:
aload 5
ifnull L121
L120:
aload 5
invokevirtual java/io/InputStream/close()V
L121:
aload 7
ifnull L124
L123:
aload 7
invokevirtual java/io/OutputStream/close()V
L124:
aload 1
athrow
L122:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L121
L125:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L124
L66:
astore 1
aload 8
astore 7
goto L137
L65:
astore 6
aload 8
astore 1
aload 6
astore 8
iload 3
istore 4
goto L136
L64:
astore 2
aload 8
astore 1
goto L135
L63:
astore 2
aload 8
astore 1
goto L134
L3:
astore 2
aload 13
astore 5
aload 14
astore 1
goto L133
L132:
goto L129
.limit locals 26
.limit stack 5
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch all from L34 to L35 using L7
.catch all from L36 to L37 using L7
.catch java/io/IOException from L38 to L39 using L40
.catch java/io/IOException from L41 to L42 using L43
.catch java/net/SocketTimeoutException from L44 to L45 using L2
.catch java/net/SocketException from L44 to L45 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L44 to L45 using L4
.catch java/net/UnknownHostException from L44 to L45 using L5
.catch java/lang/Exception from L44 to L45 using L6
.catch all from L44 to L45 using L7
.catch java/net/SocketTimeoutException from L46 to L47 using L2
.catch java/net/SocketException from L46 to L47 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L46 to L47 using L4
.catch java/net/UnknownHostException from L46 to L47 using L5
.catch java/lang/Exception from L46 to L47 using L6
.catch all from L46 to L47 using L7
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch all from L54 to L55 using L7
.catch all from L56 to L57 using L7
.catch java/io/IOException from L58 to L59 using L60
.catch all from L61 to L62 using L7
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch all from L70 to L71 using L7
.catch java/io/IOException from L72 to L73 using L74
.catch all from L75 to L76 using L7
.catch all from L77 to L78 using L7
.catch java/io/IOException from L79 to L80 using L81
.catch java/io/IOException from L82 to L83 using L84
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doGet:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 3
aconst_null
astore 8
aconst_null
astore 14
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 7
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 18
L1:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L8:
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 19
L9:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L10:
aload 19
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L11:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L12:
aload 0
aload 19
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L13:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L14:
aload 18
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
L15:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L16:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L17:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 5
istore 4
aload 17
astore 6
L18:
aload 18
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L19:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L20:
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L21:
aload 8
astore 7
aload 14
ifnull L25
aload 8
astore 7
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L22:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
L23:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L24:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 7
L25:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L26:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 7
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L27:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L28:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L29:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L30:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L31:
aload 15
ifnull L85
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L32:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L33:
goto L29
L2:
astore 1
aload 9
astore 6
L34:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L35:
aload 9
astore 6
L36:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 4
L37:
iload 4
istore 3
aload 9
ifnull L86
L38:
aload 9
invokevirtual java/io/InputStream/close()V
L39:
iload 4
istore 3
L86:
iload 3
ireturn
L85:
iload 5
sipush 200
if_icmpeq L87
iload 5
sipush 201
if_icmpne L88
L87:
iload 5
istore 3
aload 7
ifnull L86
L41:
aload 7
invokevirtual java/io/InputStream/close()V
L42:
iload 5
ireturn
L43:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L88:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L44:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifgt L47
L45:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L46:
aload 2
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L47:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L48:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifle L51
L49:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L50:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L52:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L53:
goto L87
L3:
astore 1
aload 10
astore 6
L54:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L55:
aload 10
astore 6
L56:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 4
L57:
iload 4
istore 3
aload 10
ifnull L86
L58:
aload 10
invokevirtual java/io/InputStream/close()V
L59:
iload 4
ireturn
L60:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L40:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L4:
astore 1
aload 11
astore 6
L61:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L62:
aload 11
astore 6
L63:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 4
L64:
iload 4
istore 3
aload 11
ifnull L86
L65:
aload 11
invokevirtual java/io/InputStream/close()V
L66:
iload 4
ireturn
L67:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L5:
astore 1
aload 12
astore 6
L68:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
aload 12
astore 6
L70:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 4
L71:
iload 4
istore 3
aload 12
ifnull L86
L72:
aload 12
invokevirtual java/io/InputStream/close()V
L73:
iload 4
ireturn
L74:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L6:
astore 1
aload 13
astore 6
L75:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L76:
aload 13
astore 6
L77:
aload 2
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L78:
iload 4
istore 3
aload 13
ifnull L86
L79:
aload 13
invokevirtual java/io/InputStream/close()V
L80:
iload 4
ireturn
L81:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L7:
astore 1
aload 6
ifnull L83
L82:
aload 6
invokevirtual java/io/InputStream/close()V
L83:
aload 1
athrow
L84:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
.limit locals 20
.limit stack 5
.end method

.method public doGetGBK(Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch all from L34 to L35 using L7
.catch all from L36 to L37 using L7
.catch java/io/IOException from L38 to L39 using L40
.catch java/io/IOException from L41 to L42 using L43
.catch java/net/SocketTimeoutException from L44 to L45 using L2
.catch java/net/SocketException from L44 to L45 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L44 to L45 using L4
.catch java/net/UnknownHostException from L44 to L45 using L5
.catch java/lang/Exception from L44 to L45 using L6
.catch all from L44 to L45 using L7
.catch java/net/SocketTimeoutException from L46 to L47 using L2
.catch java/net/SocketException from L46 to L47 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L46 to L47 using L4
.catch java/net/UnknownHostException from L46 to L47 using L5
.catch java/lang/Exception from L46 to L47 using L6
.catch all from L46 to L47 using L7
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch all from L54 to L55 using L7
.catch all from L56 to L57 using L7
.catch java/io/IOException from L58 to L59 using L60
.catch all from L61 to L62 using L7
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch all from L70 to L71 using L7
.catch java/io/IOException from L72 to L73 using L74
.catch all from L75 to L76 using L7
.catch all from L77 to L78 using L7
.catch java/io/IOException from L79 to L80 using L81
.catch java/io/IOException from L82 to L83 using L84
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doGetGBK:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 3
aconst_null
astore 8
aconst_null
astore 14
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 7
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 18
L1:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L8:
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 19
L9:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L10:
aload 19
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L11:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L12:
aload 0
aload 19
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L13:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L14:
aload 18
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
L15:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 3
istore 4
aload 17
astore 6
L16:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L17:
aload 7
astore 9
aload 8
astore 10
aload 14
astore 11
aload 15
astore 12
aload 16
astore 13
iload 5
istore 4
aload 17
astore 6
L18:
aload 18
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L19:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L20:
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L21:
aload 8
astore 7
aload 14
ifnull L25
aload 8
astore 7
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L22:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
L23:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 5
istore 4
aload 8
astore 6
L24:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 7
L25:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L26:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 7
ldc "GB2312"
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L27:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L28:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L29:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L30:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L31:
aload 15
ifnull L85
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L32:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L33:
goto L29
L2:
astore 1
aload 9
astore 6
L34:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L35:
aload 9
astore 6
L36:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 4
L37:
iload 4
istore 3
aload 9
ifnull L86
L38:
aload 9
invokevirtual java/io/InputStream/close()V
L39:
iload 4
istore 3
L86:
iload 3
ireturn
L85:
iload 5
sipush 200
if_icmpeq L87
iload 5
sipush 201
if_icmpne L88
L87:
iload 5
istore 3
aload 7
ifnull L86
L41:
aload 7
invokevirtual java/io/InputStream/close()V
L42:
iload 5
ireturn
L43:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L88:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L44:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifgt L47
L45:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L46:
aload 2
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L47:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L48:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifle L51
L49:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L50:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
aload 7
astore 13
iload 5
istore 4
aload 7
astore 6
L52:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L53:
goto L87
L3:
astore 1
aload 10
astore 6
L54:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L55:
aload 10
astore 6
L56:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 4
L57:
iload 4
istore 3
aload 10
ifnull L86
L58:
aload 10
invokevirtual java/io/InputStream/close()V
L59:
iload 4
ireturn
L60:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L40:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L4:
astore 1
aload 11
astore 6
L61:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L62:
aload 11
astore 6
L63:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 4
L64:
iload 4
istore 3
aload 11
ifnull L86
L65:
aload 11
invokevirtual java/io/InputStream/close()V
L66:
iload 4
ireturn
L67:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L5:
astore 1
aload 12
astore 6
L68:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
aload 12
astore 6
L70:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 4
L71:
iload 4
istore 3
aload 12
ifnull L86
L72:
aload 12
invokevirtual java/io/InputStream/close()V
L73:
iload 4
ireturn
L74:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L6:
astore 1
aload 13
astore 6
L75:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L76:
aload 13
astore 6
L77:
aload 2
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L78:
iload 4
istore 3
aload 13
ifnull L86
L79:
aload 13
invokevirtual java/io/InputStream/close()V
L80:
iload 4
ireturn
L81:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L7:
astore 1
aload 6
ifnull L83
L82:
aload 6
invokevirtual java/io/InputStream/close()V
L83:
aload 1
athrow
L84:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
.limit locals 20
.limit stack 6
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/io/UnsupportedEncodingException from L3 to L4 using L2
.catch java/io/UnsupportedEncodingException from L6 to L7 using L2
.catch java/io/UnsupportedEncodingException from L7 to L8 using L2
L0:
new org/apache/http/entity/StringEntity
dup
aload 2
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
ldc "https"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
istore 5
L1:
iload 5
ifeq L7
L3:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doPostForHttps(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
istore 4
L4:
iload 4
ireturn
L5:
astore 6
L6:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
aload 1
ldc "https://"
ldc "http://"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
aload 2
aload 3
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
ireturn
L7:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
istore 4
L8:
iload 4
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
iconst_0
ireturn
.limit locals 7
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch java/net/SocketTimeoutException from L34 to L35 using L2
.catch java/net/SocketException from L34 to L35 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L34 to L35 using L4
.catch java/net/UnknownHostException from L34 to L35 using L5
.catch java/lang/Exception from L34 to L35 using L6
.catch all from L34 to L35 using L7
.catch all from L36 to L37 using L7
.catch all from L38 to L39 using L7
.catch java/io/IOException from L40 to L41 using L42
.catch java/net/SocketTimeoutException from L43 to L44 using L2
.catch java/net/SocketException from L43 to L44 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L43 to L44 using L4
.catch java/net/UnknownHostException from L43 to L44 using L5
.catch java/lang/Exception from L43 to L44 using L6
.catch all from L43 to L44 using L7
.catch java/io/IOException from L45 to L46 using L47
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch java/net/SocketTimeoutException from L54 to L55 using L2
.catch java/net/SocketException from L54 to L55 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L54 to L55 using L4
.catch java/net/UnknownHostException from L54 to L55 using L5
.catch java/lang/Exception from L54 to L55 using L6
.catch all from L54 to L55 using L7
.catch all from L56 to L57 using L7
.catch all from L58 to L59 using L7
.catch java/io/IOException from L60 to L61 using L62
.catch all from L63 to L64 using L7
.catch all from L65 to L66 using L7
.catch java/io/IOException from L67 to L68 using L69
.catch all from L70 to L71 using L7
.catch all from L72 to L73 using L7
.catch java/io/IOException from L74 to L75 using L76
.catch all from L77 to L78 using L7
.catch all from L79 to L80 using L7
.catch java/io/IOException from L81 to L82 using L83
.catch java/io/IOException from L84 to L85 using L86
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doPost:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 4
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 18
aconst_null
astore 19
aconst_null
astore 14
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L0:
aload 1
ldc "https://"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L87
L1:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L8:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpsClient()Lorg/apache/http/client/HttpClient;
astore 13
L9:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L10:
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 1
L11:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L12:
aload 0
aload 1
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L13:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L14:
aload 1
aload 2
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L15:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L16:
aload 13
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 13
L17:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L18:
aload 13
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L19:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 6
istore 5
aload 19
astore 7
L20:
aload 13
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 2
L21:
aload 2
astore 8
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
iload 6
istore 5
aload 2
astore 7
L22:
aload 13
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L23:
aload 2
astore 1
aload 14
ifnull L27
aload 2
astore 1
aload 2
astore 8
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
iload 6
istore 5
aload 2
astore 7
L24:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L27
L25:
aload 2
astore 8
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
iload 6
istore 5
aload 2
astore 7
L26:
new java/util/zip/GZIPInputStream
dup
aload 2
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L27:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L28:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 1
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 2
L29:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L30:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L31:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L32:
aload 2
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L33:
aload 15
ifnull L88
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L34:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L35:
goto L31
L2:
astore 1
aload 8
astore 7
L36:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L37:
aload 8
astore 7
L38:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 5
L39:
iload 5
istore 4
aload 8
ifnull L89
L40:
aload 8
invokevirtual java/io/InputStream/close()V
L41:
iload 5
istore 4
L89:
iload 4
ireturn
L87:
aload 14
astore 8
aload 15
astore 9
aload 16
astore 10
aload 17
astore 11
aload 18
astore 12
iload 4
istore 5
aload 19
astore 7
L43:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 13
L44:
goto L9
L88:
iload 6
sipush 200
if_icmpeq L90
iload 6
sipush 201
if_icmpne L91
L90:
iload 6
istore 4
aload 1
ifnull L89
L45:
aload 1
invokevirtual java/io/InputStream/close()V
L46:
iload 6
ireturn
L47:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L91:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L48:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L51
L49:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L50:
aload 3
aload 13
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L51:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L52:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L90
L53:
aload 1
astore 8
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
iload 6
istore 5
aload 1
astore 7
L54:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L55:
goto L90
L3:
astore 1
aload 9
astore 7
L56:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L57:
aload 9
astore 7
L58:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 5
L59:
iload 5
istore 4
aload 9
ifnull L89
L60:
aload 9
invokevirtual java/io/InputStream/close()V
L61:
iload 5
ireturn
L62:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L42:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L4:
astore 1
aload 10
astore 7
L63:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L64:
aload 10
astore 7
L65:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 5
L66:
iload 5
istore 4
aload 10
ifnull L89
L67:
aload 10
invokevirtual java/io/InputStream/close()V
L68:
iload 5
ireturn
L69:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L5:
astore 1
aload 11
astore 7
L70:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L71:
aload 11
astore 7
L72:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 5
L73:
iload 5
istore 4
aload 11
ifnull L89
L74:
aload 11
invokevirtual java/io/InputStream/close()V
L75:
iload 5
ireturn
L76:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L6:
astore 1
aload 12
astore 7
L77:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L78:
aload 12
astore 7
L79:
aload 3
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L80:
iload 5
istore 4
aload 12
ifnull L89
L81:
aload 12
invokevirtual java/io/InputStream/close()V
L82:
iload 5
ireturn
L83:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L7:
astore 1
aload 7
ifnull L85
L84:
aload 7
invokevirtual java/io/InputStream/close()V
L85:
aload 1
athrow
L86:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L85
.limit locals 20
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aload 3
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public doPost(Ljava/lang/String;[BLjava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch all from L34 to L35 using L7
.catch all from L36 to L37 using L7
.catch java/io/IOException from L38 to L39 using L40
.catch java/io/IOException from L41 to L42 using L43
.catch java/net/SocketTimeoutException from L44 to L45 using L2
.catch java/net/SocketException from L44 to L45 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L44 to L45 using L4
.catch java/net/UnknownHostException from L44 to L45 using L5
.catch java/lang/Exception from L44 to L45 using L6
.catch all from L44 to L45 using L7
.catch java/net/SocketTimeoutException from L46 to L47 using L2
.catch java/net/SocketException from L46 to L47 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L46 to L47 using L4
.catch java/net/UnknownHostException from L46 to L47 using L5
.catch java/lang/Exception from L46 to L47 using L6
.catch all from L46 to L47 using L7
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch all from L54 to L55 using L7
.catch all from L56 to L57 using L7
.catch java/io/IOException from L58 to L59 using L60
.catch all from L61 to L62 using L7
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch all from L70 to L71 using L7
.catch java/io/IOException from L72 to L73 using L74
.catch all from L75 to L76 using L7
.catch all from L77 to L78 using L7
.catch java/io/IOException from L79 to L80 using L81
.catch java/io/IOException from L82 to L83 using L84
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "dopost:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 4
aconst_null
astore 14
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 18
aconst_null
astore 8
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 19
L1:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L8:
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 20
L9:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L10:
aload 0
aload 20
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L11:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L12:
aload 20
new org/apache/http/entity/ByteArrayEntity
dup
aload 2
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L13:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L14:
aload 19
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
L15:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 4
istore 5
aload 18
astore 7
L16:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L17:
aload 8
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
aload 17
astore 13
iload 6
istore 5
aload 18
astore 7
L18:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L19:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L20:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L21:
aload 8
astore 2
aload 14
ifnull L25
aload 8
astore 2
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L22:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
L23:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
iload 6
istore 5
aload 8
astore 7
L24:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 2
L25:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L26:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 2
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L27:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L28:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L29:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L30:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L31:
aload 15
ifnull L85
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L32:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L33:
goto L29
L2:
astore 1
aload 9
astore 7
L34:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L35:
aload 9
astore 7
L36:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 5
L37:
iload 5
istore 4
aload 9
ifnull L86
L38:
aload 9
invokevirtual java/io/InputStream/close()V
L39:
iload 5
istore 4
L86:
iload 4
ireturn
L85:
iload 6
sipush 200
if_icmpeq L87
iload 6
sipush 201
if_icmpne L88
L87:
iload 6
istore 4
aload 2
ifnull L86
L41:
aload 2
invokevirtual java/io/InputStream/close()V
L42:
iload 6
ireturn
L43:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L88:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L44:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L47
L45:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L46:
aload 3
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L47:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L48:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L51
L49:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L50:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
aload 2
astore 9
aload 2
astore 10
aload 2
astore 11
aload 2
astore 12
aload 2
astore 13
iload 6
istore 5
aload 2
astore 7
L52:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L53:
goto L87
L3:
astore 1
aload 10
astore 7
L54:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L55:
aload 10
astore 7
L56:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 5
L57:
iload 5
istore 4
aload 10
ifnull L86
L58:
aload 10
invokevirtual java/io/InputStream/close()V
L59:
iload 5
ireturn
L60:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L40:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L4:
astore 1
aload 11
astore 7
L61:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L62:
aload 11
astore 7
L63:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 5
L64:
iload 5
istore 4
aload 11
ifnull L86
L65:
aload 11
invokevirtual java/io/InputStream/close()V
L66:
iload 5
ireturn
L67:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L5:
astore 1
aload 12
astore 7
L68:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
aload 12
astore 7
L70:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 5
L71:
iload 5
istore 4
aload 12
ifnull L86
L72:
aload 12
invokevirtual java/io/InputStream/close()V
L73:
iload 5
ireturn
L74:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L6:
astore 1
aload 13
astore 7
L75:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L76:
aload 13
astore 7
L77:
aload 3
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L78:
iload 5
istore 4
aload 13
ifnull L86
L79:
aload 13
invokevirtual java/io/InputStream/close()V
L80:
iload 5
ireturn
L81:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L7:
astore 1
aload 7
ifnull L83
L82:
aload 7
invokevirtual java/io/InputStream/close()V
L83:
aload 1
athrow
L84:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
.limit locals 21
.limit stack 5
.end method

.method public doPostForHttps(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
.throws org/apache/http/client/ClientProtocolException
.throws java/io/IOException
.throws java/security/KeyManagementException
.throws java/security/UnrecoverableKeyException
.throws java/security/NoSuchAlgorithmException
.throws java/security/cert/CertificateException
.throws java/security/KeyStoreException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L24 using L2
.catch all from L25 to L26 using L2
.catch all from L27 to L28 using L2
.catch java/io/IOException from L29 to L30 using L31
.catch java/io/IOException from L32 to L33 using L34
.catch all from L35 to L36 using L2
.catch all from L37 to L38 using L2
.catch all from L39 to L40 using L2
.catch all from L41 to L42 using L2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doPost:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 4
aconst_null
astore 6
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 6
astore 5
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpsClient()Lorg/apache/http/client/HttpClient;
astore 7
L1:
aload 6
astore 5
L3:
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 1
L4:
aload 6
astore 5
L5:
aload 0
aload 1
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L6:
aload 6
astore 5
L7:
aload 1
aload 2
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L8:
aload 6
astore 5
L9:
aload 7
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 7
L10:
aload 6
astore 5
L11:
aload 7
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
L12:
aload 6
astore 5
L13:
aload 7
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 2
L14:
aload 2
astore 5
L15:
aload 7
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 6
L16:
aload 2
astore 1
aload 6
ifnull L20
aload 2
astore 1
aload 2
astore 5
L17:
aload 6
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L20
L18:
aload 2
astore 5
L19:
new java/util/zip/GZIPInputStream
dup
aload 2
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L20:
aload 1
astore 5
L21:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 1
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 2
L22:
aload 1
astore 5
L23:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 6
L24:
aload 1
astore 5
L25:
aload 2
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 8
L26:
aload 8
ifnull L43
aload 1
astore 5
L27:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L28:
goto L24
L2:
astore 1
aload 5
ifnull L30
L29:
aload 5
invokevirtual java/io/InputStream/close()V
L30:
aload 1
athrow
L43:
iload 4
sipush 200
if_icmpeq L44
iload 4
sipush 201
if_icmpne L45
L44:
aload 1
ifnull L33
L32:
aload 1
invokevirtual java/io/InputStream/close()V
L33:
iload 4
ireturn
L45:
aload 1
astore 5
L35:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L38
L36:
aload 1
astore 5
L37:
aload 3
aload 7
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L38:
aload 1
astore 5
L39:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L44
L40:
aload 1
astore 5
L41:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L42:
goto L44
L34:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L31:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L30
.limit locals 9
.limit stack 5
.end method

.method public doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/net/SocketTimeoutException from L0 to L1 using L2
.catch java/net/SocketException from L0 to L1 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L0 to L1 using L4
.catch java/net/UnknownHostException from L0 to L1 using L5
.catch java/lang/Exception from L0 to L1 using L6
.catch all from L0 to L1 using L7
.catch java/net/SocketTimeoutException from L8 to L9 using L2
.catch java/net/SocketException from L8 to L9 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L8 to L9 using L4
.catch java/net/UnknownHostException from L8 to L9 using L5
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/net/SocketTimeoutException from L10 to L11 using L2
.catch java/net/SocketException from L10 to L11 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L10 to L11 using L4
.catch java/net/UnknownHostException from L10 to L11 using L5
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/net/SocketTimeoutException from L12 to L13 using L2
.catch java/net/SocketException from L12 to L13 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L12 to L13 using L4
.catch java/net/UnknownHostException from L12 to L13 using L5
.catch java/lang/Exception from L12 to L13 using L6
.catch all from L12 to L13 using L7
.catch java/net/SocketTimeoutException from L14 to L15 using L2
.catch java/net/SocketException from L14 to L15 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L14 to L15 using L4
.catch java/net/UnknownHostException from L14 to L15 using L5
.catch java/lang/Exception from L14 to L15 using L6
.catch all from L14 to L15 using L7
.catch java/net/SocketTimeoutException from L16 to L17 using L2
.catch java/net/SocketException from L16 to L17 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L16 to L17 using L4
.catch java/net/UnknownHostException from L16 to L17 using L5
.catch java/lang/Exception from L16 to L17 using L6
.catch all from L16 to L17 using L7
.catch java/net/SocketTimeoutException from L18 to L19 using L2
.catch java/net/SocketException from L18 to L19 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L18 to L19 using L4
.catch java/net/UnknownHostException from L18 to L19 using L5
.catch java/lang/Exception from L18 to L19 using L6
.catch all from L18 to L19 using L7
.catch java/net/SocketTimeoutException from L20 to L21 using L2
.catch java/net/SocketException from L20 to L21 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L20 to L21 using L4
.catch java/net/UnknownHostException from L20 to L21 using L5
.catch java/lang/Exception from L20 to L21 using L6
.catch all from L20 to L21 using L7
.catch java/net/SocketTimeoutException from L22 to L23 using L2
.catch java/net/SocketException from L22 to L23 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L22 to L23 using L4
.catch java/net/UnknownHostException from L22 to L23 using L5
.catch java/lang/Exception from L22 to L23 using L6
.catch all from L22 to L23 using L7
.catch java/net/SocketTimeoutException from L24 to L25 using L2
.catch java/net/SocketException from L24 to L25 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L24 to L25 using L4
.catch java/net/UnknownHostException from L24 to L25 using L5
.catch java/lang/Exception from L24 to L25 using L6
.catch all from L24 to L25 using L7
.catch java/net/SocketTimeoutException from L26 to L27 using L2
.catch java/net/SocketException from L26 to L27 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L4
.catch java/net/UnknownHostException from L26 to L27 using L5
.catch java/lang/Exception from L26 to L27 using L6
.catch all from L26 to L27 using L7
.catch java/net/SocketTimeoutException from L28 to L29 using L2
.catch java/net/SocketException from L28 to L29 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L28 to L29 using L4
.catch java/net/UnknownHostException from L28 to L29 using L5
.catch java/lang/Exception from L28 to L29 using L6
.catch all from L28 to L29 using L7
.catch java/net/SocketTimeoutException from L30 to L31 using L2
.catch java/net/SocketException from L30 to L31 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L30 to L31 using L4
.catch java/net/UnknownHostException from L30 to L31 using L5
.catch java/lang/Exception from L30 to L31 using L6
.catch all from L30 to L31 using L7
.catch java/net/SocketTimeoutException from L32 to L33 using L2
.catch java/net/SocketException from L32 to L33 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L32 to L33 using L4
.catch java/net/UnknownHostException from L32 to L33 using L5
.catch java/lang/Exception from L32 to L33 using L6
.catch all from L32 to L33 using L7
.catch java/net/SocketTimeoutException from L34 to L35 using L2
.catch java/net/SocketException from L34 to L35 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L34 to L35 using L4
.catch java/net/UnknownHostException from L34 to L35 using L5
.catch java/lang/Exception from L34 to L35 using L6
.catch all from L34 to L35 using L7
.catch java/net/SocketTimeoutException from L36 to L37 using L2
.catch java/net/SocketException from L36 to L37 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L36 to L37 using L4
.catch java/net/UnknownHostException from L36 to L37 using L5
.catch java/lang/Exception from L36 to L37 using L6
.catch all from L36 to L37 using L7
.catch java/net/SocketTimeoutException from L38 to L39 using L2
.catch java/net/SocketException from L38 to L39 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L38 to L39 using L4
.catch java/net/UnknownHostException from L38 to L39 using L5
.catch java/lang/Exception from L38 to L39 using L6
.catch all from L38 to L39 using L7
.catch all from L40 to L41 using L7
.catch all from L42 to L43 using L7
.catch java/io/IOException from L44 to L45 using L46
.catch java/io/IOException from L47 to L48 using L49
.catch java/net/SocketTimeoutException from L50 to L51 using L2
.catch java/net/SocketException from L50 to L51 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L4
.catch java/net/UnknownHostException from L50 to L51 using L5
.catch java/lang/Exception from L50 to L51 using L6
.catch all from L50 to L51 using L7
.catch java/net/SocketTimeoutException from L52 to L53 using L2
.catch java/net/SocketException from L52 to L53 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L52 to L53 using L4
.catch java/net/UnknownHostException from L52 to L53 using L5
.catch java/lang/Exception from L52 to L53 using L6
.catch all from L52 to L53 using L7
.catch java/net/SocketTimeoutException from L54 to L55 using L2
.catch java/net/SocketException from L54 to L55 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L54 to L55 using L4
.catch java/net/UnknownHostException from L54 to L55 using L5
.catch java/lang/Exception from L54 to L55 using L6
.catch all from L54 to L55 using L7
.catch java/net/SocketTimeoutException from L56 to L57 using L2
.catch java/net/SocketException from L56 to L57 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L56 to L57 using L4
.catch java/net/UnknownHostException from L56 to L57 using L5
.catch java/lang/Exception from L56 to L57 using L6
.catch all from L56 to L57 using L7
.catch java/net/SocketTimeoutException from L58 to L59 using L2
.catch java/net/SocketException from L58 to L59 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L4
.catch java/net/UnknownHostException from L58 to L59 using L5
.catch java/lang/Exception from L58 to L59 using L6
.catch all from L58 to L59 using L7
.catch all from L60 to L61 using L7
.catch all from L62 to L63 using L7
.catch java/io/IOException from L64 to L65 using L66
.catch all from L67 to L68 using L7
.catch all from L69 to L70 using L7
.catch java/io/IOException from L71 to L72 using L73
.catch all from L74 to L75 using L7
.catch all from L76 to L77 using L7
.catch java/io/IOException from L78 to L79 using L80
.catch all from L81 to L82 using L7
.catch all from L83 to L84 using L7
.catch java/io/IOException from L85 to L86 using L87
.catch java/io/IOException from L88 to L89 using L90
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doPut:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/httpRequest/HttpRequest/debug(Ljava/lang/String;)V
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 4
aconst_null
astore 9
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 17
aconst_null
astore 18
aconst_null
astore 8
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L0:
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
astore 19
L1:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L8:
new org/apache/http/client/methods/HttpPut
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPut/<init>(Ljava/lang/String;)V
astore 20
L9:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L10:
aload 0
aload 20
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L11:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L12:
new org/apache/http/entity/StringEntity
dup
aload 2
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 21
L13:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L14:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
L15:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L16:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
L17:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L18:
aload 20
aload 21
invokevirtual org/apache/http/client/methods/HttpPut/setEntity(Lorg/apache/http/HttpEntity;)V
L19:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L20:
aload 19
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
L21:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 4
istore 5
aload 18
astore 7
L22:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L23:
aload 8
astore 10
aload 9
astore 11
aload 15
astore 12
aload 16
astore 13
aload 17
astore 14
iload 6
istore 5
aload 18
astore 7
L24:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 9
L25:
aload 9
astore 10
aload 9
astore 11
aload 9
astore 12
aload 9
astore 13
aload 9
astore 14
iload 6
istore 5
aload 9
astore 7
L26:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 15
L27:
aload 9
astore 8
aload 15
ifnull L31
aload 9
astore 8
aload 9
astore 10
aload 9
astore 11
aload 9
astore 12
aload 9
astore 13
aload 9
astore 14
iload 6
istore 5
aload 9
astore 7
L28:
aload 15
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L31
L29:
aload 9
astore 10
aload 9
astore 11
aload 9
astore 12
aload 9
astore 13
aload 9
astore 14
iload 6
istore 5
aload 9
astore 7
L30:
new java/util/zip/GZIPInputStream
dup
aload 9
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 8
L31:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L32:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 8
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 9
L33:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L34:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 15
L35:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L36:
aload 9
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 16
L37:
aload 16
ifnull L91
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L38:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L39:
goto L35
L2:
astore 1
aload 10
astore 7
L40:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L41:
aload 10
astore 7
L42:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 5
L43:
iload 5
istore 4
aload 10
ifnull L92
L44:
aload 10
invokevirtual java/io/InputStream/close()V
L45:
iload 5
istore 4
L92:
iload 4
ireturn
L91:
iload 6
sipush 200
if_icmpeq L93
iload 6
sipush 201
if_icmpne L94
L93:
iload 6
istore 4
aload 8
ifnull L92
L47:
aload 8
invokevirtual java/io/InputStream/close()V
L48:
iload 6
ireturn
L49:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L94:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L50:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L53
L51:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L52:
aload 3
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L53:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L54:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L57
L55:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L56:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L57:
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
aload 8
astore 13
aload 8
astore 14
iload 6
istore 5
aload 8
astore 7
L58:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", send="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L59:
goto L93
L3:
astore 1
aload 11
astore 7
L60:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L61:
aload 11
astore 7
L62:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 5
L63:
iload 5
istore 4
aload 11
ifnull L92
L64:
aload 11
invokevirtual java/io/InputStream/close()V
L65:
iload 5
ireturn
L66:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L46:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L4:
astore 1
aload 12
astore 7
L67:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L68:
aload 12
astore 7
L69:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 5
L70:
iload 5
istore 4
aload 12
ifnull L92
L71:
aload 12
invokevirtual java/io/InputStream/close()V
L72:
iload 5
ireturn
L73:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L5:
astore 1
aload 13
astore 7
L74:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L75:
aload 13
astore 7
L76:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 5
L77:
iload 5
istore 4
aload 13
ifnull L92
L78:
aload 13
invokevirtual java/io/InputStream/close()V
L79:
iload 5
ireturn
L80:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L6:
astore 1
aload 14
astore 7
L81:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L82:
aload 14
astore 7
L83:
aload 3
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L84:
iload 5
istore 4
aload 14
ifnull L92
L85:
aload 14
invokevirtual java/io/InputStream/close()V
L86:
iload 5
ireturn
L87:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L7:
astore 1
aload 7
ifnull L89
L88:
aload 7
invokevirtual java/io/InputStream/close()V
L89:
aload 1
athrow
L90:
astore 2
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L89
.limit locals 22
.limit stack 5
.end method

.method public doPut(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aload 3
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public doUploadImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)I
aload 0
aload 1
aload 2
aload 3
iconst_1
invokevirtual com/common/android/utils/httpRequest/HttpRequest/doUploadImageWithWizard(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method public doUploadImageWithWizard(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
.catch java/io/UnsupportedEncodingException from L1 to L3 using L2
.catch java/io/UnsupportedEncodingException from L3 to L5 using L2
.catch java/net/SocketTimeoutException from L5 to L6 using L7
.catch org/apache/http/client/ClientProtocolException from L5 to L6 using L8
.catch java/io/IOException from L5 to L6 using L9
.catch java/lang/RuntimeException from L5 to L6 using L10
.catch java/net/URISyntaxException from L5 to L6 using L11
.catch java/lang/Exception from L5 to L6 using L12
.catch java/io/UnsupportedEncodingException from L13 to L14 using L2
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 5
aload 2
ifnull L15
aload 2
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L16
L15:
iload 5
ireturn
L16:
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
astore 6
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
aload 6
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 6
L0:
aload 6
ldc "offset"
new org/apache/http/entity/mime/content/StringBody
dup
iconst_0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 7
aload 2
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 7
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 7
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
ldc "tmp.jpg"
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 2
aload 6
ldc "md5"
new org/apache/http/entity/mime/content/StringBody
dup
aload 7
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMD5OfBytes([B)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L1:
aload 7
invokevirtual java/io/ByteArrayOutputStream/close()V
L3:
aload 6
ldc "photo"
aload 2
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 6
ldc "filesize"
new org/apache/http/entity/mime/content/StringBody
dup
aload 2
invokevirtual org/apache/http/entity/mime/content/ByteArrayBody/getContentLength()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 6
ldc "wizard"
new org/apache/http/entity/mime/content/StringBody
dup
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L5:
aload 0
aload 3
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
aload 6
invokevirtual com/common/android/utils/httpRequest/HttpRequest/createMethod(Ljava/lang/String;Ljava/net/URI;Lorg/apache/http/entity/mime/MultipartEntity;)Lorg/apache/http/client/methods/HttpUriRequest;
astore 1
aload 0
aload 1
invokevirtual com/common/android/utils/httpRequest/HttpRequest/setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
aload 0
invokespecial com/common/android/utils/httpRequest/HttpRequest/getHttpClient()Lorg/apache/http/client/HttpClient;
aload 1
new org/apache/http/protocol/BasicHttpContext
dup
invokespecial org/apache/http/protocol/BasicHttpContext/<init>()V
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse; 2
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
L6:
iload 4
ireturn
L4:
astore 7
L13:
aload 7
invokevirtual java/io/IOException/printStackTrace()V
L14:
goto L3
L2:
astore 2
aload 2
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L5
L7:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 4
goto L6
L8:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
istore 4
goto L6
L9:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
istore 4
goto L6
L10:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
istore 4
goto L6
L11:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
istore 4
goto L6
L12:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
istore 4
goto L6
.limit locals 8
.limit stack 6
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
.catch java/net/URISyntaxException from L0 to L1 using L2
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 5
L0:
aload 5
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L1:
aload 5
ldc "Accept-Encoding"
ldc "gzip"
invokevirtual org/apache/http/client/methods/HttpGet/addHeader(Ljava/lang/String;Ljava/lang/String;)V
aload 5
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/addHeader(Lorg/apache/http/Header;)V
new com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask
dup
aload 0
aload 5
aload 3
aload 4
invokespecial com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/<init>(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
astore 1
aload 1
invokevirtual java/net/URISyntaxException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 6
.end method

.method public setAgent(Lcom/common/android/utils/httpRequest/ISetHeadAgent;)V
return
.limit locals 2
.limit stack 0
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 1
ldc "Accept-Encoding"
ldc "gzip"
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/mSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/mSid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public setSid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/httpRequest/HttpRequest/mSid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
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
ldc "gzip"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest/mSid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
return
.limit locals 2
.limit stack 6
.end method
