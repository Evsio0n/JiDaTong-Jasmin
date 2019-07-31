.bytecode 50.0
.class public final synchronized com/alipay/sdk/net/a
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "application/octet-stream;binary/octet-stream"

.field public 'b' Ljava/lang/String;

.field private 'c' Landroid/content/Context;

.method private <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/alipay/sdk/net/a/<init>(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/net/a/c Landroid/content/Context;
aload 0
aload 2
putfield com/alipay/sdk/net/a/b Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method private a()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/net/a/b Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private b()Ljava/net/URL;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/net/URL
dup
aload 0
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method private c()Lorg/apache/http/HttpHost;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
invokespecial com/alipay/sdk/net/a/g()Ljava/lang/String;
astore 2
aload 2
ifnull L1
aload 2
ldc "wap"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L1
L2:
aconst_null
areturn
L1:
aload 0
invokespecial com/alipay/sdk/net/a/b()Ljava/net/URL;
astore 2
aload 2
ifnull L2
ldc "https"
aload 2
invokevirtual java/net/URL/getProtocol()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
pop
ldc "https.proxyHost"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 2
ldc "https.proxyPort"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
new org/apache/http/HttpHost
dup
aload 2
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
areturn
L0:
aload 0
invokespecial com/alipay/sdk/net/a/f()Landroid/net/NetworkInfo;
astore 2
aload 2
ifnull L2
aload 2
invokevirtual android/net/NetworkInfo/isAvailable()Z
ifeq L2
aload 2
invokevirtual android/net/NetworkInfo/getType()I
ifne L2
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 2
invokestatic android/net/Proxy/getDefaultPort()I
istore 1
aload 2
ifnull L2
new org/apache/http/HttpHost
dup
aload 2
iload 1
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
areturn
.limit locals 4
.limit stack 4
.end method

.method private d()Lorg/apache/http/HttpHost;
aconst_null
astore 3
aload 0
invokespecial com/alipay/sdk/net/a/f()Landroid/net/NetworkInfo;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 3
astore 2
aload 4
invokevirtual android/net/NetworkInfo/isAvailable()Z
ifeq L0
aload 3
astore 2
aload 4
invokevirtual android/net/NetworkInfo/getType()I
ifne L0
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 4
invokestatic android/net/Proxy/getDefaultPort()I
istore 1
aload 3
astore 2
aload 4
ifnull L0
new org/apache/http/HttpHost
dup
aload 4
iload 1
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
astore 2
L0:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method private e()Lorg/apache/http/HttpHost;
aload 0
invokespecial com/alipay/sdk/net/a/g()Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
ldc "wap"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
L1:
aconst_null
areturn
L0:
aload 0
invokespecial com/alipay/sdk/net/a/b()Ljava/net/URL;
astore 1
aload 1
ifnull L1
ldc "https"
aload 1
invokevirtual java/net/URL/getProtocol()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
pop
ldc "https.proxyHost"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "https.proxyPort"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new org/apache/http/HttpHost
dup
aload 1
aload 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
areturn
.limit locals 3
.limit stack 4
.end method

.method private f()Landroid/net/NetworkInfo;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/net/a/c Landroid/content/Context;
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method private g()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
aload 0
invokespecial com/alipay/sdk/net/a/f()Landroid/net/NetworkInfo;
astore 1
L1:
aload 1
ifnull L7
L3:
aload 1
invokevirtual android/net/NetworkInfo/isAvailable()Z
ifeq L7
aload 1
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L5
L4:
ldc "wifi"
areturn
L5:
aload 1
invokevirtual android/net/NetworkInfo/getExtraInfo()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 1
L6:
aload 1
areturn
L7:
ldc "none"
areturn
L2:
astore 1
ldc "none"
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a([BLjava/util/List;)Lorg/apache/http/HttpResponse;
.signature "([BLjava/util/List<Lorg/apache/http/Header;>;)Lorg/apache/http/HttpResponse;"
.throws java/lang/Throwable
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L8 to L9 using L2
.catch java/lang/Throwable from L10 to L11 using L2
.catch java/lang/Throwable from L11 to L12 using L2
.catch java/lang/Throwable from L13 to L14 using L15
.catch java/lang/Throwable from L16 to L17 using L15
.catch java/lang/Throwable from L18 to L19 using L2
.catch java/lang/Throwable from L20 to L21 using L2
.catch java/lang/Throwable from L22 to L23 using L2
.catch java/lang/Throwable from L24 to L25 using L2
.catch java/lang/Throwable from L26 to L27 using L2
.catch java/lang/Throwable from L28 to L29 using L2
.catch java/lang/Throwable from L30 to L31 using L2
.catch java/lang/Throwable from L32 to L33 using L2
.catch java/lang/Throwable from L34 to L35 using L2
.catch java/lang/Throwable from L36 to L37 using L2
.catch java/lang/Throwable from L38 to L39 using L2
.catch java/lang/Throwable from L39 to L40 using L2
.catch java/lang/Throwable from L41 to L42 using L2
.catch java/lang/Throwable from L43 to L44 using L2
aconst_null
astore 5
aconst_null
astore 4
new java/lang/StringBuilder
dup
ldc "requestUrl : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
invokestatic com/alipay/sdk/net/b/a()Lcom/alipay/sdk/net/b;
astore 6
aload 6
ifnonnull L0
aload 4
astore 1
L45:
aload 1
areturn
L0:
aload 6
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getParams()Lorg/apache/http/params/HttpParams;
astore 7
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L24
aload 0
invokespecial com/alipay/sdk/net/a/g()Ljava/lang/String;
astore 4
L1:
aload 4
ifnull L18
L3:
aload 4
ldc "wap"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L18
L4:
aload 5
astore 4
L46:
aload 4
ifnull L6
L5:
aload 7
ldc "http.route.default-proxy"
aload 4
invokeinterface org/apache/http/params/HttpParams/setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams; 2
pop
L6:
aload 1
ifnull L8
L7:
aload 1
arraylength
ifne L32
L8:
new org/apache/http/client/methods/HttpGet
dup
aload 0
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/lang/String;)V
astore 1
L9:
aload 2
ifnull L34
L10:
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L11:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L34
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast org/apache/http/Header
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
L12:
goto L11
L2:
astore 1
aload 6
ifnull L17
L13:
aload 6
getfield com/alipay/sdk/net/b/c Lorg/apache/http/impl/client/DefaultHttpClient;
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
astore 2
L14:
aload 2
ifnull L17
L16:
aload 2
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
aconst_null
putstatic com/alipay/sdk/net/b/b Lcom/alipay/sdk/net/b;
L17:
aload 1
athrow
L18:
aload 0
invokespecial com/alipay/sdk/net/a/b()Ljava/net/URL;
astore 8
L19:
aload 5
astore 4
aload 8
ifnull L46
L20:
ldc "https"
aload 8
invokevirtual java/net/URL/getProtocol()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
pop
ldc "https.proxyHost"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 8
ldc "https.proxyPort"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 9
L21:
aload 5
astore 4
L22:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L46
new org/apache/http/HttpHost
dup
aload 8
aload 9
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
astore 4
L23:
goto L46
L24:
aload 0
invokespecial com/alipay/sdk/net/a/f()Landroid/net/NetworkInfo;
astore 8
L25:
aload 5
astore 4
aload 8
ifnull L46
aload 5
astore 4
L26:
aload 8
invokevirtual android/net/NetworkInfo/isAvailable()Z
ifeq L46
L27:
aload 5
astore 4
L28:
aload 8
invokevirtual android/net/NetworkInfo/getType()I
ifne L46
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 8
invokestatic android/net/Proxy/getDefaultPort()I
istore 3
L29:
aload 5
astore 4
aload 8
ifnull L46
L30:
new org/apache/http/HttpHost
dup
aload 8
iload 3
invokespecial org/apache/http/HttpHost/<init>(Ljava/lang/String;I)V
astore 4
L31:
goto L46
L32:
new org/apache/http/client/methods/HttpPost
dup
aload 0
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 4
new org/apache/http/entity/ByteArrayEntity
dup
aload 1
invokespecial org/apache/http/entity/ByteArrayEntity/<init>([B)V
astore 1
aload 1
ldc "application/octet-stream;binary/octet-stream"
invokevirtual org/apache/http/entity/ByteArrayEntity/setContentType(Ljava/lang/String;)V
aload 4
checkcast org/apache/http/client/methods/HttpPost
aload 1
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
aload 4
ldc "Accept-Charset"
ldc "UTF-8"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 4
ldc "Connection"
ldc "Keep-Alive"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 4
ldc "Keep-Alive"
ldc "timeout=180, max=100"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
L33:
aload 4
astore 1
goto L9
L34:
aload 6
aload 1
invokevirtual com/alipay/sdk/net/b/a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
astore 2
aload 2
ldc "X-Hostname"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 1
L35:
aload 1
ifnull L39
L36:
aload 1
arraylength
ifle L39
L37:
aload 1
iconst_0
aaload
ifnull L39
L38:
aload 2
ldc "X-Hostname"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
iconst_0
aaload
invokevirtual java/lang/Object/toString()Ljava/lang/String;
pop
L39:
aload 2
ldc "X-ExecuteTime"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 4
L40:
aload 2
astore 1
aload 4
ifnull L45
aload 2
astore 1
L41:
aload 4
arraylength
ifle L45
L42:
aload 2
astore 1
aload 4
iconst_0
aaload
ifnull L45
L43:
aload 2
ldc "X-ExecuteTime"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
iconst_0
aaload
invokevirtual java/lang/Object/toString()Ljava/lang/String;
pop
L44:
aload 2
areturn
L15:
astore 2
goto L17
.limit locals 10
.limit stack 4
.end method
