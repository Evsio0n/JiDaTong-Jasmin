.bytecode 50.0
.class public final synchronized com/alipay/sdk/net/b
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "msp"

.field static 'b' Lcom/alipay/sdk/net/b;

.field final 'c' Lorg/apache/http/impl/client/DefaultHttpClient;

.method private <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 1
aload 2
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
putfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
return
.limit locals 3
.limit stack 5
.end method

.method private <init>(Lorg/apache/http/params/HttpParams;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 1
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
putfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
return
.limit locals 2
.limit stack 4
.end method

.method public static a()Lcom/alipay/sdk/net/b;
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
ifnonnull L1
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 0
aload 0
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 0
iconst_1
invokestatic org/apache/http/params/HttpConnectionParams/setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
aload 0
ldc "http.protocol.expect-continue"
iconst_0
invokeinterface org/apache/http/params/HttpParams/setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams; 2
pop
aload 0
bipush 50
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
aload 0
new org/apache/http/conn/params/ConnPerRouteBean
dup
bipush 30
invokespecial org/apache/http/conn/params/ConnPerRouteBean/<init>(I)V
invokestatic org/apache/http/conn/params/ConnManagerParams/setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
aload 0
ldc2_w 1000L
invokestatic org/apache/http/conn/params/ConnManagerParams/setTimeout(Lorg/apache/http/params/HttpParams;J)V
aload 0
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 0
sipush 30000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 0
sipush 16384
invokestatic org/apache/http/params/HttpConnectionParams/setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
aload 0
iconst_0
invokestatic org/apache/http/params/HttpProtocolParams/setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
aload 0
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
aload 0
iconst_0
invokestatic org/apache/http/client/params/HttpClientParams/setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V
aload 0
ldc "msp"
invokestatic org/apache/http/params/HttpProtocolParams/setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
L0:
invokestatic org/apache/http/conn/ssl/SSLSocketFactory/getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
astore 1
aload 1
getstatic org/apache/http/conn/ssl/SSLSocketFactory/STRICT_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
aload 1
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
astore 1
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
astore 2
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 3
aload 3
aload 1
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 3
aload 2
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
new com/alipay/sdk/net/b
dup
new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
dup
aload 0
aload 3
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 0
invokespecial com/alipay/sdk/net/b/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
putstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
L1:
getstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
areturn
L2:
astore 1
new com/alipay/sdk/net/b
dup
aload 0
invokespecial com/alipay/sdk/net/b/<init>(Lorg/apache/http/params/HttpParams;)V
putstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
goto L1
.limit locals 4
.limit stack 6
.end method

.method private a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;)TT;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
aload 3
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method private a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;Lorg/apache/http/protocol/HttpContext;)TT;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
aload 3
aload 4
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 5
.limit stack 5
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;)TT;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler<+TT;>;Lorg/apache/http/protocol/HttpContext;)TT;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
aload 3
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method private a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method private a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
aload 3
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
aload 2
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/Exception
dup
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method private static b()Lcom/alipay/sdk/net/b;
getstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
areturn
.limit locals 0
.limit stack 1
.end method

.method private static c()V
aconst_null
putstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
return
.limit locals 0
.limit stack 1
.end method

.method private d()V
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface org/apache/http/conn/ClientConnectionManager/closeExpiredConnections()V 0
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
aload 1
ldc2_w 30L
getstatic java/util/concurrent/TimeUnit/MINUTES Ljava/util/concurrent/TimeUnit;
invokeinterface org/apache/http/conn/ClientConnectionManager/closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V 3
L0:
return
.limit locals 2
.limit stack 4
.end method

.method private e()V
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
aconst_null
putstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
L0:
return
.limit locals 2
.limit stack 1
.end method

.method private f()Lorg/apache/http/params/HttpParams;
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getParams()Lorg/apache/http/params/HttpParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method private g()Lorg/apache/http/conn/ClientConnectionManager;
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
