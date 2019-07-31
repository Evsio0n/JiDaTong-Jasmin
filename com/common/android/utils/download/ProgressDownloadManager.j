.bytecode 50.0
.class public synchronized com/common/android/utils/download/ProgressDownloadManager
.super java/lang/Object
.inner class public static abstract interface onDonwloadListener inner com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener outer com/common/android/utils/download/ProgressDownloadManager

.field private 'mCancelDownload' Z

.field private 'mIsDisconnected' Z

.field private 'mListener' Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;

.field private 'mRequestPropertyHashMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'mShowProgress' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/download/ProgressDownloadManager/mIsDisconnected Z
aload 0
iconst_1
putfield com/common/android/utils/download/ProgressDownloadManager/mShowProgress Z
aload 0
iconst_0
putfield com/common/android/utils/download/ProgressDownloadManager/mCancelDownload Z
return
.limit locals 1
.limit stack 2
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 1
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L3
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
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L3:
lconst_0
lreturn
.limit locals 5
.limit stack 6
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
L0:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
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
putfield com/common/android/utils/download/ProgressDownloadManager/mCancelDownload Z
return
.limit locals 1
.limit stack 2
.end method

.method public setOnDownloadListener(Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;)V
aload 0
aload 1
putfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showProgress(Z)V
aload 0
iload 1
putfield com/common/android/utils/download/ProgressDownloadManager/mShowProgress Z
return
.limit locals 2
.limit stack 2
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
.catch all from L23 to L24 using L4
.catch all from L25 to L26 using L4
.catch all from L27 to L28 using L4
.catch all from L29 to L30 using L4
.catch java/lang/Exception from L31 to L32 using L33
.catch java/lang/Exception from L34 to L35 using L33
.catch java/io/FileNotFoundException from L36 to L37 using L2
.catch java/lang/Exception from L36 to L37 using L3
.catch all from L36 to L37 using L4
.catch java/io/FileNotFoundException from L38 to L39 using L40
.catch java/lang/Exception from L38 to L39 using L41
.catch all from L38 to L39 using L42
.catch java/io/FileNotFoundException from L43 to L44 using L40
.catch java/lang/Exception from L43 to L44 using L41
.catch all from L43 to L44 using L42
.catch java/io/FileNotFoundException from L44 to L45 using L40
.catch java/lang/Exception from L44 to L45 using L41
.catch all from L44 to L45 using L42
.catch java/io/FileNotFoundException from L46 to L47 using L40
.catch java/lang/Exception from L46 to L47 using L41
.catch all from L46 to L47 using L42
.catch java/io/FileNotFoundException from L47 to L48 using L40
.catch java/lang/Exception from L47 to L48 using L41
.catch all from L47 to L48 using L42
.catch java/io/FileNotFoundException from L49 to L50 using L40
.catch java/lang/Exception from L49 to L50 using L41
.catch all from L49 to L50 using L42
.catch java/lang/Exception from L51 to L52 using L53
.catch java/lang/Exception from L54 to L55 using L53
.catch java/io/FileNotFoundException from L56 to L57 using L40
.catch java/lang/Exception from L56 to L57 using L41
.catch all from L56 to L57 using L42
.catch java/io/FileNotFoundException from L57 to L58 using L40
.catch java/lang/Exception from L57 to L58 using L41
.catch all from L57 to L58 using L42
.catch java/lang/Exception from L59 to L60 using L61
.catch java/lang/Exception from L62 to L63 using L61
.catch java/io/FileNotFoundException from L64 to L65 using L40
.catch java/lang/Exception from L64 to L65 using L41
.catch all from L64 to L65 using L42
.catch java/io/FileNotFoundException from L66 to L67 using L40
.catch java/lang/Exception from L66 to L67 using L41
.catch all from L66 to L67 using L42
.catch java/io/FileNotFoundException from L68 to L69 using L40
.catch java/lang/Exception from L68 to L69 using L41
.catch all from L68 to L69 using L42
.catch all from L70 to L71 using L4
.catch all from L72 to L73 using L4
.catch java/lang/Exception from L74 to L75 using L76
.catch java/lang/Exception from L77 to L78 using L76
.catch java/lang/Exception from L79 to L80 using L81
.catch java/lang/Exception from L82 to L83 using L81
aload 0
iconst_0
putfield com/common/android/utils/download/ProgressDownloadManager/mIsDisconnected Z
aload 2
ifnonnull L84
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L85
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
getstatic com/nd/android/u/allcommon/R$string/fail_file_notfound I
ldc ""
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L85:
return
L84:
aconst_null
astore 20
aconst_null
astore 19
aconst_null
astore 21
aconst_null
astore 17
aconst_null
astore 16
aconst_null
astore 18
aload 21
astore 15
aload 20
astore 14
aload 16
astore 13
aload 19
astore 12
L0:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L6
L1:
aload 21
astore 15
aload 20
astore 14
aload 16
astore 13
aload 19
astore 12
L5:
aload 2
invokevirtual java/io/File/delete()Z
pop
L6:
aload 21
astore 15
aload 20
astore 14
aload 16
astore 13
aload 19
astore 12
L7:
aload 2
invokevirtual java/io/File/createNewFile()Z
pop
L8:
aload 21
astore 15
aload 20
astore 14
aload 16
astore 13
aload 19
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
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
ifnull L86
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
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
ifle L86
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
getfield com/common/android/utils/download/ProgressDownloadManager/mRequestPropertyHashMap Ljava/util/Map;
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
ifeq L86
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
aload 19
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 20
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
aload 1
aload 20
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 20
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L22:
goto L16
L2:
astore 1
aload 15
astore 1
aload 18
astore 14
L87:
aload 2
ifnull L26
aload 14
astore 13
aload 1
astore 12
L23:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L26
L24:
aload 14
astore 13
aload 1
astore 12
L25:
aload 2
invokevirtual java/io/File/delete()Z
pop
L26:
aload 14
astore 13
aload 1
astore 12
L27:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L30
L28:
aload 14
astore 13
aload 1
astore 12
L29:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
getstatic com/nd/android/u/allcommon/R$string/fail_file_notfound I
ldc ""
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L30:
aload 1
ifnull L88
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L88:
iconst_0
ifeq L32
L31:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L32:
aload 14
ifnull L85
L34:
aload 14
invokevirtual java/io/BufferedInputStream/close()V
L35:
return
L33:
astore 1
return
L86:
aload 1
astore 15
aload 1
astore 14
aload 16
astore 13
aload 1
astore 12
L36:
new java/io/BufferedInputStream
dup
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
sipush 8192
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
astore 16
L37:
lconst_0
lstore 10
lconst_0
lstore 6
L38:
aload 1
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
lstore 8
L39:
lload 8
lstore 4
lload 8
lconst_0
lcmp
ifgt L44
L43:
aload 0
aload 1
invokespecial com/common/android/utils/download/ProgressDownloadManager/getContentLength(Ljava/net/HttpURLConnection;)J
lstore 4
L44:
new java/io/FileOutputStream
dup
aload 2
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
astore 13
aload 13
invokevirtual java/io/FileOutputStream/getChannel()Ljava/nio/channels/FileChannel;
invokevirtual java/nio/channels/FileChannel/tryLock()Ljava/nio/channels/FileLock;
astore 14
L45:
aload 14
ifnull L68
L46:
aload 14
invokevirtual java/nio/channels/FileLock/isValid()Z
ifeq L68
sipush 4096
newarray byte
astore 12
L47:
aload 16
aload 12
invokevirtual java/io/BufferedInputStream/read([B)I
istore 3
L48:
iload 3
ifle L57
L49:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mIsDisconnected Z
ifeq L56
ldc "debug"
ldc "network disconnected"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 13
invokevirtual java/io/FileOutputStream/close()V
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L50
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
getstatic com/nd/android/u/allcommon/R$string/fail_disconnect I
ldc ""
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L50:
aload 1
ifnull L89
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L89:
iconst_0
ifeq L52
L51:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L52:
aload 16
ifnull L85
L54:
aload 16
invokevirtual java/io/BufferedInputStream/close()V
L55:
return
L53:
astore 1
return
L56:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mCancelDownload Z
ifeq L64
L57:
aload 14
invokevirtual java/nio/channels/FileLock/release()V
aload 13
invokevirtual java/io/FileOutputStream/close()V
L58:
aload 1
ifnull L90
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L90:
iconst_0
ifeq L60
L59:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L60:
aload 16
ifnull L63
L62:
aload 16
invokevirtual java/io/BufferedInputStream/close()V
L63:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L85
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
aload 2
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onSuccess(Ljava/io/File;)V 1
return
L64:
aload 13
aload 12
iconst_0
iload 3
invokevirtual java/io/FileOutputStream/write([BII)V
L65:
lload 4
lconst_0
lcmp
ifle L47
lload 10
iload 3
i2l
ladd
lstore 8
lload 8
lstore 10
lload 8
lload 6
lsub
iconst_4
lshl
lload 4
lcmp
ifle L47
lload 8
lstore 10
L66:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mShowProgress Z
ifeq L47
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L91
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
lload 8
lload 4
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onProgress(JJ)V 4
L67:
goto L91
L68:
aload 13
invokevirtual java/io/FileOutputStream/close()V
L69:
goto L58
L40:
astore 12
aload 16
astore 14
goto L87
L3:
astore 12
aload 14
astore 1
aload 17
astore 2
aload 12
astore 14
L92:
aload 2
astore 13
aload 1
astore 12
L70:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
ifnull L73
L71:
aload 2
astore 13
aload 1
astore 12
L72:
aload 0
getfield com/common/android/utils/download/ProgressDownloadManager/mListener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
iconst_0
aload 14
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokeinterface com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L73:
aload 1
ifnull L93
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L93:
iconst_0
ifeq L75
L74:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L75:
aload 2
ifnull L85
L77:
aload 2
invokevirtual java/io/BufferedInputStream/close()V
L78:
return
L76:
astore 1
return
L4:
astore 1
L94:
aload 12
ifnull L95
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L95:
iconst_0
ifeq L80
L79:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L80:
aload 13
ifnull L83
L82:
aload 13
invokevirtual java/io/BufferedInputStream/close()V
L83:
aload 1
athrow
L81:
astore 2
goto L83
L42:
astore 2
aload 16
astore 13
aload 1
astore 12
aload 2
astore 1
goto L94
L41:
astore 14
aload 16
astore 2
goto L92
L61:
astore 1
goto L63
L91:
lload 8
lstore 6
lload 8
lstore 10
goto L47
.limit locals 22
.limit stack 5
.end method
