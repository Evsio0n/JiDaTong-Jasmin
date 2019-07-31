.bytecode 50.0
.class public synchronized com/hisun/b2c/api/core/NetworkManager
.super java/lang/Object
.inner class inner com/hisun/b2c/api/core/NetworkManager$1

.field public static final 'TAG' Ljava/lang/String; = "NetworkManager"

.field private static final 'encoding' Ljava/lang/String; = "UTF-8"

.field private 'connectTimeout' I

.field private 'isCanceled' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mProxy' Ljava/net/Proxy;

.field private 'readTimeout' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 30000
putfield com/hisun/b2c/api/core/NetworkManager/connectTimeout I
aload 0
sipush 30000
putfield com/hisun/b2c/api/core/NetworkManager/readTimeout I
aload 0
aconst_null
putfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
aload 0
iconst_0
putfield com/hisun/b2c/api/core/NetworkManager/isCanceled Z
aload 0
aload 1
putfield com/hisun/b2c/api/core/NetworkManager/mContext Landroid/content/Context;
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager/setDefaultHostnameVerifier()V
return
.limit locals 2
.limit stack 2
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L6
.catch java/io/IOException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch all from L9 to L10 using L3
.catch java/io/IOException from L10 to L11 using L12
.catch java/io/IOException from L13 to L14 using L15
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 0
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
L0:
aload 2
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L1:
aload 3
ifnonnull L7
L4:
aload 0
invokevirtual java/io/InputStream/close()V
L5:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L7:
aload 1
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
goto L0
L2:
astore 2
L9:
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L10:
aload 0
invokevirtual java/io/InputStream/close()V
L11:
goto L5
L12:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L5
L3:
astore 1
L13:
aload 0
invokevirtual java/io/InputStream/close()V
L14:
aload 1
athrow
L15:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L14
L6:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L5
.limit locals 4
.limit stack 5
.end method

