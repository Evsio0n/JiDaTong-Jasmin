.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/ProgressDownloadManager
.super java/lang/Object
.inner class inner com/nd/android/u/business/com/ProgressDownloadManager$1
.inner class inner com/nd/android/u/business/com/ProgressDownloadManager$2
.inner class public static abstract interface onDonwloadListener inner com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener outer com/nd/android/u/business/com/ProgressDownloadManager

.field final 'DO_NOT_VERIFY' Ljavax/net/ssl/HostnameVerifier;

.field private 'mCancelDownload' Z

.field private 'mIsDisconnected' Z

.field private 'mListener' Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;

.field private 'mRequestPropertyHashMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'mSSLSocketFactory' Ljavax/net/ssl/SSLSocketFactory;

.field private 'mShowProgress' Z

.field private 'observer' Lims/outInterface/IStateObserver;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/business/com/ProgressDownloadManager/mIsDisconnected Z
aload 0
iconst_1
putfield com/nd/android/u/business/com/ProgressDownloadManager/mShowProgress Z
aload 0
iconst_0
putfield com/nd/android/u/business/com/ProgressDownloadManager/mCancelDownload Z
aload 0
new com/nd/android/u/business/com/ProgressDownloadManager$1
dup
aload 0
invokespecial com/nd/android/u/business/com/ProgressDownloadManager$1/<init>(Lcom/nd/android/u/business/com/ProgressDownloadManager;)V
putfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
aload 0
new com/nd/android/u/business/com/ProgressDownloadManager$2
dup
aload 0
invokespecial com/nd/android/u/business/com/ProgressDownloadManager$2/<init>(Lcom/nd/android/u/business/com/ProgressDownloadManager;)V
putfield com/nd/android/u/business/com/ProgressDownloadManager/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nd/android/u/business/com/ProgressDownloadManager;Z)V
aload 0
iload 1
putfield com/nd/android/u/business/com/ProgressDownloadManager/mIsDisconnected Z
return
.limit locals 2
.limit stack 2
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 1
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ldc "/"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
L0:
aload 4
iconst_1
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 2
L1:
lload 2
lreturn
L2:
astore 4
ldc "debug"
ldc "The HttpResponse contains an invalid instance-length: %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
lconst_0
lreturn
.limit locals 5
.limit stack 6
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public cancelDownload()V
aload 0
iconst_1
putfield com/nd/android/u/business/com/ProgressDownloadManager/mCancelDownload Z
return
.limit locals 1
.limit stack 2
.end method

.method public setOnDownloadListener(Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;)V
aload 0
aload 1
putfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showProgress(Z)V
aload 0
iload 1
putfield com/nd/android/u/business/com/ProgressDownloadManager/mShowProgress Z
return
.limit locals 2
.limit stack 2
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
new com/nd/android/u/business/com/ChatTrustManager
dup
invokespecial com/nd/android/u/business/com/ChatTrustManager/<init>()V
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

