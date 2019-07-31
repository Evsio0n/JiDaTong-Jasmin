.bytecode 50.0
.class public synchronized com/nd/crashcollection/lib/HttpRequest
.super java/lang/Object
.implements com/nd/crashcollection/lib/IHttpRequest

.field private static final 'ND_CONNECT_TIMEOUT_ERROR' I = -4


.field private static final 'ND_HTTP_ERROR' I = -1


.field private static final 'ND_SOCKET_ERROR' I = -3


.field private static final 'ND_SOCKET_TIMEOUT_ERROR' I = -2


.field private static final 'ND_UNKNOWN_HOST_ERROR' I = -5


.field private static 'mHttp' Lcom/nd/crashcollection/lib/IHttpRequest;

.field private final 'ACCEPT_ENCODEING' Ljava/lang/String;

.field private final 'GZIP' Ljava/lang/String;

.field protected 'TAG' Ljava/lang/String;

.field private final 'mConnectTimeOut' I

.field protected 'mContext' Landroid/content/Context;

.field private final 'mReadTimeOut' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "HttpRequest"
putfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
ldc "gzip"
putfield com/nd/crashcollection/lib/HttpRequest/GZIP Ljava/lang/String;
aload 0
ldc "Accept-Encoding"
putfield com/nd/crashcollection/lib/HttpRequest/ACCEPT_ENCODEING Ljava/lang/String;
aload 0
sipush 20000
putfield com/nd/crashcollection/lib/HttpRequest/mConnectTimeOut I
aload 0
ldc_w 60000
putfield com/nd/crashcollection/lib/HttpRequest/mReadTimeOut I
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/nd/crashcollection/lib/HttpRequest/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private checkProxy(Lorg/apache/http/client/HttpClient;)V
aload 0
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/mContext Landroid/content/Context;
invokespecial com/nd/crashcollection/lib/HttpRequest/needToProxy(Landroid/content/Context;)Z
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