.method private detectProxy()V
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mContext Landroid/content/Context;
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/net/NetworkInfo/isAvailable()Z
ifeq L0
aload 2
invokevirtual android/net/NetworkInfo/getType()I
ifne L0
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
astore 2
invokestatic android/net/Proxy/getDefaultPort()I
istore 1
aload 2
ifnull L0
new java/net/InetSocketAddress
dup
aload 2
iload 1
invokespecial java/net/InetSocketAddress/<init>(Ljava/lang/String;I)V
astore 2
aload 0
new java/net/Proxy
dup
getstatic java/net/Proxy$Type/HTTP Ljava/net/Proxy$Type;
aload 2
invokespecial java/net/Proxy/<init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
putfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private static readByteArrayFromStream(Ljava/io/InputStream;)[B
.throws java/lang/Exception
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
sipush 1024
newarray byte
astore 3
L0:
aload 0
aload 3
invokevirtual java/io/InputStream/read([B)I
istore 1
iload 1
ifgt L1
aload 2
invokevirtual java/io/ByteArrayOutputStream/flush()V
aload 0
invokevirtual java/io/InputStream/close()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 0
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 0
areturn
L1:
aload 2
aload 3
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
goto L0
.limit locals 4
.limit stack 4
.end method

.method private setDefaultHostnameVerifier()V
new com/hisun/b2c/api/core/NetworkManager$1
dup
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager$1/<init>(Lcom/hisun/b2c/api/core/NetworkManager;)V
invokestatic javax/net/ssl/HttpsURLConnection/setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
return
.limit locals 1
.limit stack 3
.end method

.method public cancel()V
aload 0
iconst_1
putfield com/hisun/b2c/api/core/NetworkManager/isCanceled Z
return
.limit locals 1
.limit stack 2
.end method

.method public sendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/io/IOException from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/io/IOException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/io/IOException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/io/IOException from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/io/IOException from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/io/IOException from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/io/IOException from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/io/IOException from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/lang/Exception from L28 to L29 using L30
.catch java/io/IOException from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/io/IOException from L31 to L32 using L2
.catch all from L31 to L32 using L3
.catch java/io/IOException from L33 to L34 using L2
.catch all from L33 to L34 using L3
.catch all from L35 to L36 using L3
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager/detectProxy()V
aconst_null
astore 6
aconst_null
astore 5
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 2
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 5
astore 4
aload 6
astore 3
L0:
new java/net/URL
dup
aload 2
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 5
astore 4
aload 6
astore 3
L4:
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
ifnull L37
L5:
aload 5
astore 4
aload 6
astore 3
L6:
aload 2
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
L7:
aload 2
astore 4
aload 2
astore 3
L8:
aload 2
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L9:
aload 2
astore 4
aload 2
astore 3
L10:
aload 2
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L11:
aload 2
astore 4
aload 2
astore 3
L12:
aload 2
iconst_1
invokevirtual java/net/HttpURLConnection/setDoOutput(Z)V
L13:
aload 2
astore 4
aload 2
astore 3
L14:
aload 2
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
L15:
aload 2
astore 4
aload 2
astore 3
L16:
aload 2
ldc "Content-type"
ldc "application/x-www-form-urlencoded;charset=UTF-8"
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L17:
aload 2
astore 4
aload 2
astore 3
L18:
aload 2
invokevirtual java/net/HttpURLConnection/connect()V
L19:
aload 2
astore 4
aload 2
astore 3
L20:
aload 2
invokevirtual java/net/HttpURLConnection/getOutputStream()Ljava/io/OutputStream;
astore 5
L21:
aload 2
astore 4
aload 2
astore 3
L22:
aload 5
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/io/OutputStream/write([B)V
L23:
aload 2
astore 4
aload 2
astore 3
L24:
aload 5
invokevirtual java/io/OutputStream/flush()V
L25:
aload 2
astore 4
aload 2
astore 3
L26:
aload 2
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 1
L27:
aload 2
astore 4
aload 2
astore 3
L28:
aload 1
invokestatic com/hisun/b2c/api/core/NetworkManager/convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
astore 1
L29:
aload 2
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 1
areturn
L37:
aload 5
astore 4
aload 6
astore 3
L31:
aload 2
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
L32:
goto L7
L30:
astore 1
aload 2
astore 4
aload 2
astore 3
L33:
aload 1
getstatic java/lang/System/out Ljava/io/PrintStream;
invokevirtual java/lang/Exception/printStackTrace(Ljava/io/PrintStream;)V
L34:
aload 2
invokevirtual java/net/HttpURLConnection/disconnect()V
L38:
getstatic java/lang/System/out Ljava/io/PrintStream;
aconst_null
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aconst_null
areturn
L2:
astore 1
aload 4
astore 3
L35:
aload 1
getstatic java/lang/System/out Ljava/io/PrintStream;
invokevirtual java/io/IOException/printStackTrace(Ljava/io/PrintStream;)V
L36:
aload 4
invokevirtual java/net/HttpURLConnection/disconnect()V
goto L38
L3:
astore 1
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 1
athrow
.limit locals 7
.limit stack 3
.end method

.method public sendAndWaitResponseByGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/io/IOException from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/io/IOException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/io/IOException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/io/IOException from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/io/IOException from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/io/IOException from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/io/IOException from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/io/IOException from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/io/IOException from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/io/IOException from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/io/IOException from L32 to L33 using L2
.catch all from L32 to L33 using L3
.catch java/io/IOException from L34 to L35 using L2
.catch all from L34 to L35 using L3
.catch all from L36 to L37 using L3
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager/detectProxy()V
aconst_null
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
new org/apache/http/message/BasicNameValuePair
dup
ldc "ver"
aload 2
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 8
new org/apache/http/message/BasicNameValuePair
dup
ldc "plat"
aload 3
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 8
new org/apache/http/message/BasicNameValuePair
dup
ldc "ua"
aload 4
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aconst_null
astore 7
aconst_null
astore 6
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L0:
new org/apache/http/client/entity/UrlEncodedFormEntity
dup
aload 8
ldc "utf-8"
invokespecial org/apache/http/client/entity/UrlEncodedFormEntity/<init>(Ljava/util/List;Ljava/lang/String;)V
astore 8
L1:
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L4:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 1
L5:
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L6:
aload 1
invokevirtual java/net/URL/getFile()Ljava/lang/String;
pop
L7:
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L8:
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
ifnull L38
L9:
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L10:
aload 1
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L11:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L12:
aload 1
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L13:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L14:
aload 1
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L15:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L16:
aload 1
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L17:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L18:
aload 1
iconst_1
invokevirtual java/net/HttpURLConnection/setDoOutput(Z)V
L19:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L20:
aload 1
ldc "Content-type"
ldc "application/x-www-form-urlencoded;charset=utf-8"
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L21:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L22:
aload 1
invokevirtual java/net/HttpURLConnection/connect()V
L23:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L24:
aload 1
invokevirtual java/net/HttpURLConnection/getOutputStream()Ljava/io/OutputStream;
astore 6
L25:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L26:
aload 8
aload 6
invokevirtual org/apache/http/client/entity/UrlEncodedFormEntity/writeTo(Ljava/io/OutputStream;)V
L27:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L28:
aload 6
invokevirtual java/io/OutputStream/flush()V
L29:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L30:
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
invokestatic com/hisun/b2c/api/core/NetworkManager/convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
astore 5
L31:
aload 1
astore 3
aload 5
astore 4
aload 1
astore 2
L32:
ldc "NetworkManager"
new java/lang/StringBuilder
dup
ldc "response "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L33:
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 5
areturn
L38:
aload 6
astore 3
aload 5
astore 4
aload 7
astore 2
L34:
aload 1
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L35:
goto L11
L2:
astore 1
aload 3
astore 2
L36:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L37:
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 4
areturn
L3:
astore 1
aload 2
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 1
athrow
.limit locals 9
.limit stack 5
.end method

.method public sendAndWaitResponseByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L6
.catch java/lang/Exception from L7 to L8 using L2
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager/detectProxy()V
aconst_null
astore 3
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
astore 4
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 5
aload 5
sipush 5000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 5
sipush 30000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L0:
ldc "NetworkManager"
new java/lang/StringBuilder
dup
ldc "Req:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new org/apache/http/client/methods/HttpPost
dup
aload 2
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 2
new org/apache/http/entity/StringEntity
dup
aload 1
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 2
ldc "Content-Type"
ldc "text/xml;Charset=UTF-8"
invokevirtual org/apache/http/client/methods/HttpPost/addHeader(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 1
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
aload 4
aload 2
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 2
L1:
aload 3
astore 1
L3:
aload 2
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L5
aload 2
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 1
L4:
new java/lang/String
dup
aload 1
invokestatic com/hisun/b2c/api/core/NetworkManager/readByteArrayFromStream(Ljava/io/InputStream;)[B
ldc "UTF-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 1
L5:
ldc "NetworkManager"
new java/lang/StringBuilder
dup
ldc "Resp:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
L6:
astore 1
L7:
ldc "NetworkManager"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
aload 3
astore 1
goto L5
L2:
astore 1
ldc "NetworkManager"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
astore 1
goto L5
.limit locals 6
.limit stack 4
.end method

.method public urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/io/IOException from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/io/IOException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/io/IOException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/io/IOException from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/io/IOException from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/io/IOException from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/io/IOException from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/io/IOException from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/io/IOException from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/io/IOException from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/io/IOException from L32 to L33 using L2
.catch all from L32 to L33 using L3
.catch java/io/IOException from L34 to L35 using L2
.catch all from L34 to L35 using L3
.catch java/io/IOException from L36 to L37 using L2
.catch all from L36 to L37 using L3
.catch all from L38 to L39 using L3
iconst_0
istore 5
aload 0
invokespecial com/hisun/b2c/api/core/NetworkManager/detectProxy()V
aconst_null
astore 9
aconst_null
astore 1
aload 1
astore 8
aload 9
astore 7
L0:
new java/net/URL
dup
aload 2
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 1
astore 8
aload 9
astore 7
L4:
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
ifnull L40
L5:
aload 1
astore 8
aload 9
astore 7
L6:
aload 2
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/mProxy Ljava/net/Proxy;
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L7:
aload 1
astore 8
aload 1
astore 7
L8:
aload 1
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L9:
aload 1
astore 8
aload 1
astore 7
L10:
aload 1
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L11:
aload 1
astore 8
aload 1
astore 7
L12:
aload 1
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
L13:
aload 1
astore 8
aload 1
astore 7
L14:
aload 1
invokevirtual java/net/HttpURLConnection/connect()V
L15:
aload 1
astore 8
aload 1
astore 7
L16:
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 2
L17:
aload 1
astore 8
aload 1
astore 7
L18:
new java/io/File
dup
aload 3
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
L19:
aload 1
astore 8
aload 1
astore 7
L20:
aload 3
invokevirtual java/io/File/createNewFile()Z
pop
L21:
aload 1
astore 8
aload 1
astore 7
L22:
new java/io/FileOutputStream
dup
aload 3
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 3
L23:
aload 1
astore 8
aload 1
astore 7
L24:
sipush 1024
newarray byte
astore 9
L25:
aload 1
astore 8
aload 1
astore 7
L26:
aload 2
aload 9
invokevirtual java/io/InputStream/read([B)I
istore 4
L27:
iload 4
ifle L29
aload 1
astore 8
aload 1
astore 7
L28:
aload 0
getfield com/hisun/b2c/api/core/NetworkManager/isCanceled Z
ifeq L41
L29:
aload 1
astore 8
aload 1
astore 7
L30:
aload 3
invokevirtual java/io/FileOutputStream/close()V
L31:
aload 1
astore 8
aload 1
astore 7
L32:
aload 2
invokevirtual java/io/InputStream/close()V
L33:
iconst_1
istore 6
iload 6
istore 5
aload 1
ifnull L42
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
iload 6
istore 5
L42:
iload 5
ireturn
L40:
aload 1
astore 8
aload 9
astore 7
L34:
aload 2
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L35:
goto L7
L41:
aload 1
astore 8
aload 1
astore 7
L36:
aload 3
aload 9
iconst_0
iload 4
invokevirtual java/io/FileOutputStream/write([BII)V
L37:
goto L25
L2:
astore 1
aload 8
astore 7
L38:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L39:
aload 8
ifnull L42
aload 8
invokevirtual java/net/HttpURLConnection/disconnect()V
iconst_0
ireturn
L3:
astore 1
aload 7
ifnull L43
aload 7
invokevirtual java/net/HttpURLConnection/disconnect()V
L43:
aload 1
athrow
.limit locals 10
.limit stack 4
.end method
