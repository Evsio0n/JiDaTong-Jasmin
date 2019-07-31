.bytecode 50.0
.class public synchronized com/github/kevinsawicki/http/HttpRequest
.super java/lang/Object
.inner class inner com/github/kevinsawicki/http/HttpRequest$1
.inner class inner com/github/kevinsawicki/http/HttpRequest$10
.inner class inner com/github/kevinsawicki/http/HttpRequest$2
.inner class inner com/github/kevinsawicki/http/HttpRequest$3
.inner class inner com/github/kevinsawicki/http/HttpRequest$4
.inner class inner com/github/kevinsawicki/http/HttpRequest$5
.inner class inner com/github/kevinsawicki/http/HttpRequest$6
.inner class inner com/github/kevinsawicki/http/HttpRequest$7
.inner class inner com/github/kevinsawicki/http/HttpRequest$8
.inner class inner com/github/kevinsawicki/http/HttpRequest$9
.inner class public static Base64 inner com/github/kevinsawicki/http/HttpRequest$Base64 outer com/github/kevinsawicki/http/HttpRequest
.inner class protected static abstract CloseOperation inner com/github/kevinsawicki/http/HttpRequest$CloseOperation outer com/github/kevinsawicki/http/HttpRequest
.inner class public static abstract interface ConnectionFactory inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory outer com/github/kevinsawicki/http/HttpRequest
.inner class inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1
.inner class protected static abstract FlushOperation inner com/github/kevinsawicki/http/HttpRequest$FlushOperation outer com/github/kevinsawicki/http/HttpRequest
.inner class public static HttpRequestException inner com/github/kevinsawicki/http/HttpRequest$HttpRequestException outer com/github/kevinsawicki/http/HttpRequest
.inner class protected static abstract Operation inner com/github/kevinsawicki/http/HttpRequest$Operation outer com/github/kevinsawicki/http/HttpRequest
.inner class public static RequestOutputStream inner com/github/kevinsawicki/http/HttpRequest$RequestOutputStream outer com/github/kevinsawicki/http/HttpRequest

.field private static final 'BOUNDARY' Ljava/lang/String; = "00content0boundary00"

.field public static final 'CHARSET_UTF8' Ljava/lang/String; = "UTF-8"

.field private static 'CONNECTION_FACTORY' Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

.field public static final 'CONTENT_TYPE_FORM' Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final 'CONTENT_TYPE_JSON' Ljava/lang/String; = "application/json"

.field private static final 'CONTENT_TYPE_MULTIPART' Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final 'CRLF' Ljava/lang/String; = "\r\n"

