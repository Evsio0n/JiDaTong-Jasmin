.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/String;>;"
.inner class public DownloadFileTask inner com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask outer com/common/android/utils/httpRequest/HttpRequest

.field private 'mDownloadListener' Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;

.field private 'mRequest' Lorg/apache/http/client/methods/HttpGet;

.field private 'mSaveFilePath' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/common/android/utils/httpRequest/HttpRequest;

.method public <init>(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
aload 0
aload 1
putfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 3
putfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mSaveFilePath Ljava/lang/String;
aload 0
aload 4
putfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mDownloadListener Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;
aload 0
aload 2
putfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mRequest Lorg/apache/http/client/methods/HttpGet;
return
.limit locals 5
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/doInBackground([Ljava/lang/Void;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/String;
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
.catch java/io/IOException from L46 to L47 using L48
.catch java/io/IOException from L49 to L50 using L50
.catch java/net/SocketTimeoutException from L51 to L52 using L2
.catch java/net/SocketException from L51 to L52 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L51 to L52 using L4
.catch java/net/UnknownHostException from L51 to L52 using L5
.catch java/lang/Exception from L51 to L52 using L6
.catch all from L51 to L52 using L7
.catch java/net/SocketTimeoutException from L53 to L54 using L2
.catch java/net/SocketException from L53 to L54 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L53 to L54 using L4
.catch java/net/UnknownHostException from L53 to L54 using L5
.catch java/lang/Exception from L53 to L54 using L6
.catch all from L53 to L54 using L7
.catch java/net/SocketTimeoutException from L55 to L56 using L2
.catch java/net/SocketException from L55 to L56 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L55 to L56 using L4
.catch java/net/UnknownHostException from L55 to L56 using L5
.catch java/lang/Exception from L55 to L56 using L6
.catch all from L55 to L56 using L7
.catch java/net/SocketTimeoutException from L57 to L58 using L2
.catch java/net/SocketException from L57 to L58 using L3
.catch org/apache/http/conn/ConnectTimeoutException from L57 to L58 using L4
.catch java/net/UnknownHostException from L57 to L58 using L5
.catch java/lang/Exception from L57 to L58 using L6
.catch all from L57 to L58 using L7
.catch java/net/SocketTimeoutException from L58 to L59 using L60
.catch java/net/SocketException from L58 to L59 using L61
.catch org/apache/http/conn/ConnectTimeoutException from L58 to L59 using L62
.catch java/net/UnknownHostException from L58 to L59 using L63
.catch java/lang/Exception from L58 to L59 using L64
.catch all from L58 to L59 using L65
.catch java/net/SocketTimeoutException from L66 to L67 using L60
.catch java/net/SocketException from L66 to L67 using L61
.catch org/apache/http/conn/ConnectTimeoutException from L66 to L67 using L62
.catch java/net/UnknownHostException from L66 to L67 using L63
.catch java/lang/Exception from L66 to L67 using L64
.catch all from L66 to L67 using L65
.catch java/net/SocketTimeoutException from L68 to L69 using L60
.catch java/net/SocketException from L68 to L69 using L61
.catch org/apache/http/conn/ConnectTimeoutException from L68 to L69 using L62
.catch java/net/UnknownHostException from L68 to L69 using L63
.catch java/lang/Exception from L68 to L69 using L64
.catch all from L68 to L69 using L65
.catch java/net/SocketTimeoutException from L70 to L71 using L60
.catch java/net/SocketException from L70 to L71 using L61
.catch org/apache/http/conn/ConnectTimeoutException from L70 to L71 using L62
.catch java/net/UnknownHostException from L70 to L71 using L63
.catch java/lang/Exception from L70 to L71 using L64
.catch all from L70 to L71 using L65
.catch java/io/IOException from L72 to L73 using L74
.catch java/io/IOException from L75 to L76 using L77
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
getstatic com/nd/android/u/allcommon/R$string/nd_http_error I
istore 2
aconst_null
astore 23
aconst_null
astore 22
aconst_null
astore 24
aconst_null
astore 1
aconst_null
astore 10
aconst_null
astore 25
aconst_null
astore 18
aconst_null
astore 16
aconst_null
astore 20
aconst_null
astore 19
aconst_null
astore 21
aconst_null
astore 17
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mSaveFilePath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 26
aload 26
invokevirtual java/io/File/exists()Z
ifeq L126
aload 26
invokevirtual java/io/File/delete()Z
pop
L126:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L0:
new org/apache/http/params/BasicHttpParams
dup
invokespecial org/apache/http/params/BasicHttpParams/<init>()V
astore 27
L1:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L8:
aload 27
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
L9:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L10:
aload 27
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
L11:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L12:
aload 27
iconst_1
invokestatic org/apache/http/client/params/HttpClientParams/setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
L13:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L14:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 27
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$000(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
astore 27
L15:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L16:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 27
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$100(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/client/HttpClient;)V
L17:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L18:
aload 27
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mRequest Lorg/apache/http/client/methods/HttpGet;
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 27
L19:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L20:
aload 27
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 2
L21:
aload 25
astore 15
aload 23
astore 13
aload 22
astore 14
aload 24
astore 11
aload 1
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L22:
aload 27
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 10
L23:
iload 2
sipush 200
if_icmpeq L127
iload 2
sipush 201
if_icmpeq L127
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L24:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 10
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 24
L25:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L26:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 23
L27:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L28:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 1
L29:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L30:
aload 24
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 22
L31:
aload 22
ifnull L128
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L32:
aload 23
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 22
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L33:
goto L29
L2:
astore 10
aload 17
astore 1
L129:
aload 15
astore 8
aload 1
astore 9
L34:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 10
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L35:
aload 15
astore 8
aload 1
astore 9
L36:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_timeout_error I
istore 3
L37:
aload 15
ifnull L39
L38:
aload 15
invokevirtual java/io/InputStream/close()V
L39:
iload 3
istore 2
aload 1
ifnull L130
L41:
aload 1
invokevirtual java/io/OutputStream/close()V
L42:
iload 3
istore 2
L130:
iload 2
sipush 200
if_icmpeq L131
iload 2
sipush 201
if_icmpeq L131
L132:
aconst_null
areturn
L128:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L44:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 23
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L45:
aload 10
ifnull L47
L46:
aload 10
invokevirtual java/io/InputStream/close()V
L47:
iconst_0
ifeq L132
L49:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L50:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L48:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L47
L127:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L51:
aload 27
ldc "Content-Encoding"
invokeinterface org/apache/http/HttpResponse/getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header; 1
astore 22
L52:
aload 10
astore 1
aload 22
ifnull L56
aload 10
astore 15
aload 10
astore 1
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L53:
aload 22
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L56
L54:
aload 10
astore 15
aload 10
astore 13
aload 10
astore 14
aload 10
astore 11
aload 10
astore 12
iload 2
istore 3
aload 10
astore 8
aload 21
astore 9
L55:
new java/util/zip/GZIPInputStream
dup
aload 10
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L56:
aload 1
astore 15
aload 1
astore 13
aload 1
astore 14
aload 1
astore 11
aload 1
astore 12
iload 2
istore 3
aload 1
astore 8
aload 21
astore 9
L57:
new java/io/FileOutputStream
dup
aload 26
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 10
L58:
sipush 1024
newarray byte
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 27
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$200(Lcom/common/android/utils/httpRequest/HttpRequest;Lorg/apache/http/HttpResponse;)J
lstore 6
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fileLength:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L59:
lconst_0
lstore 4
L66:
aload 1
aload 8
invokevirtual java/io/InputStream/read([B)I
istore 3
L67:
iload 3
iconst_m1
if_icmpeq L133
lload 4
iload 3
i2l
ladd
lstore 4
L68:
aload 0
iconst_1
anewarray java/lang/Integer
dup
iconst_0
lload 4
l2f
lload 6
l2f
fdiv
ldc_w 100.0F
fmul
f2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "downloadedFileLength:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " || %"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
l2f
lload 6
l2f
fdiv
ldc_w 100.0F
fmul
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 10
aload 8
iconst_0
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L69:
goto L66
L70:
aload 26
new java/io/File
dup
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mSaveFilePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
L71:
aload 1
ifnull L73
L72:
aload 1
invokevirtual java/io/InputStream/close()V
L73:
aload 10
ifnull L134
L75:
aload 10
invokevirtual java/io/OutputStream/close()V
L76:
goto L130
L74:
astore 1
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L73
L77:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L130
L40:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L39
L43:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 3
istore 2
goto L130
L3:
astore 10
aload 18
astore 1
L135:
aload 13
astore 8
aload 1
astore 9
L78:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 10
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L79:
aload 13
astore 8
aload 1
astore 9
L80:
getstatic com/nd/android/u/allcommon/R$string/nd_socket_error I
istore 3
L81:
aload 13
ifnull L83
L82:
aload 13
invokevirtual java/io/InputStream/close()V
L83:
iload 3
istore 2
aload 1
ifnull L130
L85:
aload 1
invokevirtual java/io/OutputStream/close()V
L86:
iload 3
istore 2
goto L130
L87:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 3
istore 2
goto L130
L84:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L83
L4:
astore 10
aload 16
astore 1
L136:
aload 14
astore 8
aload 1
astore 9
L88:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 10
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L89:
aload 14
astore 8
aload 1
astore 9
L90:
getstatic com/nd/android/u/allcommon/R$string/nd_connect_timeout_error I
istore 3
L91:
aload 14
ifnull L93
L92:
aload 14
invokevirtual java/io/InputStream/close()V
L93:
iload 3
istore 2
aload 1
ifnull L130
L95:
aload 1
invokevirtual java/io/OutputStream/close()V
L96:
iload 3
istore 2
goto L130
L97:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 3
istore 2
goto L130
L94:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L93
L5:
astore 10
aload 20
astore 1
L137:
aload 11
astore 8
aload 1
astore 9
L98:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 10
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L99:
aload 11
astore 8
aload 1
astore 9
L100:
getstatic com/nd/android/u/allcommon/R$string/nd_unknown_host_error I
istore 3
L101:
aload 11
ifnull L103
L102:
aload 11
invokevirtual java/io/InputStream/close()V
L103:
iload 3
istore 2
aload 1
ifnull L130
L105:
aload 1
invokevirtual java/io/OutputStream/close()V
L106:
iload 3
istore 2
goto L130
L107:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 3
istore 2
goto L130
L104:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L103
L6:
astore 10
aload 19
astore 1
L138:
aload 12
astore 8
aload 1
astore 9
L108:
aload 26
invokevirtual java/io/File/exists()Z
ifeq L111
L109:
aload 12
astore 8
aload 1
astore 9
L110:
aload 26
invokevirtual java/io/File/delete()Z
pop
L111:
aload 12
astore 8
aload 1
astore 9
L112:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
aload 10
invokestatic com/common/android/utils/httpRequest/HttpRequest/access$300(Lcom/common/android/utils/httpRequest/HttpRequest;Ljava/lang/Exception;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L113:
aload 12
ifnull L115
L114:
aload 12
invokevirtual java/io/InputStream/close()V
L115:
iload 3
istore 2
aload 1
ifnull L130
L117:
aload 1
invokevirtual java/io/OutputStream/close()V
L118:
iload 3
istore 2
goto L130
L119:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iload 3
istore 2
goto L130
L116:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L115
L7:
astore 1
L139:
aload 8
ifnull L121
L120:
aload 8
invokevirtual java/io/InputStream/close()V
L121:
aload 9
ifnull L124
L123:
aload 9
invokevirtual java/io/OutputStream/close()V
L124:
aload 1
athrow
L122:
astore 8
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/this$0 Lcom/common/android/utils/httpRequest/HttpRequest;
getfield com/common/android/utils/httpRequest/HttpRequest/TAG Ljava/lang/String;
aload 8
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L121
L125:
astore 8
aload 8
invokevirtual java/io/IOException/printStackTrace()V
goto L124
L131:
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mSaveFilePath Ljava/lang/String;
areturn
L65:
astore 11
aload 10
astore 9
aload 1
astore 8
aload 11
astore 1
goto L139
L64:
astore 9
aload 10
astore 8
aload 9
astore 10
aload 1
astore 12
iload 2
istore 3
aload 8
astore 1
goto L138
L63:
astore 9
aload 10
astore 8
aload 9
astore 10
aload 1
astore 11
aload 8
astore 1
goto L137
L62:
astore 9
aload 10
astore 8
aload 9
astore 10
aload 1
astore 14
aload 8
astore 1
goto L136
L61:
astore 9
aload 10
astore 8
aload 9
astore 10
aload 1
astore 13
aload 8
astore 1
goto L135
L134:
goto L130
L60:
astore 9
aload 10
astore 8
aload 9
astore 10
aload 1
astore 15
aload 8
astore 1
goto L129
L133:
iload 2
sipush 200
if_icmpeq L70
iload 2
sipush 201
if_icmpne L71
goto L70
.limit locals 28
.limit stack 7
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/String
invokevirtual com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mDownloadListener Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;
aload 1
invokeinterface com/common/android/utils/httpRequest/HttpRequest$DownloadListener/finish(Ljava/lang/String;)V 1
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Integer;)V
aload 0
getfield com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/mDownloadListener Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/common/android/utils/httpRequest/HttpRequest$DownloadListener/updateStatus(I)V 1
aload 0
aload 1
invokespecial android/os/AsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/common/android/utils/httpRequest/HttpRequest$DownloadFileTask/onProgressUpdate([Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
