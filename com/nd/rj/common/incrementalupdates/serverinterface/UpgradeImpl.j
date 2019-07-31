.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface
.inner class inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl$1

.field final 'DO_NOT_VERIFY' Ljavax/net/ssl/HostnameVerifier;

.field private 'mSSLSocketFactory' Ljavax/net/ssl/SSLSocketFactory;

.field private 'mUpgradeInfo' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl$1
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl$1/<init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl;)V
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
return
.limit locals 1
.limit stack 4
.end method

.method private downloadFile(Lcom/nd/rj/common/incrementalupdates/serverinterface/BufferControl;Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
.catch java/net/MalformedURLException from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L5
.catch all from L7 to L8 using L6
.catch java/lang/Exception from L9 to L10 using L5
.catch all from L9 to L10 using L6
.catch java/lang/Exception from L11 to L12 using L5
.catch all from L11 to L12 using L6
.catch java/lang/Exception from L13 to L14 using L5
.catch all from L13 to L14 using L6
.catch java/lang/Exception from L15 to L16 using L5
.catch all from L15 to L16 using L6
.catch java/lang/Exception from L17 to L18 using L5
.catch all from L17 to L18 using L6
.catch java/lang/Exception from L19 to L20 using L5
.catch all from L19 to L20 using L6
.catch java/lang/Exception from L21 to L22 using L5
.catch all from L21 to L22 using L6
.catch java/lang/Exception from L23 to L24 using L5
.catch all from L23 to L24 using L6
.catch java/lang/Exception from L25 to L26 using L5
.catch all from L25 to L26 using L6
.catch java/lang/Exception from L27 to L28 using L5
.catch all from L27 to L28 using L6
.catch java/lang/Exception from L29 to L30 using L5
.catch all from L29 to L30 using L6
.catch java/io/IOException from L31 to L32 using L33
.catch java/lang/Exception from L34 to L35 using L5
.catch all from L34 to L35 using L6
.catch java/lang/Exception from L36 to L37 using L38
.catch all from L36 to L37 using L39
.catch java/lang/Exception from L37 to L40 using L38
.catch all from L37 to L40 using L39
.catch java/lang/Exception from L41 to L42 using L38
.catch all from L41 to L42 using L39
.catch java/lang/Exception from L42 to L43 using L38
.catch all from L42 to L43 using L39
.catch java/lang/Exception from L44 to L45 using L38
.catch all from L44 to L45 using L39
.catch java/io/IOException from L46 to L47 using L48
.catch java/lang/Exception from L49 to L50 using L38
.catch all from L49 to L50 using L39
.catch java/lang/Exception from L51 to L52 using L38
.catch all from L51 to L52 using L39
.catch all from L53 to L54 using L6
.catch java/io/IOException from L55 to L56 using L57
.catch java/lang/Exception from L58 to L59 using L38
.catch all from L58 to L59 using L39
.catch java/lang/Exception from L60 to L61 using L38
.catch all from L60 to L61 using L39
.catch java/io/IOException from L62 to L63 using L64
.catch java/lang/Exception from L65 to L66 using L38
.catch all from L65 to L66 using L39
.catch java/lang/Exception from L67 to L68 using L38
.catch all from L67 to L68 using L39
.catch java/lang/Exception from L69 to L70 using L38
.catch all from L69 to L70 using L39
.catch java/io/IOException from L71 to L72 using L73
.catch java/lang/Exception from L74 to L75 using L38
.catch all from L74 to L75 using L39
.catch java/io/IOException from L76 to L77 using L78
.catch all from L79 to L80 using L6
.catch java/io/IOException from L81 to L82 using L83
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageMd5()Ljava/lang/String;
astore 22
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageSize()I
istore 7
new java/io/File
dup
aload 3
aload 22
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 20
aload 0
aload 20
iload 7
aload 22
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/isFileValid(Ljava/io/File;ILjava/lang/String;)Z
ifeq L84
aload 20
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 1
L85:
aload 1
areturn
L84:
aload 20
invokevirtual java/io/File/delete()Z
pop
iconst_0
istore 5
new java/io/File
dup
aload 3
new java/lang/StringBuilder
dup
aload 22
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".temp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 21
aload 21
invokevirtual java/io/File/exists()Z
ifeq L86
aload 21
invokevirtual java/io/File/length()J
l2i
istore 6
iload 6
istore 5
iload 6
iload 7
if_icmpne L86
iload 6
istore 5
aload 0
aload 21
iload 7
aload 22
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/isFileValid(Ljava/io/File;ILjava/lang/String;)Z
ifeq L86
aload 21
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L86:
iload 5
ifle L87
iconst_1
istore 6
L0:
new java/net/URL
dup
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageUrl()Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 14
L1:
aconst_null
astore 17
aconst_null
astore 15
aconst_null
astore 18
aconst_null
astore 19
aload 18
astore 16
L3:
aload 14
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 14
L4:
iload 6
ifeq L12
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L7:
new java/lang/StringBuilder
dup
ldc "bytes="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 23
L8:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L9:
aload 23
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L10:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L11:
aload 14
ldc "Range"
aload 23
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L12:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L13:
aload 14
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L14:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L15:
aload 14
sipush 30000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L16:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L17:
aload 14
ldc_w 60000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L18:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L19:
aload 14
instanceof javax/net/ssl/HttpsURLConnection
ifeq L28
L20:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L21:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
ifnonnull L24
L22:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L23:
aload 0
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
L24:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L25:
aload 14
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L26:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L27:
aload 14
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L28:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L29:
aload 14
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 8
L30:
iload 8
sipush 200
if_icmpeq L88
iload 8
sipush 206
if_icmpeq L88
iconst_0
ifeq L32
L31:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L32:
aload 14
ifnull L89
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
L89:
ldc ""
areturn
L87:
iconst_0
istore 6
goto L0
L2:
astore 1
ldc ""
areturn
L88:
aload 18
astore 16
aload 14
astore 15
aload 14
astore 17
L34:
new java/io/BufferedInputStream
dup
aload 14
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;)V
astore 18
L35:
iload 6
ifeq L49
L36:
new java/io/FileOutputStream
dup
aload 21
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
astore 15
L37:
new java/io/BufferedOutputStream
dup
aload 15
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;)V
astore 23
new com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
dup
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/<init>()V
astore 19
aload 19
iload 7
i2l
putfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
aload 19
iload 5
i2l
putfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
L40:
iconst_0
istore 5
L41:
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/getBuffer()[B
astore 16
invokestatic java/lang/System/currentTimeMillis()J
lstore 9
L42:
aload 18
aload 16
invokevirtual java/io/InputStream/read([B)I
istore 6
L43:
iload 6
ifgt L51
L44:
aload 23
invokevirtual java/io/BufferedOutputStream/close()V
aload 15
invokevirtual java/io/FileOutputStream/close()V
aload 0
aload 21
iload 7
aload 22
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/isFileValid(Ljava/io/File;ILjava/lang/String;)Z
ifeq L74
aload 21
aload 20
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifeq L69
aload 20
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 15
L45:
aload 15
astore 2
aload 18
ifnull L47
L46:
aload 18
invokevirtual java/io/InputStream/close()V
L47:
aload 2
astore 1
aload 14
ifnull L85
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 2
areturn
L49:
new java/io/FileOutputStream
dup
aload 21
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 15
L50:
goto L37
L51:
aload 23
aload 16
iconst_0
iload 6
invokevirtual java/io/BufferedOutputStream/write([BII)V
aload 19
aload 19
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
iload 6
i2l
ladd
putfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/getBuffer()[B
astore 17
aload 19
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
aload 19
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
lcmp
iflt L58
aload 4
aload 19
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L52:
aload 17
astore 16
goto L42
L38:
astore 15
L90:
aload 18
astore 16
aload 14
astore 15
L53:
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/isMinBufferSize()Z
istore 13
L54:
iload 13
ifeq L91
aload 18
ifnull L56
L55:
aload 18
invokevirtual java/io/InputStream/close()V
L56:
aload 14
ifnull L92
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
L92:
ldc ""
areturn
L58:
invokestatic java/lang/System/currentTimeMillis()J
lstore 11
L59:
lload 11
lload 9
lsub
ldc2_w 500L
lcmp
ifle L93
lload 11
lstore 9
L60:
aload 4
aload 19
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L61:
aload 17
astore 16
goto L42
L39:
astore 1
aload 18
astore 16
L94:
aload 16
ifnull L63
L62:
aload 16
invokevirtual java/io/InputStream/close()V
L63:
aload 14
ifnull L95
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
L95:
aload 1
athrow
L93:
aload 17
astore 16
L65:
aload 19
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
ldc2_w 100L
lmul
aload 19
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
ldiv
l2i
iconst_2
isub
iload 5
if_icmplt L42
L66:
iload 5
iconst_2
iadd
istore 5
L67:
aload 4
aload 19
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L68:
aload 17
astore 16
goto L42
L69:
aload 21
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 15
L70:
aload 15
astore 2
aload 18
ifnull L72
L71:
aload 18
invokevirtual java/io/InputStream/close()V
L72:
aload 2
astore 1
aload 14
ifnull L85
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 2
areturn
L74:
aload 21
invokevirtual java/io/File/delete()Z
pop
L75:
aload 18
ifnull L77
L76:
aload 18
invokevirtual java/io/InputStream/close()V
L77:
aload 14
ifnull L96
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
L96:
ldc ""
areturn
L91:
aload 18
astore 16
aload 14
astore 15
L79:
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/BufferControl
dup
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/getCurrentPosition()I
iconst_1
isub
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/<init>(IZ)V
aload 2
aload 3
aload 4
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadFile(Lcom/nd/rj/common/incrementalupdates/serverinterface/BufferControl;Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
astore 2
L80:
aload 18
ifnull L82
L81:
aload 18
invokevirtual java/io/InputStream/close()V
L82:
aload 2
astore 1
aload 14
ifnull L85
aload 14
invokevirtual java/net/HttpURLConnection/disconnect()V
aload 2
areturn
L33:
astore 1
goto L32
L48:
astore 1
goto L47
L73:
astore 1
goto L72
L78:
astore 1
goto L77
L57:
astore 1
goto L56
L83:
astore 1
goto L82
L64:
astore 2
goto L63
L6:
astore 1
aload 15
astore 14
goto L94
L5:
astore 14
aload 19
astore 18
aload 17
astore 14
goto L90
.limit locals 24
.limit stack 6
.end method

.method private downloadFullPackage(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/BufferControl
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/<init>()V
aload 1
aload 2
aload 3
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadFile(Lcom/nd/rj/common/incrementalupdates/serverinterface/BufferControl;Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method

.method private downloadIncrementalPackage(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/BufferControl
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/<init>()V
aload 1
aload 2
aload 3
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadFile(Lcom/nd/rj/common/incrementalupdates/serverinterface/BufferControl;Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method

.method private getCheckUpgradeUrl(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Ljava/lang/String;
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl()Z
ifeq L0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getUrl()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new java/lang/StringBuilder
dup
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getUrl()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
L2:
aload 2
ldc "/api/release?type=json&appid=%d&product=%s&cver=%d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getCurMd5()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getAppId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getProduct()Ljava/lang/String;
aastore
dup
iconst_2
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getCurVer()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
ldc "url is empty"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
goto L2
L0:
new java/lang/StringBuilder
dup
ldc "http://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isOuterNet()Z
ifeq L4
aload 2
ldc "oa.99.com/v2/app"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L4:
aload 2
ldc "192.168.94.22/app"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L3:
aload 2
ldc "&cmd5=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getAppId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getProduct()Ljava/lang/String;
aastore
dup
iconst_2
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getCurVer()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
aload 3
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 6
.end method

.method private getPackageInfo(Lorg/json/JSONObject;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/<init>()V
astore 3
aload 3
aload 1
ldc "url"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/setPackageUrl(Ljava/lang/String;)V
aload 3
aload 1
ldc "md5"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/setPackageMd5(Ljava/lang/String;)V
aload 3
aload 1
ldc "size"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/setPackageSize(I)V
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/isObjectValid()Z
istore 2
L1:
iload 2
ifeq L3
aload 3
astore 1
L4:
aload 1
areturn
L3:
aconst_null
astore 1
goto L4
L2:
astore 1
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method private isFileValid(Ljava/io/File;ILjava/lang/String;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
aload 1
invokevirtual java/io/File/length()J
iload 2
i2l
lcmp
ifne L1
aload 3
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Utils/getFileMD5(Ljava/io/File;)Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
.catch com/github/kevinsawicki/http/HttpRequest$HttpRequestException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L6
.catch org/json/JSONException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L6
.catch org/json/JSONException from L10 to L11 using L6
.catch org/json/JSONException from L11 to L12 using L6
.catch org/json/JSONException from L12 to L13 using L6
.catch org/json/JSONException from L13 to L14 using L6
iconst_0
istore 4
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 1
ifnull L15
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isObjectValid()Z
ifne L16
L15:
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L16:
aload 0
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/getCheckUpgradeUrl(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Ljava/lang/String;
astore 5
aload 5
invokestatic com/nd/rj/common/incrementalupdates/Utils/isUrl(Ljava/lang/String;)Z
ifne L0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L0:
aload 5
invokestatic com/github/kevinsawicki/http/HttpRequest/get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
invokevirtual com/github/kevinsawicki/http/HttpRequest/body()Ljava/lang/String;
astore 5
L1:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
ldc "UpgradeImpl"
ldc "response is isEmpty"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/github/kevinsawicki/http/HttpRequest$HttpRequestException/printStackTrace()V
ldc "UpgradeImpl"
ldc "CheckVersionResult.NETWORK_ERROR"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "UpgradeImpl"
new java/lang/StringBuilder
dup
ldc "exception:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L4:
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "ver"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
iload 2
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getCurVer()I
if_icmple L13
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/<init>()V
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
iload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setNewestVersionCode(I)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 5
ldc "vername"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setNewestVersionName(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 5
ldc "notes"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setNewestVersionHistory(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
astore 1
aload 5
ldc "isbeta"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
ifne L17
L5:
iconst_0
istore 3
L7:
aload 1
iload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setBetaFlag(Z)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
astore 1
aload 5
ldc "isforce"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
ifne L18
L8:
iload 4
istore 3
L9:
aload 1
iload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setForceFlag(Z)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 0
aload 5
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/getPackageInfo(Lorg/json/JSONObject;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setFullPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
aload 5
ldc "patch"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L10
aload 5
ldc "patch"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 0
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/getPackageInfo(Lorg/json/JSONObject;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/setIncrementalPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
L10:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isObjectValid()Z
ifeq L12
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
ifeq L11
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/FORCED_UPGRADE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L11:
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NEW_VERSION_AVAILABLE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L12:
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
ldc "UpgradeImpl"
ldc "mUpgradeInfo.isObjectValid()"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L13:
ldc "UpgradeImpl"
ldc "newestVerFromServer < param.getCurVer()"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/LOCAL_VERSION_IS_NEWEST Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
astore 1
L14:
aload 1
areturn
L6:
astore 1
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
ldc "UpgradeImpl"
new java/lang/StringBuilder
dup
ldc "JSONException"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
L17:
iconst_1
istore 3
goto L7
L18:
iconst_1
istore 3
goto L9
.limit locals 6
.limit stack 4
.end method

.method public downloadUpgradeFile(Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;Lde/greenrobot/event/EventBus;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult;
aload 2
ifnull L0
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isObjectValid()Z
ifne L1
L0:
aconst_null
areturn
L1:
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getFullPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
astore 4
aload 4
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageMd5()Ljava/lang/String;
astore 5
new java/io/File
dup
aload 1
aload 5
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 6
aload 0
aload 6
aload 4
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageSize()I
aload 5
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/isFileValid(Ljava/io/File;ILjava/lang/String;)Z
ifeq L2
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult
dup
iconst_1
aload 6
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/<init>(ZLjava/lang/String;)V
areturn
L2:
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getIncrementalPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
astore 5
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/hasIncrementalInfo()Z
ifeq L3
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult
dup
iconst_0
aload 0
aload 5
aload 1
aload 3
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadIncrementalPackage(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/<init>(ZLjava/lang/String;)V
areturn
L3:
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult
dup
iconst_1
aload 0
aload 4
aload 1
aload 3
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadFullPackage(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;Ljava/lang/String;Lde/greenrobot/event/EventBus;)Ljava/lang/String;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/<init>(ZLjava/lang/String;)V
areturn
.limit locals 7
.limit stack 7
.end method

.method public getUpgradeInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
dup
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/<init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/KeyManagementException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/KeyManagementException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch all from L7 to L8 using L4
.catch all from L9 to L10 using L4
new com/nd/rj/common/incrementalupdates/serverinterface/PagTrustManager
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PagTrustManager/<init>()V
astore 5
aconst_null
astore 3
aconst_null
astore 1
aconst_null
astore 2
L0:
ldc "SSL"
invokestatic javax/net/ssl/SSLContext/getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
astore 4
L1:
aload 4
astore 2
aload 4
astore 3
aload 4
astore 1
L5:
aload 4
aconst_null
iconst_1
anewarray javax/net/ssl/TrustManager
dup
iconst_0
aload 5
aastore
aconst_null
invokevirtual javax/net/ssl/SSLContext/init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
L6:
aload 4
areturn
L2:
astore 3
aload 2
astore 1
L7:
aload 3
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L8:
aload 2
areturn
L3:
astore 2
aload 3
astore 1
L9:
aload 2
invokevirtual java/security/KeyManagementException/printStackTrace()V
L10:
aload 3
areturn
L4:
astore 2
aload 1
areturn
.limit locals 6
.limit stack 6
.end method