.field private static final 'EMPTY_STRINGS' [Ljava/lang/String;

.field public static final 'ENCODING_GZIP' Ljava/lang/String; = "gzip"

.field public static final 'HEADER_ACCEPT' Ljava/lang/String; = "Accept"

.field public static final 'HEADER_ACCEPT_CHARSET' Ljava/lang/String; = "Accept-Charset"

.field public static final 'HEADER_ACCEPT_ENCODING' Ljava/lang/String; = "Accept-Encoding"

.field public static final 'HEADER_AUTHORIZATION' Ljava/lang/String; = "Authorization"

.field public static final 'HEADER_CACHE_CONTROL' Ljava/lang/String; = "Cache-Control"

.field public static final 'HEADER_CONTENT_ENCODING' Ljava/lang/String; = "Content-Encoding"

.field public static final 'HEADER_CONTENT_LENGTH' Ljava/lang/String; = "Content-Length"

.field public static final 'HEADER_CONTENT_TYPE' Ljava/lang/String; = "Content-Type"

.field public static final 'HEADER_DATE' Ljava/lang/String; = "Date"

.field public static final 'HEADER_ETAG' Ljava/lang/String; = "ETag"

.field public static final 'HEADER_EXPIRES' Ljava/lang/String; = "Expires"

.field public static final 'HEADER_IF_NONE_MATCH' Ljava/lang/String; = "If-None-Match"

.field public static final 'HEADER_LAST_MODIFIED' Ljava/lang/String; = "Last-Modified"

.field public static final 'HEADER_LOCATION' Ljava/lang/String; = "Location"

.field public static final 'HEADER_PROXY_AUTHORIZATION' Ljava/lang/String; = "Proxy-Authorization"

.field public static final 'HEADER_REFERER' Ljava/lang/String; = "Referer"

.field public static final 'HEADER_SERVER' Ljava/lang/String; = "Server"

.field public static final 'HEADER_USER_AGENT' Ljava/lang/String; = "User-Agent"

.field public static final 'METHOD_DELETE' Ljava/lang/String; = "DELETE"

.field public static final 'METHOD_GET' Ljava/lang/String; = "GET"

.field public static final 'METHOD_HEAD' Ljava/lang/String; = "HEAD"

.field public static final 'METHOD_OPTIONS' Ljava/lang/String; = "OPTIONS"

.field public static final 'METHOD_POST' Ljava/lang/String; = "POST"

.field public static final 'METHOD_PUT' Ljava/lang/String; = "PUT"

.field public static final 'METHOD_TRACE' Ljava/lang/String; = "TRACE"

.field public static final 'PARAM_CHARSET' Ljava/lang/String; = "charset"

.field private static volatile 'TRUSTED_FACTORY' Ljavax/net/ssl/SSLSocketFactory;

.field private static volatile 'TRUSTED_VERIFIER' Ljavax/net/ssl/HostnameVerifier;

.field private 'bufferSize' I

.field private 'connection' Ljava/net/HttpURLConnection;

.field private 'form' Z

.field private 'httpProxyHost' Ljava/lang/String;

.field private 'httpProxyPort' I

.field private 'ignoreCloseExceptions' Z

.field private 'multipart' Z

.field private 'output' Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

.field private final 'requestMethod' Ljava/lang/String;

.field private 'uncompress' Z

.field private final 'url' Ljava/net/URL;

.method static <clinit>()V
iconst_0
anewarray java/lang/String
putstatic com/github/kevinsawicki/http/HttpRequest/EMPTY_STRINGS [Ljava/lang/String;
getstatic com/github/kevinsawicki/http/HttpRequest$ConnectionFactory/DEFAULT Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
putstatic com/github/kevinsawicki/http/HttpRequest/CONNECTION_FACTORY Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/net/MalformedURLException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
aload 0
iconst_1
putfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 0
iconst_0
putfield com/github/kevinsawicki/http/HttpRequest/uncompress Z
aload 0
sipush 8192
putfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
L0:
aload 0
new java/net/URL
dup
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
putfield com/github/kevinsawicki/http/HttpRequest/url Ljava/net/URL;
L1:
aload 0
aload 2
putfield com/github/kevinsawicki/http/HttpRequest/requestMethod Ljava/lang/String;
return
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/net/URL;Ljava/lang/String;)V
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
aload 0
iconst_1
putfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 0
iconst_0
putfield com/github/kevinsawicki/http/HttpRequest/uncompress Z
aload 0
sipush 8192
putfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest/url Ljava/net/URL;
aload 0
aload 2
putfield com/github/kevinsawicki/http/HttpRequest/requestMethod Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/getValidCharset(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/github/kevinsawicki/http/HttpRequest;)I
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
aload 0
bipush 63
invokevirtual java/lang/String/indexOf(I)I
istore 2
aload 1
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
istore 3
iload 2
iconst_m1
if_icmpne L0
aload 1
bipush 63
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L1:
aload 1
areturn
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 3
invokevirtual java/lang/String/charAt(I)C
bipush 38
if_icmpeq L1
aload 1
bipush 38
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
areturn
.limit locals 4
.limit stack 2
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
aload 0
bipush 58
invokevirtual java/lang/String/indexOf(I)I
iconst_2
iadd
aload 0
bipush 47
invokevirtual java/lang/String/lastIndexOf(I)I
if_icmpne L0
aload 1
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;)Ljava/lang/String;"
aload 0
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 2
aload 1
ifnull L0
aload 1
invokeinterface java/util/Map/isEmpty()Z 0
ifeq L1
L0:
aload 2
areturn
L1:
new java/lang/StringBuilder
dup
aload 2
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 0
aload 2
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
pop
aload 2
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 0
aload 2
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
bipush 61
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 2
aload 2
ifnull L2
aload 0
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L3
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
bipush 38
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 0
aload 2
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
bipush 61
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 2
aload 2
ifnull L2
aload 0
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
goto L2
.limit locals 3
.limit stack 3
.end method

