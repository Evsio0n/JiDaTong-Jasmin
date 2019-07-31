.bytecode 50.0
.class public synchronized com/nd/rj/common/util/http/HttpTool4Byte
.super java/lang/Object

.field public static final 'CONNECT_SUCCESS' I = 0


.field private static final 'COOKIE' Ljava/lang/String; = "Cookie"

.field private static final 'TIMEOUT_MILLISEC' I = 60000


.field private static final 'URL_IN' Ljava/lang/String; = "https://testreg.99.com/Simple/Interface/Packet/Default.ashx"

.field private static final 'URL_OUT' Ljava/lang/String; = "https://regapi.99.com/Packet/Default.ashx"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/util/http/HttpTool4Byte/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
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

.method private getProxy(Landroid/content/Context;)Ljava/net/Proxy;
aload 1
invokestatic com/nd/rj/common/util/http/HttpTool4Byte/needToProxy(Landroid/content/Context;)Z
ifeq L0
ldc "debug"
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "debug"
invokestatic android/net/Proxy/getDefaultPort()I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/net/Proxy
dup
getstatic java/net/Proxy$Type/HTTP Ljava/net/Proxy$Type;
new java/net/InetSocketAddress
dup
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
invokestatic android/net/Proxy/getDefaultPort()I
invokespecial java/net/InetSocketAddress/<init>(Ljava/lang/String;I)V
invokespecial java/net/Proxy/<init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 7
.end method

.method private getUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/util/http/HttpTool4Byte/mContext Landroid/content/Context;
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getNetworkEnv()I
istore 1
iload 1
iconst_2
if_icmpne L0
ldc "https://testreg.99.com/Simple/Interface/Packet/Default.ashx"
areturn
L0:
iload 1
ifne L1
ldc "https://regapi.99.com/Packet/Default.ashx"
areturn
L1:
ldc "https://regapi.99.com/Packet/Default.ashx"
areturn
.limit locals 2
.limit stack 2
.end method

.method private static needToProxy(Landroid/content/Context;)Z
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 0
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnull L1
aload 0
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
ldc "MOBILE"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
aload 0
invokevirtual android/net/NetworkInfo/getExtraInfo()Ljava/lang/String;
astore 0
aload 0
ifnull L1
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "wap"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 0
aload 0
ifnull L1
aload 0
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public DoPost(Ljava/lang/String;[BLjava/lang/StringBuffer;Ljava/util/ArrayList;)I
.signature "(Ljava/lang/String;[BLjava/lang/StringBuffer;Ljava/util/ArrayList<Ljava/io/InputStream;>;)I"
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
.catch all from L34 to L35 using L7
.catch all from L36 to L37 using L7
.catch all from L38 to L39 using L7
getstatic com/nd/rj/common/R$string/nd_unknow_error I
istore 5
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
iload 5
istore 6
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 8
L1:
iload 5
istore 6
L8:
aload 8
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
iload 5
istore 6
L10:
aload 8
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
iload 5
istore 6
L12:
aload 0
aload 8
invokespecial com/nd/rj/common/util/http/HttpTool4Byte/getNewHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 8
L13:
iload 5
istore 6
L14:
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 1
L15:
iload 5
istore 6
L16:
new org/apache/http/entity/ByteArrayEntity
dup
aload 2
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
astore 2
L17:
iload 5
istore 6
L18:
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/x-www-form-urlencoded"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/ByteArrayEntity/setContentType(Lorg/apache/http/Header;)V
L19:
iload 5
istore 6
L20:
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/ByteArrayEntity/setContentEncoding(Lorg/apache/http/Header;)V
L21:
iload 5
istore 6
L22:
aload 1
aload 2
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L23:
iload 5
istore 6
L24:
aload 8
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 1
L25:
iload 5
istore 6
L26:
aload 1
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 7
L27:
iload 7
istore 5
iload 7
sipush 200
if_icmpne L40
iconst_0
istore 5
L40:
iload 5
istore 6
L28:
aload 4
aload 1
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L29:
iload 5
ireturn
L2:
astore 1
L30:
getstatic com/nd/rj/common/R$string/nd_socket_timeout_error I
istore 5
aload 3
aload 1
invokevirtual java/net/SocketTimeoutException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L31:
iload 5
ireturn
L7:
astore 1
aload 1
athrow
L3:
astore 1
L32:
getstatic com/nd/rj/common/R$string/nd_socket_error I
istore 5
aload 3
aload 1
invokevirtual java/net/SocketException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L33:
iload 5
ireturn
L4:
astore 1
L34:
getstatic com/nd/rj/common/R$string/nd_connect_timeout_error I
istore 5
aload 3
aload 1
invokevirtual org/apache/http/conn/ConnectTimeoutException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L35:
iload 5
ireturn
L5:
astore 1
L36:
getstatic com/nd/rj/common/R$string/nd_unknown_host_error I
istore 5
aload 3
aload 1
invokevirtual java/net/UnknownHostException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L37:
iload 5
ireturn
L6:
astore 1
L38:
aload 3
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L39:
iload 6
ireturn
.limit locals 9
.limit stack 5
.end method

.method public DoPost([BLjava/lang/StringBuffer;Ljava/util/ArrayList;)I
.signature "([BLjava/lang/StringBuffer;Ljava/util/ArrayList<Ljava/io/InputStream;>;)I"
aload 0
aload 0
invokespecial com/nd/rj/common/util/http/HttpTool4Byte/getUrl()Ljava/lang/String;
aload 1
aload 2
aload 3
invokevirtual com/nd/rj/common/util/http/HttpTool4Byte/DoPost(Ljava/lang/String;[BLjava/lang/StringBuffer;Ljava/util/ArrayList;)I
ireturn
.limit locals 4
.limit stack 5
.end method
