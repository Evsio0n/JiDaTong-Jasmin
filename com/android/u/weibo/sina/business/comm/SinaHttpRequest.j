.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/SinaHttpRequest
.super java/lang/Object

.field private static final 'ACCEPT_ENCODEING' Ljava/lang/String; = "Accept-Encoding"

.field private static final 'CONNECT_TIME_OUT' I = 20000


.field private static final 'GZIP' Ljava/lang/String; = "gzip"

.field private static final 'READ_TIME_OUT' I = 60000


.field private static final 'TAG' Ljava/lang/String; = "debug"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/comm/SinaHttpRequest/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private checkProxy(Lorg/apache/http/client/HttpClient;)V
aload 0
aload 0
getfield com/android/u/weibo/sina/business/comm/SinaHttpRequest/mContext Landroid/content/Context;
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/needToProxy(Landroid/content/Context;)Z
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
new com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx
dup
aload 2
invokespecial com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
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

.method public doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aconst_null
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doGet(Ljava/lang/String;[Lorg/apache/http/Header;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public doGet(Ljava/lang/String;[Lorg/apache/http/Header;Ljava/lang/StringBuilder;)I
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
.catch java/net/SocketTimeoutException from L42 to L43 using L2
.catch java/net/SocketException from L42 to L43 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L42 to L43 using L4
.catch java/net/UnknownHostException from L42 to L43 using L5
.catch java/lang/Exception from L42 to L43 using L6
.catch all from L42 to L43 using L7
.catch java/net/SocketTimeoutException from L44 to L45 using L2
.catch java/net/SocketException from L44 to L45 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L44 to L45 using L4
.catch java/net/UnknownHostException from L44 to L45 using L5
.catch java/lang/Exception from L44 to L45 using L6
.catch all from L44 to L45 using L7
.catch all from L46 to L47 using L7
.catch all from L48 to L49 using L7
.catch java/io/IOException from L50 to L51 using L52
.catch java/io/IOException from L53 to L54 using L55
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
.catch java/net/SocketTimeoutException from L62 to L63 using L2
.catch java/net/SocketException from L62 to L63 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L62 to L63 using L4
.catch java/net/UnknownHostException from L62 to L63 using L5
.catch java/lang/Exception from L62 to L63 using L6
.catch all from L62 to L63 using L7
.catch java/net/SocketTimeoutException from L64 to L65 using L2
.catch java/net/SocketException from L64 to L65 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L64 to L65 using L4
.catch java/net/UnknownHostException from L64 to L65 using L5
.catch java/lang/Exception from L64 to L65 using L6
.catch all from L64 to L65 using L7
.catch all from L66 to L67 using L7
.catch all from L68 to L69 using L7
.catch java/io/IOException from L70 to L71 using L72
.catch all from L73 to L74 using L7
.catch all from L75 to L76 using L7
.catch java/io/IOException from L77 to L78 using L79
.catch all from L80 to L81 using L7
.catch all from L82 to L83 using L7
.catch java/io/IOException from L84 to L85 using L86
.catch all from L87 to L88 using L7
.catch all from L89 to L90 using L7
.catch java/io/IOException from L91 to L92 using L93
.catch java/io/IOException from L94 to L95 using L96
getstatic com/android/u/weibo/R$string/nd_http_error I
istore 4
aconst_null
astore 13
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
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 18
L1:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L8:
aload 18
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L10:
aload 18
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L12:
aload 18
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
L13:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L14:
aload 0
aload 18
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 18
L15:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L16:
aload 0
aload 18
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
L17:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L18:
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 19
L19:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L20:
aload 19
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L21:
aload 2
ifnull L23
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L22:
aload 19
aload 2
invokevirtual org/apache/http/client/methods/HttpGet/setHeaders([Lorg/apache/http/Header;)V
L23:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L24:
aload 19
ldc "Accept-Encoding"
ldc "gzip"
invokevirtual org/apache/http/client/methods/HttpGet/addHeader(Ljava/lang/String;Ljava/lang/String;)V
L25:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L26:
aload 18
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
L27:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L28:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
L29:
aload 7
astore 8
aload 13
astore 9
aload 14
astore 10
aload 15
astore 11
aload 16
astore 12
iload 4
istore 5
aload 17
astore 6
L30:
aload 18
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 7
L31:
aload 7
astore 8
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
iload 4
istore 5
aload 7
astore 6
L32:
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 13
L33:
aload 7
astore 2
aload 13
ifnull L37
aload 7
astore 2
aload 7
astore 8
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
iload 4
istore 5
aload 7
astore 6
L34:
aload 13
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L37
L35:
aload 7
astore 8
aload 7
astore 9
aload 7
astore 10
aload 7
astore 11
aload 7
astore 12
iload 4
istore 5
aload 7
astore 6
L36:
new java/util/zip/GZIPInputStream
dup
aload 7
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 2
L37:
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
iload 4
istore 5
aload 2
astore 6
L38:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 2
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 7
L39:
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
iload 4
istore 5
aload 2
astore 6
L40:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 13
L41:
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
iload 4
istore 5
aload 2
astore 6
L42:
aload 7
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 14
L43:
aload 14
ifnull L97
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
iload 4
istore 5
aload 2
astore 6
L44:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L45:
goto L41
L2:
astore 1
aload 8
astore 6
L46:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L47:
aload 8
astore 6
L48:
getstatic com/android/u/weibo/R$string/nd_socket_timeout_error I
istore 5
L49:
iload 5
istore 4
aload 8
ifnull L98
L50:
aload 8
invokevirtual java/io/InputStream/close()V
L51:
iload 5
istore 4
L98:
iload 4
ireturn
L97:
iload 4
sipush 200
if_icmpeq L99
iload 4
sipush 201
if_icmpne L100
L99:
iconst_0
istore 5
L101:
iload 5
istore 4
aload 2
ifnull L98
L53:
aload 2
invokevirtual java/io/InputStream/close()V
L54:
iload 5
ireturn
L55:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L100:
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
iload 4
istore 5
aload 2
astore 6
L56:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L59
L57:
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
iload 4
istore 5
aload 2
astore 6
L58:
aload 3
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L59:
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
iload 4
istore 5
aload 2
astore 6
L60:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L63
L61:
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
iload 4
istore 5
aload 2
astore 6
L62:
ldc "debug"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L63:
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
iload 4
istore 5
aload 2
astore 6
L64:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nRet="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L65:
iload 4
istore 5
goto L101
L3:
astore 1
aload 9
astore 6
L66:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L67:
aload 9
astore 6
L68:
getstatic com/android/u/weibo/R$string/nd_socket_error I
istore 5
L69:
iload 5
istore 4
aload 9
ifnull L98
L70:
aload 9
invokevirtual java/io/InputStream/close()V
L71:
iload 5
ireturn
L72:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L52:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L4:
astore 1
aload 10
astore 6
L73:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L74:
aload 10
astore 6
L75:
getstatic com/android/u/weibo/R$string/nd_connect_timeout_error I
istore 5
L76:
iload 5
istore 4
aload 10
ifnull L98
L77:
aload 10
invokevirtual java/io/InputStream/close()V
L78:
iload 5
ireturn
L79:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L5:
astore 1
aload 11
astore 6
L80:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L81:
aload 11
astore 6
L82:
getstatic com/android/u/weibo/R$string/nd_unknown_host_error I
istore 5
L83:
iload 5
istore 4
aload 11
ifnull L98
L84:
aload 11
invokevirtual java/io/InputStream/close()V
L85:
iload 5
ireturn
L86:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L6:
astore 1
aload 12
astore 6
L87:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L88:
aload 12
astore 6
L89:
aload 3
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L90:
iload 5
istore 4
aload 12
ifnull L98
L91:
aload 12
invokevirtual java/io/InputStream/close()V
L92:
iload 5
ireturn
L93:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
L7:
astore 1
aload 6
ifnull L95
L94:
aload 6
invokevirtual java/io/InputStream/close()V
L95:
aload 1
athrow
L96:
astore 2
ldc "debug"
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L95
.limit locals 20
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
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
.catch java/net/SocketTimeoutException from L42 to L43 using L2
.catch java/net/SocketException from L42 to L43 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L42 to L43 using L4
.catch java/net/UnknownHostException from L42 to L43 using L5
.catch java/lang/Exception from L42 to L43 using L6
.catch all from L42 to L43 using L7
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
.catch all from L48 to L49 using L7
.catch all from L50 to L51 using L7
.catch java/io/IOException from L52 to L53 using L54
.catch java/io/IOException from L55 to L56 using L57
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
.catch java/net/SocketTimeoutException from L62 to L63 using L2
.catch java/net/SocketException from L62 to L63 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L62 to L63 using L4
.catch java/net/UnknownHostException from L62 to L63 using L5
.catch java/lang/Exception from L62 to L63 using L6
.catch all from L62 to L63 using L7
.catch java/net/SocketTimeoutException from L64 to L65 using L2
.catch java/net/SocketException from L64 to L65 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L64 to L65 using L4
.catch java/net/UnknownHostException from L64 to L65 using L5
.catch java/lang/Exception from L64 to L65 using L6
.catch all from L64 to L65 using L7
.catch all from L66 to L67 using L7
.catch all from L68 to L69 using L7
.catch java/io/IOException from L70 to L71 using L72
.catch all from L73 to L74 using L7
.catch all from L75 to L76 using L7
.catch java/io/IOException from L77 to L78 using L79
.catch all from L80 to L81 using L7
.catch all from L82 to L83 using L7
.catch java/io/IOException from L84 to L85 using L86
.catch all from L87 to L88 using L7
.catch all from L89 to L90 using L7
.catch java/io/IOException from L91 to L92 using L93
.catch java/io/IOException from L94 to L95 using L96
getstatic com/android/u/weibo/R$string/nd_http_error I
istore 5
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
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 20
L1:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L8:
aload 20
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L10:
aload 20
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L12:
aload 0
aload 20
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 20
L13:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L14:
aload 0
aload 20
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
L15:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L16:
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 1
L17:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L18:
aload 1
ldc "Accept-Encoding"
ldc "gzip"
invokevirtual org/apache/http/client/methods/HttpPost/addHeader(Ljava/lang/String;Ljava/lang/String;)V
L19:
aload 2
ifnull L27
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L20:
new org/apache/http/entity/StringEntity
dup
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;)V
astore 2
L21:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L22:
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
aload 3
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
L23:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L24:
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
L25:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L26:
aload 1
aload 2
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L27:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L28:
aload 20
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 3
L29:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L30:
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L31:
aload 14
astore 9
aload 15
astore 10
aload 16
astore 11
aload 17
astore 12
aload 18
astore 13
iload 5
istore 6
aload 19
astore 8
L32:
aload 3
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
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
iload 5
istore 6
aload 2
astore 8
L34:
aload 3
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L35:
aload 2
astore 1
aload 14
ifnull L39
aload 2
astore 1
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
iload 5
istore 6
aload 2
astore 8
L36:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L39
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
iload 5
istore 6
aload 2
astore 8
L38:
new java/util/zip/GZIPInputStream
dup
aload 2
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L39:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L40:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 1
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 2
L41:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L42:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L43:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L44:
aload 2
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L45:
aload 15
ifnull L97
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L46:
aload 4
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
L47:
goto L43
L2:
astore 1
aload 9
astore 8
L48:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L49:
aload 9
astore 8
L50:
getstatic com/android/u/weibo/R$string/nd_socket_timeout_error I
istore 6
L51:
iload 6
istore 5
aload 9
ifnull L98
L52:
aload 9
invokevirtual java/io/InputStream/close()V
L53:
iload 6
istore 5
L98:
iload 5
ireturn
L97:
iload 5
sipush 200
if_icmpeq L99
iload 5
sipush 201
if_icmpne L100
L99:
iconst_0
istore 7
L101:
iload 7
istore 5
aload 1
ifnull L98
L55:
aload 1
invokevirtual java/io/InputStream/close()V
L56:
iload 7
ireturn
L57:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 7
ireturn
L100:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L58:
aload 4
invokevirtual java/lang/StringBuilder/length()I
ifgt L61
L59:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L60:
aload 4
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L61:
aload 1
astore 9
iload 5
istore 7
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L62:
aload 4
invokevirtual java/lang/StringBuilder/length()I
ifle L101
L63:
aload 1
astore 9
aload 1
astore 10
aload 1
astore 11
aload 1
astore 12
aload 1
astore 13
iload 5
istore 6
aload 1
astore 8
L64:
ldc "debug"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L65:
iload 5
istore 7
goto L101
L3:
astore 1
aload 10
astore 8
L66:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L67:
aload 10
astore 8
L68:
getstatic com/android/u/weibo/R$string/nd_socket_error I
istore 6
L69:
iload 6
istore 5
aload 10
ifnull L98
L70:
aload 10
invokevirtual java/io/InputStream/close()V
L71:
iload 6
ireturn
L72:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L54:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L4:
astore 1
aload 11
astore 8
L73:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L74:
aload 11
astore 8
L75:
getstatic com/android/u/weibo/R$string/nd_connect_timeout_error I
istore 6
L76:
iload 6
istore 5
aload 11
ifnull L98
L77:
aload 11
invokevirtual java/io/InputStream/close()V
L78:
iload 6
ireturn
L79:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L5:
astore 1
aload 12
astore 8
L80:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L81:
aload 12
astore 8
L82:
getstatic com/android/u/weibo/R$string/nd_unknown_host_error I
istore 6
L83:
iload 6
istore 5
aload 12
ifnull L98
L84:
aload 12
invokevirtual java/io/InputStream/close()V
L85:
iload 6
ireturn
L86:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L6:
astore 1
aload 13
astore 8
L87:
ldc "debug"
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L88:
aload 13
astore 8
L89:
aload 4
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L90:
iload 6
istore 5
aload 13
ifnull L98
L91:
aload 13
invokevirtual java/io/InputStream/close()V
L92:
iload 6
ireturn
L93:
astore 1
ldc "debug"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
L7:
astore 1
aload 8
ifnull L95
L94:
aload 8
invokevirtual java/io/InputStream/close()V
L95:
aload 1
athrow
L96:
astore 2
ldc "debug"
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L95
.limit locals 21
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
ldc "application/json"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 5
.end method