.method public startDownload(Ljava/lang/String;Ljava/io/File;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L5 to L6 using L2
.catch java/lang/Exception from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/io/FileNotFoundException from L7 to L8 using L2
.catch java/lang/Exception from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/io/FileNotFoundException from L9 to L10 using L2
.catch java/lang/Exception from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/io/FileNotFoundException from L11 to L12 using L2
.catch java/lang/Exception from L11 to L12 using L3
.catch all from L11 to L12 using L4
.catch java/io/FileNotFoundException from L13 to L14 using L2
.catch java/lang/Exception from L13 to L14 using L3
.catch all from L13 to L14 using L4
.catch java/io/FileNotFoundException from L15 to L16 using L2
.catch java/lang/Exception from L15 to L16 using L3
.catch all from L15 to L16 using L4
.catch java/io/FileNotFoundException from L17 to L18 using L2
.catch java/lang/Exception from L17 to L18 using L3
.catch all from L17 to L18 using L4
.catch java/io/FileNotFoundException from L19 to L20 using L2
.catch java/lang/Exception from L19 to L20 using L3
.catch all from L19 to L20 using L4
.catch java/io/FileNotFoundException from L21 to L22 using L2
.catch java/lang/Exception from L21 to L22 using L3
.catch all from L21 to L22 using L4
.catch java/io/FileNotFoundException from L23 to L24 using L2
.catch java/lang/Exception from L23 to L24 using L3
.catch all from L23 to L24 using L4
.catch java/io/FileNotFoundException from L25 to L26 using L2
.catch java/lang/Exception from L25 to L26 using L3
.catch all from L25 to L26 using L4
.catch java/io/FileNotFoundException from L27 to L28 using L2
.catch java/lang/Exception from L27 to L28 using L3
.catch all from L27 to L28 using L4
.catch java/io/FileNotFoundException from L29 to L30 using L2
.catch java/lang/Exception from L29 to L30 using L3
.catch all from L29 to L30 using L4
.catch java/io/FileNotFoundException from L31 to L32 using L33
.catch java/lang/Exception from L31 to L32 using L34
.catch all from L31 to L32 using L35
.catch java/io/FileNotFoundException from L36 to L37 using L33
.catch java/lang/Exception from L36 to L37 using L34
.catch all from L36 to L37 using L35
.catch java/io/FileNotFoundException from L37 to L38 using L33
.catch java/lang/Exception from L37 to L38 using L34
.catch all from L37 to L38 using L35
.catch java/io/FileNotFoundException from L39 to L40 using L33
.catch java/lang/Exception from L39 to L40 using L34
.catch all from L39 to L40 using L35
.catch java/io/FileNotFoundException from L40 to L41 using L33
.catch java/lang/Exception from L40 to L41 using L34
.catch all from L40 to L41 using L35
.catch java/io/FileNotFoundException from L42 to L43 using L33
.catch java/lang/Exception from L42 to L43 using L34
.catch all from L42 to L43 using L35
.catch java/lang/Exception from L44 to L45 using L46
.catch java/lang/Exception from L47 to L48 using L46
.catch java/io/FileNotFoundException from L49 to L50 using L2
.catch java/lang/Exception from L49 to L50 using L3
.catch all from L49 to L50 using L4
.catch java/io/FileNotFoundException from L51 to L52 using L2
.catch java/lang/Exception from L51 to L52 using L3
.catch all from L51 to L52 using L4
.catch all from L53 to L54 using L4
.catch all from L55 to L56 using L4
.catch all from L57 to L58 using L4
.catch all from L59 to L60 using L4
.catch java/lang/Exception from L61 to L62 using L63
.catch java/lang/Exception from L64 to L65 using L63
.catch java/io/FileNotFoundException from L66 to L67 using L33
.catch java/lang/Exception from L66 to L67 using L34
.catch all from L66 to L67 using L35
.catch java/lang/Exception from L68 to L69 using L70
.catch java/lang/Exception from L71 to L72 using L70
.catch java/io/FileNotFoundException from L73 to L74 using L33
.catch java/lang/Exception from L73 to L74 using L34
.catch all from L73 to L74 using L35
.catch java/io/FileNotFoundException from L75 to L76 using L33
.catch java/lang/Exception from L75 to L76 using L34
.catch all from L75 to L76 using L35
.catch java/io/FileNotFoundException from L77 to L78 using L33
.catch java/lang/Exception from L77 to L78 using L34
.catch all from L77 to L78 using L35
.catch all from L79 to L80 using L4
.catch all from L81 to L82 using L4
.catch java/lang/Exception from L83 to L84 using L85
.catch java/lang/Exception from L86 to L87 using L85
.catch java/lang/Exception from L88 to L89 using L90
.catch java/lang/Exception from L91 to L92 using L90
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/registStateObserver(Lims/outInterface/IStateObserver;)V
aload 0
iconst_0
putfield com/nd/android/u/business/com/ProgressDownloadManager/mIsDisconnected Z
aload 2
ifnonnull L93
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L94
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
iconst_0
ldc "file not found"
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L94:
return
L93:
aconst_null
astore 21
aconst_null
astore 20
aconst_null
astore 19
aconst_null
astore 17
aconst_null
astore 16
aconst_null
astore 18
aload 19
astore 15
aload 21
astore 14
aload 16
astore 13
aload 20
astore 12
L0:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L6
L1:
aload 19
astore 15
aload 21
astore 14
aload 16
astore 13
aload 20
astore 12
L5:
aload 2
invokevirtual java/io/File/delete()Z
pop
L6:
aload 19
astore 15
aload 21
astore 14
aload 16
astore 13
aload 20
astore 12
L7:
aload 2
invokevirtual java/io/File/createNewFile()Z
pop
L8:
aload 19
astore 15
aload 21
astore 14
aload 16
astore 13
aload 20
astore 12
L9:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L10:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L11:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
ifnull L18
L12:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L13:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
ifle L18
L14:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L15:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 19
L16:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L17:
aload 19
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L95
L18:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L19:
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L28
L20:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L21:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
ifnonnull L24
L22:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L23:
aload 0
aload 0
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nd/android/u/business/com/ProgressDownloadManager/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
L24:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L25:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L26:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L27:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L28:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L29:
new java/io/BufferedInputStream
dup
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
sipush 8192
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
astore 16
L30:
lconst_0
lstore 8
lconst_0
lstore 10
L31:
aload 1
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
lstore 6
L32:
lload 6
lstore 4
lload 6
lconst_0
lcmp
ifgt L37
L36:
aload 0
aload 1
invokespecial com/nd/android/u/business/com/ProgressDownloadManager/getContentLength(Ljava/net/HttpURLConnection;)J
lstore 4
L37:
new java/io/FileOutputStream
dup
aload 2
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
astore 13
aload 13
invokevirtual java/io/FileOutputStream/getChannel()Ljava/nio/channels/FileChannel;
invokevirtual java/nio/channels/FileChannel/tryLock()Ljava/nio/channels/FileLock;
astore 12
L38:
aload 12
ifnull L77
L39:
aload 12
invokevirtual java/nio/channels/FileLock/isValid()Z
ifeq L77
sipush 4096
newarray byte
astore 14
L40:
aload 16
aload 14
invokevirtual java/io/BufferedInputStream/read([B)I
istore 3
L41:
iload 3
ifgt L66
L42:
aload 12
invokevirtual java/nio/channels/FileLock/release()V
aload 13
invokevirtual java/io/FileOutputStream/close()V
L43:
aload 1
ifnull L96
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L96:
iconst_0
ifeq L45
L44:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L45:
aload 16
ifnull L48
L47:
aload 16
invokevirtual java/io/BufferedInputStream/close()V
L48:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L94
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
aload 2
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onSuccess(Ljava/io/File;)V 1
return
L95:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L49:
aload 19
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 20
L50:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L51:
aload 1
aload 20
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 20
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L52:
goto L16
L2:
astore 1
aload 15
astore 1
aload 18
astore 14
L97:
aload 2
ifnull L56
aload 14
astore 13
aload 1
astore 12
L53:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L56
L54:
aload 14
astore 13
aload 1
astore 12
L55:
aload 2
invokevirtual java/io/File/delete()Z
pop
L56:
aload 14
astore 13
aload 1
astore 12
L57:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L60
L58:
aload 14
astore 13
aload 1
astore 12
L59:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
iconst_0
ldc "file not found"
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L60:
aload 1
ifnull L98
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L98:
iconst_0
ifeq L62
L61:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L62:
aload 14
ifnull L65
L64:
aload 14
invokevirtual java/io/BufferedInputStream/close()V
L65:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
return
L66:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mIsDisconnected Z
ifeq L73
ldc "debug"
ldc "network disconnected"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 13
invokevirtual java/io/FileOutputStream/close()V
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L67
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
iconst_0
ldc "network disconnected"
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L67:
aload 1
ifnull L99
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L99:
iconst_0
ifeq L69
L68:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L69:
aload 16
ifnull L72
L71:
aload 16
invokevirtual java/io/BufferedInputStream/close()V
L72:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
return
L73:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mCancelDownload Z
ifne L42
aload 13
aload 14
iconst_0
iload 3
invokevirtual java/io/FileOutputStream/write([BII)V
L74:
lload 4
lconst_0
lcmp
ifle L40
lload 8
iload 3
i2l
ladd
lstore 6
lload 6
lstore 8
lload 6
lload 10
lsub
iconst_4
lshl
lload 4
lcmp
ifle L40
lload 6
lstore 8
L75:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mShowProgress Z
ifeq L40
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L100
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
lload 6
lload 4
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onProgress(JJ)V 4
L76:
goto L100
L77:
aload 13
invokevirtual java/io/FileOutputStream/close()V
L78:
goto L43
L33:
astore 12
aload 16
astore 14
goto L97
L3:
astore 12
aload 14
astore 1
aload 17
astore 2
aload 12
astore 14
L101:
aload 2
astore 13
aload 1
astore 12
L79:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L82
L80:
aload 2
astore 13
aload 1
astore 12
L81:
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/mListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
iconst_0
aload 14
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L82:
aload 1
ifnull L102
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L102:
iconst_0
ifeq L84
L83:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L84:
aload 2
ifnull L87
L86:
aload 2
invokevirtual java/io/BufferedInputStream/close()V
L87:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
return
L4:
astore 1
L103:
aload 12
ifnull L104
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L104:
iconst_0
ifeq L89
L88:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L89:
aload 13
ifnull L92
L91:
aload 13
invokevirtual java/io/BufferedInputStream/close()V
L92:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
aload 1
athrow
L46:
astore 1
goto L48
L90:
astore 2
goto L92
L35:
astore 2
aload 16
astore 13
aload 1
astore 12
aload 2
astore 1
goto L103
L85:
astore 1
goto L87
L34:
astore 14
aload 16
astore 2
goto L101
L63:
astore 1
goto L65
L70:
astore 1
goto L72
L100:
lload 6
lstore 10
lload 6
lstore 8
goto L40
.limit locals 22
.limit stack 5
.end method