.method public static transient append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
aload 0
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 3
aload 1
ifnull L0
aload 1
arraylength
ifne L1
L0:
aload 3
areturn
L1:
aload 1
arraylength
iconst_2
irem
ifeq L2
new java/lang/IllegalArgumentException
dup
ldc "Must specify an even number of parameter names/values"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/lang/StringBuilder
dup
aload 3
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 0
aload 3
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
pop
aload 3
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
pop
aload 0
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 0
bipush 61
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
iconst_1
aaload
astore 3
aload 3
ifnull L3
aload 0
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
L3:
iconst_2
istore 2
L4:
iload 2
aload 1
arraylength
if_icmplt L5
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L5:
aload 0
bipush 38
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
aload 1
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 0
bipush 61
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
iload 2
iconst_1
iadd
aaload
astore 3
aload 3
ifnull L6
aload 0
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
L6:
iload 2
iconst_2
iadd
istore 2
goto L4
.limit locals 4
.limit stack 3
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L4 to L5 using L2
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/httpProxyHost Ljava/lang/String;
ifnull L4
getstatic com/github/kevinsawicki/http/HttpRequest/CONNECTION_FACTORY Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/url Ljava/net/URL;
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest/createProxy()Ljava/net/Proxy;
invokeinterface com/github/kevinsawicki/http/HttpRequest$ConnectionFactory/create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection; 2
astore 1
L1:
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/requestMethod Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L3:
aload 1
areturn
L4:
getstatic com/github/kevinsawicki/http/HttpRequest/CONNECTION_FACTORY Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/url Ljava/net/URL;
invokeinterface com/github/kevinsawicki/http/HttpRequest$ConnectionFactory/create(Ljava/net/URL;)Ljava/net/HttpURLConnection; 1
astore 1
L5:
goto L1
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method private createProxy()Ljava/net/Proxy;
new java/net/Proxy
dup
getstatic java/net/Proxy$Type/HTTP Ljava/net/Proxy$Type;
new java/net/InetSocketAddress
dup
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/httpProxyHost Ljava/lang/String;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/httpProxyPort I
invokespecial java/net/InetSocketAddress/<init>(Ljava/lang/String;I)V
invokespecial java/net/Proxy/<init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
areturn
.limit locals 1
.limit stack 7
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "DELETE"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
astore 1
aload 1
astore 0
iload 2
ifeq L0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static transient delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 2
astore 0
iload 1
ifeq L0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static delete(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "DELETE"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
.catch java/net/URISyntaxException from L3 to L4 using L5
.catch java/net/URISyntaxException from L6 to L7 using L5
L0:
new java/net/URL
dup
aload 0
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 3
L1:
aload 3
invokevirtual java/net/URL/getHost()Ljava/lang/String;
astore 2
aload 3
invokevirtual java/net/URL/getPort()I
istore 1
aload 2
astore 0
iload 1
iconst_m1
if_icmpeq L3
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L3:
new java/net/URI
dup
aload 3
invokevirtual java/net/URL/getProtocol()Ljava/lang/String;
aload 0
aload 3
invokevirtual java/net/URL/getPath()Ljava/lang/String;
aload 3
invokevirtual java/net/URL/getQuery()Ljava/lang/String;
aconst_null
invokespecial java/net/URI/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/net/URI/toASCIIString()Ljava/lang/String;
astore 2
aload 2
bipush 63
invokevirtual java/lang/String/indexOf(I)I
istore 1
L4:
aload 2
astore 0
iload 1
ifle L7
aload 2
astore 0
L6:
iload 1
iconst_1
iadd
aload 2
invokevirtual java/lang/String/length()I
if_icmpge L7
new java/lang/StringBuilder
dup
aload 2
iconst_0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
ldc "+"
ldc "%2B"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L5:
astore 0
new java/io/IOException
dup
ldc "Parsing URI failed"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 0
invokevirtual java/io/IOException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
pop
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 4
.limit stack 7
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "GET"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
astore 1
aload 1
astore 0
iload 2
ifeq L0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static transient get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 2
astore 0
iload 1
ifeq L0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static get(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "GET"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch all from L0 to L1 using L2
.catch java/security/GeneralSecurityException from L1 to L3 using L4
.catch all from L1 to L3 using L2
.catch all from L3 to L5 using L2
.catch all from L6 to L2 using L2
.catch all from L7 to L8 using L2
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_FACTORY Ljavax/net/ssl/SSLSocketFactory;
ifnonnull L5
ldc com/github/kevinsawicki/http/HttpRequest
monitorenter
L0:
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_FACTORY Ljavax/net/ssl/SSLSocketFactory;
ifnonnull L3
new com/github/kevinsawicki/http/HttpRequest$1
dup
invokespecial com/github/kevinsawicki/http/HttpRequest$1/<init>()V
astore 0
L1:
ldc "SSL"
invokestatic javax/net/ssl/SSLContext/getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
astore 1
new java/security/SecureRandom
dup
invokespecial java/security/SecureRandom/<init>()V
astore 2
aload 1
aconst_null
iconst_1
anewarray javax/net/ssl/TrustManager
dup
iconst_0
aload 0
aastore
aload 2
invokevirtual javax/net/ssl/SSLContext/init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
aload 1
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_FACTORY Ljavax/net/ssl/SSLSocketFactory;
L3:
ldc com/github/kevinsawicki/http/HttpRequest
monitorexit
L5:
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_FACTORY Ljavax/net/ssl/SSLSocketFactory;
areturn
L4:
astore 0
L6:
new java/io/IOException
dup
ldc "Security exception configuring SSL context"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 0
invokevirtual java/io/IOException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
pop
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L2:
astore 0
L7:
ldc com/github/kevinsawicki/http/HttpRequest
monitorexit
L8:
aload 0
athrow
.limit locals 3
.limit stack 6
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_VERIFIER Ljavax/net/ssl/HostnameVerifier;
ifnonnull L3
ldc com/github/kevinsawicki/http/HttpRequest
monitorenter
L0:
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_VERIFIER Ljavax/net/ssl/HostnameVerifier;
ifnonnull L1
new com/github/kevinsawicki/http/HttpRequest$2
dup
invokespecial com/github/kevinsawicki/http/HttpRequest$2/<init>()V
putstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_VERIFIER Ljavax/net/ssl/HostnameVerifier;
L1:
ldc com/github/kevinsawicki/http/HttpRequest
monitorexit
L3:
getstatic com/github/kevinsawicki/http/HttpRequest/TRUSTED_VERIFIER Ljavax/net/ssl/HostnameVerifier;
areturn
L2:
astore 0
L4:
ldc com/github/kevinsawicki/http/HttpRequest
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
areturn
L0:
ldc "UTF-8"
areturn
.limit locals 1
.limit stack 1
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "HEAD"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
astore 1
aload 1
astore 0
iload 2
ifeq L0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static transient head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 2
astore 0
iload 1
ifeq L0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static head(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "HEAD"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static keepAlive(Z)V
ldc "http.keepAlive"
iload 0
invokestatic java/lang/Boolean/toString(Z)Ljava/lang/String;
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public static maxConnections(I)V
ldc "http.maxConnections"
iload 0
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public static transient nonProxyHosts([Ljava/lang/String;)V
aload 0
ifnull L0
aload 0
arraylength
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 0
arraylength
iconst_1
isub
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
aload 3
aload 0
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
ldc "http.nonProxyHosts"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
L2:
aload 3
aload 0
iload 1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 124
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
ldc "http.nonProxyHosts"
aconst_null
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "OPTIONS"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static options(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "OPTIONS"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "POST"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
astore 1
aload 1
astore 0
iload 2
ifeq L0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static transient post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 2
astore 0
iload 1
ifeq L0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static post(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "POST"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static proxyHost(Ljava/lang/String;)V
ldc "http.proxyHost"
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
ldc "https.proxyHost"
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public static proxyPort(I)V
iload 0
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
astore 1
ldc "http.proxyPort"
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
ldc "https.proxyPort"
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "PUT"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
astore 1
aload 1
astore 0
iload 2
ifeq L0
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static transient put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 2
astore 0
iload 1
ifeq L0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/encode(Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L0:
aload 0
invokestatic com/github/kevinsawicki/http/HttpRequest/put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static put(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "PUT"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static setConnectionFactory(Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;)V
aload 0
ifnonnull L0
getstatic com/github/kevinsawicki/http/HttpRequest$ConnectionFactory/DEFAULT Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
putstatic com/github/kevinsawicki/http/HttpRequest/CONNECTION_FACTORY Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
return
L0:
aload 0
putstatic com/github/kevinsawicki/http/HttpRequest/CONNECTION_FACTORY Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
return
.limit locals 1
.limit stack 1
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnull L0
new com/github/kevinsawicki/http/HttpRequest$3
dup
aload 0
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$3/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 0
L1:
aload 0
invokestatic java/security/AccessController/doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
new com/github/kevinsawicki/http/HttpRequest$4
dup
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest$4/<init>(Ljava/lang/String;)V
astore 0
goto L1
.limit locals 2
.limit stack 4
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "TRACE"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static trace(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new com/github/kevinsawicki/http/HttpRequest
dup
aload 0
ldc "TRACE"
invokespecial com/github/kevinsawicki/http/HttpRequest/<init>(Ljava/net/URL;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Accept"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Accept-Charset"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Accept-Encoding"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public acceptGzipEncoding()Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "gzip"
invokevirtual com/github/kevinsawicki/http/HttpRequest/acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public acceptJson()Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "application/json"
invokevirtual com/github/kevinsawicki/http/HttpRequest/accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Authorization"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public badRequest()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 400
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
new java/lang/StringBuilder
dup
ldc "Basic "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 1
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/body()Ljava/lang/String;
invokevirtual java/util/concurrent/atomic/AtomicReference/set(Ljava/lang/Object;)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 1
aload 0
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/body(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/util/concurrent/atomic/AtomicReference/set(Ljava/lang/Object;)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public body()Ljava/lang/String;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/charset()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/body(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/byteStream()Ljava/io/ByteArrayOutputStream;
astore 2
L0:
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/buffer()Ljava/io/BufferedInputStream;
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 2
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/getValidCharset(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/io/ByteArrayOutputStream/toString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public buffer()Ljava/io/BufferedInputStream;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new java/io/BufferedInputStream
dup
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/stream()Ljava/io/InputStream;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public bufferSize()I
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public bufferSize(I)Lcom/github/kevinsawicki/http/HttpRequest;
iload 1
iconst_1
if_icmpge L0
new java/lang/IllegalArgumentException
dup
ldc "Size must be greater than zero"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/charset()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
areturn
.limit locals 1
.limit stack 2
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
new java/io/BufferedReader
dup
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
areturn
.limit locals 2
.limit stack 4
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentLength()I
istore 1
iload 1
ifle L0
new java/io/ByteArrayOutputStream
dup
iload 1
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
areturn
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
areturn
.limit locals 2
.limit stack 3
.end method

.method public bytes()[B
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/byteStream()Ljava/io/ByteArrayOutputStream;
astore 1
L0:
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/buffer()Ljava/io/BufferedInputStream;
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public cacheControl()Ljava/lang/String;
aload 0
ldc "Cache-Control"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public charset()Ljava/lang/String;
aload 0
ldc "Content-Type"
ldc "charset"
invokevirtual com/github/kevinsawicki/http/HttpRequest/parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public chunk(I)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setChunkedStreamingMode(I)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method protected closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
ifnonnull L3
aload 0
areturn
L3:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/multipart Z
ifeq L4
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
ldc "\r\n--00content0boundary00--\r\n"
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
L4:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
ifeq L5
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/close()V
L1:
aload 0
aconst_null
putfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 0
areturn
L5:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/close()V
goto L1
L2:
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public code()I
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 1
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
invokevirtual java/util/concurrent/atomic/AtomicInteger/set(I)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public connectTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public contentEncoding()Ljava/lang/String;
aload 0
ldc "Content-Encoding"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public contentLength()I
aload 0
ldc "Content-Length"
invokevirtual com/github/kevinsawicki/http/HttpRequest/intHeader(Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public contentLength(I)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setFixedLengthStreamingMode(I)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public contentLength(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentLength(I)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 2
.end method

.method public contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 1
aconst_null
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 2
ifnull L0
aload 2
invokevirtual java/lang/String/length()I
ifle L0
aload 0
ldc "Content-Type"
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "; charset="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L0:
aload 0
ldc "Content-Type"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method public contentType()Ljava/lang/String;
aload 0
ldc "Content-Type"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
new com/github/kevinsawicki/http/HttpRequest$8
dup
aload 0
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 1
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$8/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$8/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
.limit locals 3
.limit stack 7
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
new com/github/kevinsawicki/http/HttpRequest$9
dup
aload 0
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 1
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$9/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$9/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
.limit locals 3
.limit stack 7
.end method

.method public created()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 201
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public date()J
aload 0
ldc "Date"
invokevirtual com/github/kevinsawicki/http/HttpRequest/dateHeader(Ljava/lang/String;)J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public dateHeader(Ljava/lang/String;)J
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
ldc2_w -1L
invokevirtual com/github/kevinsawicki/http/HttpRequest/dateHeader(Ljava/lang/String;J)J
lreturn
.limit locals 2
.limit stack 4
.end method

.method public dateHeader(Ljava/lang/String;J)J
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
aload 1
lload 2
invokevirtual java/net/HttpURLConnection/getHeaderFieldDate(Ljava/lang/String;J)J
lreturn
.limit locals 4
.limit stack 4
.end method

.method public disconnect()Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public eTag()Ljava/lang/String;
aload 0
ldc "ETag"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public expires()J
aload 0
ldc "Expires"
invokevirtual com/github/kevinsawicki/http/HttpRequest/dateHeader(Ljava/lang/String;)J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public followRedirects(Z)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setInstanceFollowRedirects(Z)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aload 2
ldc "UTF-8"
invokevirtual com/github/kevinsawicki/http/HttpRequest/form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L2
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/form Z
ifeq L8
iconst_0
istore 4
L9:
iload 4
ifeq L10
aload 0
ldc "application/x-www-form-urlencoded"
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
iconst_1
putfield com/github/kevinsawicki/http/HttpRequest/form Z
L10:
aload 3
invokestatic com/github/kevinsawicki/http/HttpRequest/getValidCharset(Ljava/lang/String;)Ljava/lang/String;
astore 3
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
iload 4
ifne L4
L3:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
bipush 38
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(I)V
L4:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 3
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
bipush 61
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(I)V
L5:
aload 2
ifnull L7
L6:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 3
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
L7:
aload 0
areturn
L8:
iconst_1
istore 4
goto L9
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 5
.limit stack 3
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map$Entry<**>;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
ldc "UTF-8"
invokevirtual com/github/kevinsawicki/http/HttpRequest/form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map$Entry<**>;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method public form(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map<**>;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
ldc "UTF-8"
invokevirtual com/github/kevinsawicki/http/HttpRequest/form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map<**>;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 1
invokeinterface java/util/Map/isEmpty()Z 0
ifne L0
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
aload 0
areturn
L2:
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
goto L1
.limit locals 3
.limit stack 3
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
ifnonnull L0
aload 0
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest/createConnection()Ljava/net/HttpURLConnection;
putfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifne L1
L0:
aconst_null
astore 1
L2:
aload 1
areturn
L1:
aload 1
invokevirtual java/lang/String/length()I
istore 4
aload 1
bipush 59
invokevirtual java/lang/String/indexOf(I)I
iconst_1
iadd
istore 6
iload 6
ifeq L3
iload 6
iload 4
if_icmpne L4
L3:
aconst_null
areturn
L4:
aload 1
bipush 59
iload 6
invokevirtual java/lang/String/indexOf(II)I
istore 7
iload 7
istore 3
iload 6
istore 5
iload 7
iconst_m1
if_icmpne L5
iload 4
istore 3
iload 6
istore 5
L5:
iload 5
iload 3
if_icmplt L6
aconst_null
areturn
L6:
aload 1
bipush 61
iload 5
invokevirtual java/lang/String/indexOf(II)I
istore 6
iload 6
iconst_m1
if_icmpeq L7
iload 6
iload 3
if_icmpge L7
aload 2
aload 1
iload 5
iload 6
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 1
iload 6
iconst_1
iadd
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 8
aload 8
invokevirtual java/lang/String/length()I
istore 5
iload 5
ifeq L7
aload 8
astore 1
iload 5
iconst_2
if_icmple L2
aload 8
astore 1
bipush 34
aload 8
iconst_0
invokevirtual java/lang/String/charAt(I)C
if_icmpne L2
aload 8
astore 1
bipush 34
aload 8
iload 5
iconst_1
isub
invokevirtual java/lang/String/charAt(I)C
if_icmpne L2
aload 8
iconst_1
iload 5
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L7:
iload 3
iconst_1
iadd
istore 6
aload 1
bipush 59
iload 6
invokevirtual java/lang/String/indexOf(II)I
istore 7
iload 7
istore 3
iload 6
istore 5
iload 7
iconst_m1
if_icmpne L5
iload 4
istore 3
iload 6
istore 5
goto L5
.limit locals 9
.limit stack 4
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifne L1
L0:
invokestatic java/util/Collections/emptyMap()Ljava/util/Map;
astore 7
L2:
aload 7
areturn
L1:
aload 1
invokevirtual java/lang/String/length()I
istore 3
aload 1
bipush 59
invokevirtual java/lang/String/indexOf(I)I
iconst_1
iadd
istore 4
iload 4
ifeq L3
iload 4
iload 3
if_icmpne L4
L3:
invokestatic java/util/Collections/emptyMap()Ljava/util/Map;
areturn
L4:
aload 1
bipush 59
iload 4
invokevirtual java/lang/String/indexOf(II)I
istore 5
iload 5
istore 2
iload 5
iconst_m1
if_icmpne L5
iload 3
istore 2
L5:
new java/util/LinkedHashMap
dup
invokespecial java/util/LinkedHashMap/<init>()V
astore 8
L6:
aload 8
astore 7
iload 4
iload 2
if_icmpge L2
aload 1
bipush 61
iload 4
invokevirtual java/lang/String/indexOf(II)I
istore 5
iload 5
iconst_m1
if_icmpeq L7
iload 5
iload 2
if_icmpge L7
aload 1
iload 4
iload 5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 7
aload 7
invokevirtual java/lang/String/length()I
ifle L7
aload 1
iload 5
iconst_1
iadd
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 9
aload 9
invokevirtual java/lang/String/length()I
istore 4
iload 4
ifeq L7
iload 4
iconst_2
if_icmple L8
bipush 34
aload 9
iconst_0
invokevirtual java/lang/String/charAt(I)C
if_icmpne L8
bipush 34
aload 9
iload 4
iconst_1
isub
invokevirtual java/lang/String/charAt(I)C
if_icmpne L8
aload 8
aload 7
aload 9
iconst_1
iload 4
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L7:
iload 2
iconst_1
iadd
istore 5
aload 1
bipush 59
iload 5
invokevirtual java/lang/String/indexOf(II)I
istore 6
iload 6
istore 2
iload 5
istore 4
iload 6
iconst_m1
if_icmpne L6
iload 3
istore 2
iload 5
istore 4
goto L6
L8:
aload 8
aload 7
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L7
.limit locals 10
.limit stack 6
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 2
ifnull L0
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 2
L1:
aload 0
aload 1
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L0:
aconst_null
astore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
aload 1
aload 2
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 0
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
aload 1
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public headers(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/github/kevinsawicki/http/HttpRequest;"
aload 1
invokeinterface java/util/Map/isEmpty()Z 0
ifne L0
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
aload 0
areturn
L2:
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
goto L1
.limit locals 2
.limit stack 2
.end method

.method public headers()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getHeaderFields()Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/headers()Ljava/util/Map;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/Map/isEmpty()Z 0
ifeq L1
L0:
getstatic com/github/kevinsawicki/http/HttpRequest/EMPTY_STRINGS [Ljava/lang/String;
areturn
L1:
aload 2
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
astore 1
aload 1
ifnull L2
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
aload 1
aload 1
invokeinterface java/util/List/size()I 0
anewarray java/lang/String
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
areturn
L2:
getstatic com/github/kevinsawicki/http/HttpRequest/EMPTY_STRINGS [Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public ifModifiedSince(J)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
lload 1
invokevirtual java/net/HttpURLConnection/setIfModifiedSince(J)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "If-None-Match"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public ignoreCloseExceptions(Z)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
iload 1
putfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public ignoreCloseExceptions()Z
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public intHeader(Ljava/lang/String;)I
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
iconst_m1
invokevirtual com/github/kevinsawicki/http/HttpRequest/intHeader(Ljava/lang/String;I)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public intHeader(Ljava/lang/String;I)I
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
aload 1
iload 2
invokevirtual java/net/HttpURLConnection/getHeaderFieldInt(Ljava/lang/String;I)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public isBodyEmpty()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentLength()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public lastModified()J
aload 0
ldc "Last-Modified"
invokevirtual com/github/kevinsawicki/http/HttpRequest/dateHeader(Ljava/lang/String;)J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public location()Ljava/lang/String;
aload 0
ldc "Location"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public message()Ljava/lang/String;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getResponseMessage()Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public method()Ljava/lang/String;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getRequestMethod()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public notFound()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 404
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public notModified()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 304
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public ok()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 200
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
ifnull L0
aload 0
areturn
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iconst_1
invokevirtual java/net/HttpURLConnection/setDoOutput(Z)V
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
ldc "Content-Type"
invokevirtual java/net/HttpURLConnection/getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
ldc "charset"
invokevirtual com/github/kevinsawicki/http/HttpRequest/getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
new com/github/kevinsawicki/http/HttpRequest$RequestOutputStream
dup
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getOutputStream()Ljava/io/OutputStream;
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
invokespecial com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/<init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
putfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 0
areturn
.limit locals 2
.limit stack 6
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/getParams(Ljava/lang/String;)Ljava/util/Map;
areturn
.limit locals 2
.limit stack 3
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aconst_null
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aconst_null
aconst_null
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aconst_null
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 1
aconst_null
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aload 2
aconst_null
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 4
.limit stack 5
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 3
ifnull L0
aload 3
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 3
L1:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L0:
aconst_null
astore 3
goto L1
.limit locals 4
.limit stack 4
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
aload 2
aconst_null
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 4
.limit stack 5
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
new java/io/BufferedInputStream
dup
new java/io/FileInputStream
dup
aload 4
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;)V
astore 4
L1:
aload 0
aload 1
aload 2
aload 3
aload 4
invokevirtual com/github/kevinsawicki/http/HttpRequest/part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 5
.limit stack 5
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/startPart()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
aload 1
aload 2
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
aload 4
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
aload 0
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/startPart()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
aload 1
aload 2
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 4
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
L1:
aload 0
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
ldc ": "
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 2
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
ldc "\r\n"
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 2
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Proxy-Authorization"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
new java/lang/StringBuilder
dup
ldc "Basic "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/github/kevinsawicki/http/HttpRequest$Base64/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/proxyAuthorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method public readTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public reader()Ljava/io/InputStreamReader;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/charset()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
areturn
.limit locals 1
.limit stack 2
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
new java/io/InputStreamReader
dup
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/stream()Ljava/io/InputStream;
aload 1
invokestatic com/github/kevinsawicki/http/HttpRequest/getValidCharset(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public receive(Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/FileNotFoundException from L0 to L1 using L2
L0:
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/bufferSize I
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 1
L1:
new com/github/kevinsawicki/http/HttpRequest$5
dup
aload 0
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$5/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$5/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 6
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/buffer()Ljava/io/BufferedInputStream;
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 2
.end method

.method public receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/bufferedReader()Ljava/io/BufferedReader;
astore 2
new com/github/kevinsawicki/http/HttpRequest$7
dup
aload 0
aload 2
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 2
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$7/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$7/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
.limit locals 3
.limit stack 7
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/bufferedReader()Ljava/io/BufferedReader;
astore 2
new com/github/kevinsawicki/http/HttpRequest$6
dup
aload 0
aload 2
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/ignoreCloseExceptions Z
aload 2
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$6/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$6/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
.limit locals 3
.limit stack 7
.end method

.method public referer(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "Referer"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method public send(Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/FileNotFoundException from L0 to L1 using L2
L0:
new java/io/BufferedInputStream
dup
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L1:
aload 0
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method public send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
aload 1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
aload 0
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public send(Ljava/io/Reader;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
new java/io/OutputStreamWriter
dup
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokestatic com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/access$0(Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;
invokevirtual java/nio/charset/CharsetEncoder/charset()Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
astore 2
new com/github/kevinsawicki/http/HttpRequest$10
dup
aload 0
aload 2
aload 1
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$10/<init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
invokevirtual com/github/kevinsawicki/http/HttpRequest$10/call()Ljava/lang/Object;
checkcast com/github/kevinsawicki/http/HttpRequest
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 3
.limit stack 6
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
L1:
aload 0
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public send([B)Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
new java/io/ByteArrayInputStream
dup
aload 1
invokespecial java/io/ByteArrayInputStream/<init>([B)V
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 4
.end method

.method public server()Ljava/lang/String;
aload 0
ldc "Server"
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public serverError()Z
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
sipush 500
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected startPart()Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/multipart Z
ifne L0
aload 0
iconst_1
putfield com/github/kevinsawicki/http/HttpRequest/multipart Z
aload 0
ldc "multipart/form-data; boundary=00content0boundary00"
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
ldc "--00content0boundary00\r\n"
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
aload 0
areturn
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
ldc "\r\n--00content0boundary00\r\n"
invokevirtual com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
pop
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public stream()Ljava/io/InputStream;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/io/IOException from L6 to L7 using L8
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/code()I
sipush 400
if_icmpge L9
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 1
L1:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/uncompress Z
ifeq L10
ldc "gzip"
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentEncoding()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
L10:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L9:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getErrorStream()Ljava/io/InputStream;
astore 2
aload 2
astore 1
aload 2
ifnonnull L1
L3:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 1
L4:
goto L1
L5:
astore 1
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/contentLength()I
ifle L11
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L11:
new java/io/ByteArrayInputStream
dup
iconst_0
newarray byte
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 1
goto L1
L6:
new java/util/zip/GZIPInputStream
dup
aload 1
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L7:
aload 1
areturn
L8:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/method()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/url()Ljava/net/URL;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public trustAllCerts()Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
astore 1
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L0
aload 1
checkcast javax/net/ssl/HttpsURLConnection
invokestatic com/github/kevinsawicki/http/HttpRequest/getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public trustAllHosts()Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
astore 1
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L0
aload 1
checkcast javax/net/ssl/HttpsURLConnection
invokestatic com/github/kevinsawicki/http/HttpRequest/getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public uncompress(Z)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
iload 1
putfield com/github/kevinsawicki/http/HttpRequest/uncompress Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public url()Ljava/net/URL;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getURL()Ljava/net/URL;
areturn
.limit locals 1
.limit stack 1
.end method

.method public useCaches(Z)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/getConnection()Ljava/net/HttpURLConnection;
iload 1
invokevirtual java/net/HttpURLConnection/setUseCaches(Z)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/connection Ljava/net/HttpURLConnection;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "The connection has already been created. This method must be called before reading or writing to the request."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest/httpProxyHost Ljava/lang/String;
aload 0
iload 2
putfield com/github/kevinsawicki/http/HttpRequest/httpProxyPort I
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public userAgent(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
ldc "User-Agent"
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest/header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/github/kevinsawicki/http/HttpRequest/writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 3
.limit stack 4
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "form-data; name=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L0
aload 4
ldc "\"; filename=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 4
bipush 34
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
ldc "Content-Disposition"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/github/kevinsawicki/http/HttpRequest/partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
aload 3
ifnull L1
aload 0
ldc "Content-Type"
aload 3
invokevirtual com/github/kevinsawicki/http/HttpRequest/partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
pop
L1:
aload 0
ldc "\r\n"
invokevirtual com/github/kevinsawicki/http/HttpRequest/send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 5
.limit stack 3
.end method

.method public writer()Ljava/io/OutputStreamWriter;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest/openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
pop
new java/io/OutputStreamWriter
dup
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest/output Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
invokestatic com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/access$0(Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;
invokevirtual java/nio/charset/CharsetEncoder/charset()Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 1
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 2
.limit stack 4
.end method
