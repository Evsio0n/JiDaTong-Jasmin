.bytecode 50.0
.class public synchronized com/bestpay/util/Net
.super java/lang/Object
.inner class public static SSLSocketFactoryEx inner com/bestpay/util/Net$SSLSocketFactoryEx outer com/bestpay/util/Net
.inner class inner com/bestpay/util/Net$SSLSocketFactoryEx$1

.field public static final 'CONNECT_TIMEOUT' I = 30000


.field public static final 'READ_TIMEOUT' I = 30000


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
.catch java/lang/Exception from L0 to L1 using L2
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 0
aload 0
sipush 30000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 0
sipush 30000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L0:
invokestatic java/security/KeyStore/getDefaultType()Ljava/lang/String;
invokestatic java/security/KeyStore/getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
astore 1
aload 1
aconst_null
aconst_null
invokevirtual java/security/KeyStore/load(Ljava/io/InputStream;[C)V
new com/bestpay/util/Net$SSLSocketFactoryEx
dup
aload 1
invokespecial com/bestpay/util/Net$SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
astore 1
aload 1
getstatic org/apache/http/conn/ssl/SSLSocketFactory/ALLOW_ALL_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
aload 0
getstatic org/apache/http/HttpVersion/HTTP_1_1 Lorg/apache/http/HttpVersion;
invokestatic org/apache/http/params/HttpProtocolParams/setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
aload 0
ldc "UTF-8"
invokestatic org/apache/http/params/HttpProtocolParams/setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 2
aload 2
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 2
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
aload 0
aload 2
invokespecial org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 0
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new org/apache/http/impl/client/DefaultHttpClient
dup
aload 0
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/params/HttpParams;)V
areturn
.limit locals 3
.limit stack 6
.end method

.method public static getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
lload 1
l2i
newarray byte
astore 3
L0:
aload 0
aload 3
invokevirtual java/io/InputStream/read([B)I
pop
L1:
new java/lang/String
dup
aload 3
invokespecial java/lang/String/<init>([B)V
areturn
L2:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 3
.end method

.method public static sendNetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/io/UnsupportedEncodingException from L1 to L5 using L2
.catch org/apache/http/client/ClientProtocolException from L1 to L5 using L3
.catch java/io/IOException from L1 to L5 using L4
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 1
L0:
aload 1
ldc "Cookie"
aload 2
invokevirtual org/apache/http/client/methods/HttpPost/setHeader(Ljava/lang/String;Ljava/lang/String;)V
aload 1
new org/apache/http/entity/StringEntity
dup
aload 0
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
invokestatic com/bestpay/util/Net/getNewHttpClient()Lorg/apache/http/client/HttpClient;
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 0
aload 0
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L1
aload 0
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
aload 0
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContentLength()J 0
invokestatic com/bestpay/util/Net/getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;
pop
L1:
aload 0
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
aload 0
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContentLength()J 0
invokestatic com/bestpay/util/Net/getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;
astore 0
L5:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
L6:
aconst_null
areturn
L3:
astore 0
aload 0
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
goto L6
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L6
.limit locals 3
.limit stack 5
.end method