.method public static getInstance(Landroid/content/Context;)Lcom/nd/crashcollection/lib/IHttpRequest;
getstatic com/nd/crashcollection/lib/HttpRequest/mHttp Lcom/nd/crashcollection/lib/IHttpRequest;
ifnonnull L0
new com/nd/crashcollection/lib/HttpRequest
dup
aload 0
invokespecial com/nd/crashcollection/lib/HttpRequest/<init>(Landroid/content/Context;)V
putstatic com/nd/crashcollection/lib/HttpRequest/mHttp Lcom/nd/crashcollection/lib/IHttpRequest;
L0:
getstatic com/nd/crashcollection/lib/HttpRequest/mHttp Lcom/nd/crashcollection/lib/IHttpRequest;
areturn
.limit locals 1
.limit stack 3
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
.catch java/net/SocketTimeoutException from L48 to L49 using L2
.catch java/net/SocketException from L48 to L49 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L4
.catch java/net/UnknownHostException from L48 to L49 using L5
.catch java/lang/Exception from L48 to L49 using L6
.catch all from L48 to L49 using L7
.catch java/io/IOException from L50 to L51 using L52
.catch java/net/SocketTimeoutException from L53 to L54 using L2
.catch java/net/SocketException from L53 to L54 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L53 to L54 using L4
.catch java/net/UnknownHostException from L53 to L54 using L5
.catch java/lang/Exception from L53 to L54 using L6
.catch all from L53 to L54 using L7
.catch all from L55 to L56 using L7
.catch java/io/IOException from L57 to L58 using L59
.catch all from L60 to L61 using L7
.catch java/io/IOException from L62 to L63 using L64
.catch all from L65 to L66 using L7
.catch java/io/IOException from L67 to L68 using L69
.catch all from L70 to L71 using L7
.catch java/io/IOException from L72 to L73 using L74
.catch all from L75 to L76 using L7
.catch all from L77 to L78 using L7
.catch java/io/IOException from L79 to L80 using L81
.catch java/io/IOException from L82 to L83 using L84
iconst_m1
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
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 18
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
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
aload 0
aload 18
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
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
new org/apache/http/client/methods/HttpDelete
dup
aload 1
invokespecial org/apache/http/client/methods/HttpDelete/<init>(Ljava/lang/String;)V
astore 19
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
aload 0
aload 19
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
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
iload 3
istore 4
aload 17
astore 6
L24:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L25:
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
L26:
aload 18
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
iload 5
istore 4
aload 8
astore 6
L28:
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L29:
aload 8
astore 7
aload 14
ifnull L33
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
iload 5
istore 4
aload 8
astore 6
L32:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 7
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
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 7
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
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
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L37:
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
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L39:
aload 15
ifnonnull L85
iload 5
sipush 200
if_icmpeq L49
iload 5
sipush 201
if_icmpeq L49
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
L40:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifgt L43
L41:
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
L42:
aload 2
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L43:
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
ifle L47
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L49:
iload 5
istore 3
aload 7
ifnull L86
L50:
aload 7
invokevirtual java/io/InputStream/close()V
L51:
iload 5
istore 3
L86:
iload 3
ireturn
L85:
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
L53:
aload 2
new java/lang/StringBuilder
dup
aload 15
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L54:
goto L37
L2:
astore 1
aload 9
astore 6
L55:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L56:
bipush -2
istore 3
aload 9
ifnull L86
L57:
aload 9
invokevirtual java/io/InputStream/close()V
L58:
bipush -2
ireturn
L59:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L3:
astore 1
aload 10
astore 6
L60:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L61:
bipush -3
istore 3
aload 10
ifnull L86
L62:
aload 10
invokevirtual java/io/InputStream/close()V
L63:
bipush -3
ireturn
L64:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -3
ireturn
L4:
astore 1
aload 11
astore 6
L65:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L66:
bipush -4
istore 3
aload 11
ifnull L86
L67:
aload 11
invokevirtual java/io/InputStream/close()V
L68:
bipush -4
ireturn
L69:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -4
ireturn
L5:
astore 1
aload 12
astore 6
L70:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L71:
bipush -5
istore 3
aload 12
ifnull L86
L72:
aload 12
invokevirtual java/io/InputStream/close()V
L73:
bipush -5
ireturn
L74:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -5
ireturn
L6:
astore 1
aload 13
astore 6
L75:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L76:
aload 13
astore 6
L77:
aload 2
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
L52:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
.limit locals 20
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
.catch java/net/SocketTimeoutException from L41 to L42 using L43
.catch java/net/SocketException from L41 to L42 using L44
.catch org/apache/http/conn/ConnectTimeoutException from L41 to L42 using L45
.catch java/net/UnknownHostException from L41 to L42 using L46
.catch java/lang/Exception from L41 to L42 using L47
.catch all from L41 to L42 using L48
.catch java/net/SocketTimeoutException from L42 to L49 using L43
.catch java/net/SocketException from L42 to L49 using L44
.catch org/apache/http/conn/ConnectTimeoutException from L42 to L49 using L45
.catch java/net/UnknownHostException from L42 to L49 using L46
.catch java/lang/Exception from L42 to L49 using L47
.catch all from L42 to L49 using L48
.catch java/net/SocketTimeoutException from L50 to L51 using L43
.catch java/net/SocketException from L50 to L51 using L44
.catch org/apache/http/conn/ConnectTimeoutException from L50 to L51 using L45
.catch java/net/UnknownHostException from L50 to L51 using L46
.catch java/lang/Exception from L50 to L51 using L47
.catch all from L50 to L51 using L48
.catch java/io/IOException from L52 to L53 using L54
.catch java/io/IOException from L55 to L56 using L57
.catch java/net/SocketTimeoutException from L58 to L59 using L43
.catch java/net/SocketException from L58 to L59 using L44
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L45
.catch java/net/UnknownHostException from L58 to L59 using L46
.catch java/lang/Exception from L58 to L59 using L47
.catch all from L58 to L59 using L48
.catch all from L60 to L61 using L7
.catch java/io/IOException from L62 to L63 using L64
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch java/io/IOException from L70 to L71 using L72
.catch java/io/IOException from L73 to L74 using L75
.catch all from L76 to L77 using L7
.catch java/io/IOException from L78 to L79 using L80
.catch java/io/IOException from L81 to L82 using L83
.catch all from L84 to L85 using L7
.catch java/io/IOException from L86 to L87 using L88
.catch java/io/IOException from L89 to L90 using L91
.catch all from L92 to L93 using L7
.catch all from L94 to L95 using L7
.catch all from L96 to L97 using L7
.catch java/io/IOException from L98 to L99 using L100
.catch java/io/IOException from L101 to L102 using L103
.catch java/io/IOException from L104 to L105 using L106
.catch java/io/IOException from L107 to L108 using L109
iconst_m1
istore 3
aconst_null
astore 8
aconst_null
astore 20
aconst_null
astore 21
aconst_null
astore 22
aconst_null
astore 23
aconst_null
astore 5
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
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 24
L1:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L8:
aload 24
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
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
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L12:
aload 24
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
L13:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L14:
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 24
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
astore 24
L15:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L16:
aload 0
aload 24
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
L17:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L18:
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 25
L19:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L20:
aload 25
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
L21:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L22:
aload 0
aload 25
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
L23:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L24:
aload 24
aload 25
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 24
L25:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L26:
aload 24
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 3
L27:
aload 5
astore 9
aload 8
astore 10
aload 20
astore 11
aload 21
astore 12
iload 3
istore 4
aload 22
astore 6
aload 19
astore 7
aload 23
astore 13
L28:
aload 24
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
L29:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L30:
aload 24
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 20
L31:
aload 8
astore 5
aload 20
ifnull L35
aload 8
astore 5
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L32:
aload 20
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L35
L33:
aload 8
astore 9
aload 8
astore 10
aload 8
astore 11
aload 8
astore 12
iload 3
istore 4
aload 8
astore 6
aload 19
astore 7
aload 8
astore 13
L34:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 5
L35:
aload 5
astore 9
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L36:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L39
L37:
aload 5
astore 9
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L38:
aload 2
invokevirtual java/io/File/delete()Z
pop
L39:
aload 5
astore 9
aload 5
astore 10
aload 5
astore 11
aload 5
astore 12
iload 3
istore 4
aload 5
astore 6
aload 19
astore 7
aload 5
astore 13
L40:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 8
L41:
sipush 1024
newarray byte
astore 6
L42:
aload 5
aload 6
invokevirtual java/io/InputStream/read([B)I
istore 4
L49:
iload 4
iconst_m1
if_icmpne L58
iload 3
sipush 200
if_icmpeq L51
iload 3
sipush 201
if_icmpeq L51
L50:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
aload 5
ifnull L53
L52:
aload 5
invokevirtual java/io/InputStream/close()V
L53:
aload 8
ifnull L110
L55:
aload 8
invokevirtual java/io/OutputStream/close()V
L56:
iload 3
ireturn
L58:
aload 8
aload 6
iconst_0
iload 4
invokevirtual java/io/OutputStream/write([BII)V
L59:
goto L42
L43:
astore 2
aload 8
astore 1
L111:
aload 5
astore 6
aload 1
astore 7
L60:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L61:
bipush -2
istore 3
aload 5
ifnull L63
L62:
aload 5
invokevirtual java/io/InputStream/close()V
L63:
aload 1
ifnull L56
L65:
aload 1
invokevirtual java/io/OutputStream/close()V
L66:
bipush -2
ireturn
L67:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
bipush -2
ireturn
L64:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L63
L3:
astore 2
aload 15
astore 1
aload 9
astore 5
L112:
aload 5
astore 6
aload 1
astore 7
L68:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
bipush -3
istore 3
aload 5
ifnull L71
L70:
aload 5
invokevirtual java/io/InputStream/close()V
L71:
aload 1
ifnull L56
L73:
aload 1
invokevirtual java/io/OutputStream/close()V
L74:
bipush -3
ireturn
L75:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
bipush -3
ireturn
L72:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L71
L4:
astore 2
aload 16
astore 1
aload 10
astore 5
L113:
aload 5
astore 6
aload 1
astore 7
L76:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L77:
bipush -4
istore 3
aload 5
ifnull L79
L78:
aload 5
invokevirtual java/io/InputStream/close()V
L79:
aload 1
ifnull L56
L81:
aload 1
invokevirtual java/io/OutputStream/close()V
L82:
bipush -4
ireturn
L83:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
bipush -4
ireturn
L80:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L79
L5:
astore 2
aload 17
astore 1
aload 11
astore 5
L114:
aload 5
astore 6
aload 1
astore 7
L84:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 2
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L85:
bipush -5
istore 3
aload 5
ifnull L87
L86:
aload 5
invokevirtual java/io/InputStream/close()V
L87:
aload 1
ifnull L56
L89:
aload 1
invokevirtual java/io/OutputStream/close()V
L90:
bipush -5
ireturn
L91:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
bipush -5
ireturn
L88:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L87
L6:
astore 8
aload 18
astore 1
aload 12
astore 5
L115:
aload 5
astore 6
aload 1
astore 7
L92:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L95
L93:
aload 5
astore 6
aload 1
astore 7
L94:
aload 2
invokevirtual java/io/File/delete()Z
pop
L95:
aload 5
astore 6
aload 1
astore 7
L96:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 8
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L97:
aload 5
ifnull L99
L98:
aload 5
invokevirtual java/io/InputStream/close()V
L99:
iload 4
istore 3
aload 1
ifnull L56
L101:
aload 1
invokevirtual java/io/OutputStream/close()V
L102:
iload 4
ireturn
L103:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 4
ireturn
L100:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L99
L7:
astore 1
aload 6
astore 5
L116:
aload 5
ifnull L105
L104:
aload 5
invokevirtual java/io/InputStream/close()V
L105:
aload 7
ifnull L108
L107:
aload 7
invokevirtual java/io/OutputStream/close()V
L108:
aload 1
athrow
L106:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L105
L109:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L108
L54:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L53
L57:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L110:
iload 3
ireturn
L48:
astore 1
aload 8
astore 7
goto L116
L47:
astore 6
aload 8
astore 1
aload 6
astore 8
iload 3
istore 4
goto L115
L46:
astore 2
aload 8
astore 1
goto L114
L45:
astore 2
aload 8
astore 1
goto L113
L44:
astore 2
aload 8
astore 1
goto L112
L2:
astore 2
aload 13
astore 5
aload 14
astore 1
goto L111
.limit locals 26
.limit stack 4
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
.catch java/io/IOException from L52 to L53 using L54
.catch java/net/SocketTimeoutException from L55 to L56 using L2
.catch java/net/SocketException from L55 to L56 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L55 to L56 using L4
.catch java/net/UnknownHostException from L55 to L56 using L5
.catch java/lang/Exception from L55 to L56 using L6
.catch all from L55 to L56 using L7
.catch all from L57 to L58 using L7
.catch java/io/IOException from L59 to L60 using L61
.catch all from L62 to L63 using L7
.catch java/io/IOException from L64 to L65 using L66
.catch all from L67 to L68 using L7
.catch java/io/IOException from L69 to L70 using L71
.catch all from L72 to L73 using L7
.catch java/io/IOException from L74 to L75 using L76
.catch all from L77 to L78 using L7
.catch all from L79 to L80 using L7
.catch java/io/IOException from L81 to L82 using L83
.catch java/io/IOException from L84 to L85 using L86
iconst_m1
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
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 18
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
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
aload 0
aload 18
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
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
new org/apache/http/client/methods/HttpGet
dup
invokespecial org/apache/http/client/methods/HttpGet/<init>()V
astore 19
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
aload 19
new java/net/URI
dup
aload 1
invokespecial java/net/URI/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpGet/setURI(Ljava/net/URI;)V
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
aload 0
aload 19
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
iload 3
istore 4
aload 17
astore 6
L24:
aload 18
aload 19
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 18
L25:
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
L26:
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
L27:
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
L28:
aload 18
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
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
aload 18
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L31:
aload 8
astore 7
aload 14
ifnull L35
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
L32:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L35
L33:
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
L34:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 7
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
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 7
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
L37:
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
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L39:
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
L40:
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L41:
aload 15
ifnonnull L87
iload 5
sipush 200
if_icmpeq L51
iload 5
sipush 201
if_icmpeq L51
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
L42:
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifgt L45
L43:
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
aload 18
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
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
invokevirtual java/lang/StringBuilder/length()I
ifle L49
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
iload 5
istore 3
aload 7
ifnull L88
L52:
aload 7
invokevirtual java/io/InputStream/close()V
L53:
iload 5
istore 3
L88:
iload 3
ireturn
L87:
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
L55:
aload 2
new java/lang/StringBuilder
dup
aload 15
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L56:
goto L39
L2:
astore 1
aload 9
astore 6
L57:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L58:
bipush -2
istore 3
aload 9
ifnull L88
L59:
aload 9
invokevirtual java/io/InputStream/close()V
L60:
bipush -2
ireturn
L61:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L3:
astore 1
aload 10
astore 6
L62:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L63:
bipush -3
istore 3
aload 10
ifnull L88
L64:
aload 10
invokevirtual java/io/InputStream/close()V
L65:
bipush -3
ireturn
L66:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -3
ireturn
L4:
astore 1
aload 11
astore 6
L67:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L68:
bipush -4
istore 3
aload 11
ifnull L88
L69:
aload 11
invokevirtual java/io/InputStream/close()V
L70:
bipush -4
ireturn
L71:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -4
ireturn
L5:
astore 1
aload 12
astore 6
L72:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L73:
bipush -5
istore 3
aload 12
ifnull L88
L74:
aload 12
invokevirtual java/io/InputStream/close()V
L75:
bipush -5
ireturn
L76:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -5
ireturn
L6:
astore 1
aload 13
astore 6
L77:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L78:
aload 13
astore 6
L79:
aload 2
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L80:
iload 4
istore 3
aload 13
ifnull L88
L81:
aload 13
invokevirtual java/io/InputStream/close()V
L82:
iload 4
ireturn
L83:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L7:
astore 1
aload 6
ifnull L85
L84:
aload 6
invokevirtual java/io/InputStream/close()V
L85:
aload 1
athrow
L86:
astore 2
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L85
L54:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 5
ireturn
.limit locals 20
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
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
.catch java/io/IOException from L58 to L59 using L60
.catch java/net/SocketTimeoutException from L61 to L62 using L2
.catch java/net/SocketException from L61 to L62 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L61 to L62 using L4
.catch java/net/UnknownHostException from L61 to L62 using L5
.catch java/lang/Exception from L61 to L62 using L6
.catch all from L61 to L62 using L7
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch java/io/IOException from L70 to L71 using L72
.catch all from L73 to L74 using L7
.catch java/io/IOException from L75 to L76 using L77
.catch all from L78 to L79 using L7
.catch java/io/IOException from L80 to L81 using L82
.catch all from L83 to L84 using L7
.catch all from L85 to L86 using L7
.catch java/io/IOException from L87 to L88 using L89
.catch java/io/IOException from L90 to L91 using L92
iconst_m1
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
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
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
aload 19
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
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
aload 19
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
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
aload 19
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
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
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 19
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
astore 19
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
aload 0
aload 19
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
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
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 20
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
aload 0
aload 20
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
new org/apache/http/entity/StringEntity
dup
aload 2
ldc "ISO-8859-1"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 21
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
iload 4
istore 5
aload 18
astore 7
L24:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
L25:
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
L26:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "ISO-8859-1"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
L27:
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
L28:
aload 20
aload 21
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L29:
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
L30:
aload 19
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
L31:
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
L32:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L33:
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
L34:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 9
L35:
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
L36:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 15
L37:
aload 9
astore 8
aload 15
ifnull L41
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
L38:
aload 15
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L41
L39:
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
L40:
new java/util/zip/GZIPInputStream
dup
aload 9
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 8
L41:
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
L42:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 8
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 9
L43:
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
L44:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 15
L45:
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
L46:
aload 9
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 16
L47:
aload 16
ifnonnull L93
iload 6
sipush 200
if_icmpeq L57
iload 6
sipush 201
if_icmpeq L57
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
L48:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L51
L49:
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
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
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
invokevirtual java/lang/StringBuilder/length()I
ifle L55
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
L57:
iload 6
istore 4
aload 8
ifnull L94
L58:
aload 8
invokevirtual java/io/InputStream/close()V
L59:
iload 6
istore 4
L94:
iload 4
ireturn
L93:
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
L61:
aload 3
new java/lang/StringBuilder
dup
aload 16
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L62:
goto L45
L2:
astore 1
aload 10
astore 7
L63:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L64:
bipush -2
istore 4
aload 10
ifnull L94
L65:
aload 10
invokevirtual java/io/InputStream/close()V
L66:
bipush -2
ireturn
L67:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L3:
astore 1
aload 11
astore 7
L68:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
bipush -3
istore 4
aload 11
ifnull L94
L70:
aload 11
invokevirtual java/io/InputStream/close()V
L71:
bipush -3
ireturn
L72:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -3
ireturn
L4:
astore 1
aload 12
astore 7
L73:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L74:
bipush -4
istore 4
aload 12
ifnull L94
L75:
aload 12
invokevirtual java/io/InputStream/close()V
L76:
bipush -4
ireturn
L77:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -4
ireturn
L5:
astore 1
aload 13
astore 7
L78:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L79:
bipush -5
istore 4
aload 13
ifnull L94
L80:
aload 13
invokevirtual java/io/InputStream/close()V
L81:
bipush -5
ireturn
L82:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -5
ireturn
L6:
astore 1
aload 14
astore 7
L83:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L84:
aload 14
astore 7
L85:
aload 3
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L86:
iload 5
istore 4
aload 14
ifnull L94
L87:
aload 14
invokevirtual java/io/InputStream/close()V
L88:
iload 5
ireturn
L89:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L91
L60:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
.limit locals 22
.limit stack 5
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aload 3
invokevirtual com/nd/crashcollection/lib/HttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
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
.catch java/io/IOException from L52 to L53 using L54
.catch java/net/SocketTimeoutException from L55 to L56 using L2
.catch java/net/SocketException from L55 to L56 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L55 to L56 using L4
.catch java/net/UnknownHostException from L55 to L56 using L5
.catch java/lang/Exception from L55 to L56 using L6
.catch all from L55 to L56 using L7
.catch all from L57 to L58 using L7
.catch java/io/IOException from L59 to L60 using L61
.catch all from L62 to L63 using L7
.catch java/io/IOException from L64 to L65 using L66
.catch all from L67 to L68 using L7
.catch java/io/IOException from L69 to L70 using L71
.catch all from L72 to L73 using L7
.catch java/io/IOException from L74 to L75 using L76
.catch all from L77 to L78 using L7
.catch all from L79 to L80 using L7
.catch java/io/IOException from L81 to L82 using L83
.catch java/io/IOException from L84 to L85 using L86
iconst_m1
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
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 19
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
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
aload 0
aload 19
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
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
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 20
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
aload 0
aload 20
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
aload 20
new org/apache/http/entity/ByteArrayEntity
dup
aload 2
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
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
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
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
iload 4
istore 5
aload 18
astore 7
L26:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L27:
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
L28:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 8
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
iload 6
istore 5
aload 8
astore 7
L30:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 14
L31:
aload 8
astore 2
aload 14
ifnull L35
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
L32:
aload 14
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L35
L33:
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
L34:
new java/util/zip/GZIPInputStream
dup
aload 8
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 2
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
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 2
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 8
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
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 14
L39:
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
aload 8
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 15
L41:
aload 15
ifnonnull L87
iload 6
sipush 200
if_icmpeq L51
iload 6
sipush 201
if_icmpeq L51
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
L42:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L45
L43:
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
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
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
invokevirtual java/lang/StringBuilder/length()I
ifle L49
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L51:
iload 6
istore 4
aload 2
ifnull L88
L52:
aload 2
invokevirtual java/io/InputStream/close()V
L53:
iload 6
istore 4
L88:
iload 4
ireturn
L87:
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
L55:
aload 3
new java/lang/StringBuilder
dup
aload 15
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L56:
goto L39
L2:
astore 1
aload 9
astore 7
L57:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L58:
bipush -2
istore 4
aload 9
ifnull L88
L59:
aload 9
invokevirtual java/io/InputStream/close()V
L60:
bipush -2
ireturn
L61:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L3:
astore 1
aload 10
astore 7
L62:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L63:
bipush -3
istore 4
aload 10
ifnull L88
L64:
aload 10
invokevirtual java/io/InputStream/close()V
L65:
bipush -3
ireturn
L66:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -3
ireturn
L4:
astore 1
aload 11
astore 7
L67:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L68:
bipush -4
istore 4
aload 11
ifnull L88
L69:
aload 11
invokevirtual java/io/InputStream/close()V
L70:
bipush -4
ireturn
L71:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -4
ireturn
L5:
astore 1
aload 12
astore 7
L72:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L73:
bipush -5
istore 4
aload 12
ifnull L88
L74:
aload 12
invokevirtual java/io/InputStream/close()V
L75:
bipush -5
ireturn
L76:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -5
ireturn
L6:
astore 1
aload 13
astore 7
L77:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L78:
aload 13
astore 7
L79:
aload 3
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L80:
iload 5
istore 4
aload 13
ifnull L88
L81:
aload 13
invokevirtual java/io/InputStream/close()V
L82:
iload 5
ireturn
L83:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L85
L54:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
.limit locals 21
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
.catch java/io/IOException from L58 to L59 using L60
.catch java/net/SocketTimeoutException from L61 to L62 using L2
.catch java/net/SocketException from L61 to L62 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L61 to L62 using L4
.catch java/net/UnknownHostException from L61 to L62 using L5
.catch java/lang/Exception from L61 to L62 using L6
.catch all from L61 to L62 using L7
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch all from L68 to L69 using L7
.catch java/io/IOException from L70 to L71 using L72
.catch all from L73 to L74 using L7
.catch java/io/IOException from L75 to L76 using L77
.catch all from L78 to L79 using L7
.catch java/io/IOException from L80 to L81 using L82
.catch all from L83 to L84 using L7
.catch all from L85 to L86 using L7
.catch java/io/IOException from L87 to L88 using L89
.catch java/io/IOException from L90 to L91 using L92
iconst_m1
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
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
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
aload 19
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
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
aload 19
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
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
aload 19
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
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
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 19
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
astore 19
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
aload 0
aload 19
invokespecial com/nd/crashcollection/lib/HttpRequest/checkProxy(Lorg/apache/http/client/HttpClient;)V
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
new org/apache/http/client/methods/HttpPut
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPut/<init>(Ljava/lang/String;)V
astore 20
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
aload 0
aload 20
invokevirtual com/nd/crashcollection/lib/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
new org/apache/http/entity/StringEntity
dup
aload 2
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 21
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
iload 4
istore 5
aload 18
astore 7
L24:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
L25:
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
L26:
aload 21
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
L27:
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
L28:
aload 20
aload 21
invokevirtual org/apache/http/client/methods/HttpPut/setEntity(Lorg/apache/http/HttpEntity;)V
L29:
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
L30:
aload 19
aload 20
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 19
L31:
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
L32:
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 6
L33:
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
L34:
aload 19
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 9
L35:
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
L36:
aload 19
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 15
L37:
aload 9
astore 8
aload 15
ifnull L41
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
L38:
aload 15
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L41
L39:
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
L40:
new java/util/zip/GZIPInputStream
dup
aload 9
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 8
L41:
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
L42:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 8
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 9
L43:
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
L44:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 15
L45:
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
L46:
aload 9
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 16
L47:
aload 16
ifnonnull L93
iload 6
sipush 200
if_icmpeq L57
iload 6
sipush 201
if_icmpeq L57
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
L48:
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifgt L51
L49:
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
aload 19
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getReasonPhrase()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
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
invokevirtual java/lang/StringBuilder/length()I
ifle L55
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
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "nRet="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
L57:
iload 6
istore 4
aload 8
ifnull L94
L58:
aload 8
invokevirtual java/io/InputStream/close()V
L59:
iload 6
istore 4
L94:
iload 4
ireturn
L93:
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
L61:
aload 3
new java/lang/StringBuilder
dup
aload 16
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L62:
goto L45
L2:
astore 1
aload 10
astore 7
L63:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L64:
bipush -2
istore 4
aload 10
ifnull L94
L65:
aload 10
invokevirtual java/io/InputStream/close()V
L66:
bipush -2
ireturn
L67:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L3:
astore 1
aload 11
astore 7
L68:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L69:
bipush -3
istore 4
aload 11
ifnull L94
L70:
aload 11
invokevirtual java/io/InputStream/close()V
L71:
bipush -3
ireturn
L72:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -3
ireturn
L4:
astore 1
aload 12
astore 7
L73:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L74:
bipush -4
istore 4
aload 12
ifnull L94
L75:
aload 12
invokevirtual java/io/InputStream/close()V
L76:
bipush -4
ireturn
L77:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -4
ireturn
L5:
astore 1
aload 13
astore 7
L78:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L79:
bipush -5
istore 4
aload 13
ifnull L94
L80:
aload 13
invokevirtual java/io/InputStream/close()V
L81:
bipush -5
ireturn
L82:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -5
ireturn
L6:
astore 1
aload 14
astore 7
L83:
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L84:
aload 14
astore 7
L85:
aload 3
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/HttpRequest/getErrMsg(Ljava/lang/Exception;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L86:
iload 5
istore 4
aload 14
ifnull L94
L87:
aload 14
invokevirtual java/io/InputStream/close()V
L88:
iload 5
ireturn
L89:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
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
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L91
L60:
astore 1
aload 0
getfield com/nd/crashcollection/lib/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 6
ireturn
.limit locals 22
.limit stack 5
.end method

.method public doPut(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aload 3
invokevirtual com/nd/crashcollection/lib/HttpRequest/doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 1
ldc "Accept-Encoding"
ldc "gzip"
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
