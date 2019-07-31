.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/download/BaseImageDownloader
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/download/ImageDownloader
.inner class inner com/nostra13/universalimageloader/core/download/BaseImageDownloader$1

.field private static synthetic '$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme' [I

.field protected static final 'ALLOWED_URI_CHARS' Ljava/lang/String; = "@#&=*+-_.,:!?()/~'%"

.field protected static final 'BUFFER_SIZE' I = 32768


.field protected static final 'CONTENT_CONTACTS_URI_PREFIX' Ljava/lang/String; = "content://com.android.contacts/"

.field public static final 'DEFAULT_HTTP_CONNECT_TIMEOUT' I = 5000


.field public static final 'DEFAULT_HTTP_READ_TIMEOUT' I = 20000


.field private static final 'ERROR_UNSUPPORTED_SCHEME' Ljava/lang/String; = "UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

.field protected static final 'MAX_REDIRECT_COUNT' I = 5


.field private final 'CONTENT_RANGE' Ljava/lang/String;

.field final 'DO_NOT_VERIFY' Ljavax/net/ssl/HostnameVerifier;

.field private final 'RANGE' Ljava/lang/String;

.field protected final 'connectTimeout' I

.field protected final 'context' Landroid/content/Context;

.field private 'downloadSizeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"

.field private 'mSSLSocketFactory' Ljavax/net/ssl/SSLSocketFactory;

.field protected final 'readTimeout' I

.field private 'totalSizeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"

.field private 'writeLog' Z

.method static synthetic $SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
.catch java/lang/NoSuchFieldError from L11 to L13 using L14
getstatic com/nostra13/universalimageloader/core/download/BaseImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme [I
astore 0
aload 0
ifnull L15
aload 0
areturn
L15:
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ASSETS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_5
iastore
L1:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/CONTENT Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_4
iastore
L3:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/DRAWABLE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
bipush 6
iastore
L5:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_3
iastore
L7:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTP Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_1
iastore
L9:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTPS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_2
iastore
L11:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/UNKNOWN Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
bipush 7
iastore
L13:
aload 0
putstatic com/nostra13/universalimageloader/core/download/BaseImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme [I
aload 0
areturn
L14:
astore 1
goto L13
L12:
astore 1
goto L11
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 0
ldc "Range"
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/RANGE Ljava/lang/String;
aload 0
ldc "Content-Range"
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/CONTENT_RANGE Ljava/lang/String;
aload 0
new com/nostra13/universalimageloader/core/download/BaseImageDownloader$1
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/download/BaseImageDownloader$1/<init>(Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;)V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
aload 0
sipush 5000
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
aload 0
sipush 20000
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
aload 0
aload 0
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 0
ldc "Range"
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/RANGE Ljava/lang/String;
aload 0
ldc "Content-Range"
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/CONTENT_RANGE Ljava/lang/String;
aload 0
new com/nostra13/universalimageloader/core/download/BaseImageDownloader$1
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/download/BaseImageDownloader$1/<init>(Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;)V
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
aload 0
aload 0
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
return
.limit locals 4
.limit stack 4
.end method

.method private isVideoUri(Landroid/net/Uri;)Z
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/getType(Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
ldc "video/"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected createConnection(Ljava/lang/String;Ljava/lang/Object;JLjava/util/HashMap;)Ljava/net/HttpURLConnection;
.signature "(Ljava/lang/String;Ljava/lang/Object;JLjava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/net/HttpURLConnection;"
.throws java/io/IOException
aload 1
ldc "@#&=*+-_.,:!?()/~'%"
invokestatic android/net/Uri/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
new java/net/URL
dup
aload 6
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
aload 2
ldc "RANGE"
ldc "bytes=0-0"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ifnull L0
aload 5
invokevirtual java/util/HashMap/size()I
ifle L0
aload 5
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 2
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
aload 1
aload 2
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setTotalSize(Ljava/lang/String;J)V
L4:
aload 0
aload 1
lload 3
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setDownloadSize(Ljava/lang/String;J)V
aload 2
areturn
L2:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 7
aload 2
aload 7
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 7
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
goto L1
L3:
aload 0
aload 1
aload 0
aload 5
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getTotalLength(Ljava/lang/String;)J
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setTotalSize(Ljava/lang/String;J)V
aload 2
invokevirtual java/net/HttpURLConnection/disconnect()V
new java/net/URL
dup
aload 6
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
aload 2
ldc "Range"
new java/lang/StringBuilder
dup
ldc "bytes="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
goto L4
.limit locals 8
.limit stack 5
.end method

.method protected createConnection(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/net/HttpURLConnection;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/net/HttpURLConnection;"
.throws java/io/IOException
new java/net/URL
dup
aload 1
ldc "@#&=*+-_.,:!?()/~'%"
invokestatic android/net/Uri/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
aload 3
ifnull L0
aload 3
invokevirtual java/util/HashMap/size()I
ifle L0
aload 3
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L3
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L3:
aload 1
areturn
L2:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 4
.limit stack 4
.end method

.method public getDownloadSize(Ljava/lang/String;)J
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L0
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifle L0
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Long
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifle L1
aload 1
invokevirtual java/lang/Long/longValue()J
lstore 2
L0:
lload 2
lreturn
L1:
lconst_0
lreturn
.limit locals 6
.limit stack 4
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
invokestatic com/nostra13/universalimageloader/core/download/BaseImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
aload 1
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iaload
tableswitch 1
L0
L0
L1
L2
L3
L4
default : L5
L5:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L0:
aload 0
aload 1
aload 2
aload 3
aload 4
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromNetworkForResume(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream;
areturn
L1:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L2:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L3:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L4:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
.limit locals 5
.limit stack 5
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
invokestatic com/nostra13/universalimageloader/core/download/BaseImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
aload 1
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iaload
tableswitch 1
L0
L0
L1
L2
L3
L4
default : L5
L5:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L0:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
areturn
L1:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L2:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L3:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
L4:
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.throws java/io/IOException
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ASSETS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 1
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/crop(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 2
.end method

.method protected getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.throws java/io/FileNotFoundException
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 2
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 3
aload 0
aload 3
invokespecial com/nostra13/universalimageloader/core/download/BaseImageDownloader/isVideoUri(Landroid/net/Uri;)Z
ifeq L0
aload 2
aload 3
invokevirtual android/net/Uri/getLastPathSegment()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
iconst_1
aconst_null
invokestatic android/provider/MediaStore$Video$Thumbnails/getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L1
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
iconst_0
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
new java/io/ByteArrayInputStream
dup
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
areturn
L0:
aload 1
ldc "content://com.android.contacts/"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
aload 2
aload 3
invokestatic android/provider/ContactsContract$Contacts/openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
areturn
L1:
aload 2
aload 3
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/DRAWABLE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 1
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/crop(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 3
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
areturn
.limit locals 4
.limit stack 2
.end method

.method protected getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.throws java/io/IOException
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 1
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/crop(Ljava/lang/String;)Ljava/lang/String;
astore 1
new com/nostra13/universalimageloader/core/assist/ContentLengthInputStream
dup
new java/io/BufferedInputStream
dup
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
ldc_w 32768
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/length()J
l2i
invokespecial com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/<init>(Ljava/io/InputStream;I)V
areturn
.limit locals 3
.limit stack 7
.end method

.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
.catch java/io/IOException from L7 to L8 using L2
.catch java/io/IOException from L9 to L10 using L2
.catch java/io/IOException from L11 to L12 using L2
.catch java/io/IOException from L13 to L14 using L2
aconst_null
astore 6
L0:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/createConnection(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/net/HttpURLConnection;
astore 5
L1:
iconst_0
istore 4
L15:
aload 5
astore 6
L3:
aload 5
invokevirtual java/net/HttpURLConnection/getResponseCode()I
bipush 100
idiv
iconst_3
if_icmpne L16
L4:
iload 4
iconst_5
if_icmplt L8
L16:
aload 5
astore 6
L5:
aload 0
aload 1
aload 5
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setTotalSize(Ljava/lang/String;J)V
L6:
aload 5
astore 6
L7:
new com/nostra13/universalimageloader/core/assist/ContentLengthInputStream
dup
new java/io/BufferedInputStream
dup
aload 5
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
ldc_w 32768
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
aload 5
invokevirtual java/net/HttpURLConnection/getContentLength()I
invokespecial com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/<init>(Ljava/io/InputStream;I)V
areturn
L8:
aload 5
astore 6
L9:
aload 5
ldc "Location"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 7
L10:
aload 5
astore 6
L11:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L16
L12:
aload 5
astore 6
L13:
aload 0
aload 7
aload 2
aload 3
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/createConnection(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/net/HttpURLConnection;
astore 5
L14:
iload 4
iconst_1
iadd
istore 4
goto L15
L2:
astore 2
aload 0
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/isWriteLog()Z
ifeq L17
aload 6
ifnull L17
ldc "ImageLoader"
iconst_1
anewarray java/lang/Object
dup
iconst_0
new java/lang/StringBuilder
dup
ldc "@@ BaseImageDownloader.getStreamFromNetwork IOException: url:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ---httpCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/net/HttpURLConnection/getResponseCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
L17:
aload 6
invokevirtual java/net/HttpURLConnection/getErrorStream()Ljava/io/InputStream;
invokestatic com/nostra13/universalimageloader/utils/IoUtils/readAndCloseStream(Ljava/io/InputStream;)V
aload 2
athrow
.limit locals 8
.limit stack 7
.end method

.method protected getStreamFromNetworkForResume(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch all from L11 to L12 using L14
.catch java/lang/Exception from L15 to L16 using L13
.catch all from L15 to L16 using L14
.catch java/lang/Exception from L17 to L18 using L13
.catch all from L17 to L18 using L14
.catch java/lang/Exception from L19 to L20 using L13
.catch all from L19 to L20 using L14
.catch java/lang/Exception from L21 to L22 using L13
.catch all from L21 to L22 using L14
.catch java/lang/Exception from L23 to L24 using L13
.catch all from L23 to L24 using L14
.catch java/lang/Exception from L25 to L26 using L13
.catch all from L25 to L26 using L14
.catch java/lang/Exception from L27 to L28 using L13
.catch all from L27 to L28 using L14
.catch java/lang/Exception from L29 to L30 using L13
.catch all from L29 to L30 using L14
.catch java/lang/Exception from L31 to L32 using L13
.catch all from L31 to L32 using L14
.catch java/lang/Exception from L33 to L34 using L13
.catch all from L33 to L34 using L14
.catch java/lang/Exception from L35 to L36 using L13
.catch all from L35 to L36 using L14
.catch java/lang/Exception from L37 to L38 using L13
.catch all from L37 to L38 using L14
.catch java/lang/Exception from L39 to L40 using L13
.catch all from L39 to L40 using L14
.catch java/lang/Exception from L41 to L42 using L13
.catch all from L41 to L42 using L14
.catch java/lang/Exception from L43 to L44 using L13
.catch all from L43 to L44 using L14
.catch java/lang/Exception from L45 to L46 using L13
.catch all from L45 to L46 using L14
.catch java/lang/Exception from L47 to L48 using L13
.catch all from L47 to L48 using L14
.catch java/lang/Exception from L49 to L50 using L13
.catch all from L49 to L50 using L14
.catch java/lang/Exception from L51 to L52 using L13
.catch all from L51 to L52 using L14
.catch all from L53 to L54 using L10
.catch java/lang/Exception from L55 to L56 using L13
.catch all from L55 to L56 using L14
.catch java/lang/Exception from L57 to L58 using L13
.catch all from L57 to L58 using L14
.catch java/lang/Exception from L59 to L60 using L13
.catch all from L59 to L60 using L14
.catch java/lang/Exception from L61 to L62 using L13
.catch all from L61 to L62 using L14
.catch all from L63 to L64 using L3
lconst_0
lstore 7
aload 3
invokevirtual java/io/File/getParent()Ljava/lang/String;
astore 2
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 3
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 19
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 18
aload 1
ldc "@#&=*+-_.,:!?()/~'%"
invokestatic android/net/Uri/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 20
new java/net/URL
dup
aload 20
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
aload 4
ifnull L65
aload 4
invokevirtual java/util/HashMap/size()I
ifle L65
aload 4
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L66:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L67
L65:
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 2
instanceof javax/net/ssl/HttpsURLConnection
ifeq L68
aload 2
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
aload 2
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L68:
aload 2
invokevirtual java/net/HttpURLConnection/connect()V
aload 2
ldc "Content-Length"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L69
lconst_0
lstore 7
aload 0
aload 1
aload 2
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setTotalSize(Ljava/lang/String;J)V
iconst_0
istore 5
aload 2
invokevirtual java/net/HttpURLConnection/getLastModified()J
lstore 9
aload 19
invokevirtual java/io/File/exists()Z
ifne L70
aload 18
invokevirtual java/io/File/exists()Z
ifeq L71
L70:
aload 19
invokevirtual java/io/File/delete()Z
pop
aload 18
invokevirtual java/io/File/delete()Z
pop
L71:
aload 19
invokevirtual java/io/File/createNewFile()Z
pop
aload 18
invokevirtual java/io/File/createNewFile()Z
pop
L72:
aload 0
aload 1
lload 7
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/setDownloadSize(Ljava/lang/String;J)V
iconst_0
istore 6
aload 2
astore 3
L73:
aload 3
invokevirtual java/net/HttpURLConnection/getResponseCode()I
bipush 100
idiv
iconst_3
if_icmpne L74
iload 6
iconst_5
if_icmplt L75
L74:
aconst_null
astore 1
aconst_null
astore 15
L0:
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 18
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
astore 2
L1:
aload 2
new java/lang/StringBuilder
dup
iload 5
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/BufferedWriter/write(Ljava/lang/String;)V
aload 2
lload 9
l2i
invokevirtual java/io/BufferedWriter/write(I)V
aload 2
invokevirtual java/io/BufferedWriter/flush()V
aload 2
invokevirtual java/io/BufferedWriter/close()V
L4:
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
L76:
new java/io/BufferedInputStream
dup
aload 3
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
ldc_w 32768
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
areturn
L67:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 15
aload 2
aload 15
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 15
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
goto L66
L69:
aload 2
invokevirtual java/net/HttpURLConnection/getContentLength()I
istore 5
aload 2
invokevirtual java/net/HttpURLConnection/getLastModified()J
lstore 11
aload 19
invokevirtual java/io/File/exists()Z
ifeq L77
aload 18
invokevirtual java/io/File/exists()Z
ifne L78
L77:
aload 19
invokevirtual java/io/File/delete()Z
pop
aload 18
invokevirtual java/io/File/delete()Z
pop
aload 19
invokevirtual java/io/File/createNewFile()Z
pop
aload 18
invokevirtual java/io/File/createNewFile()Z
pop
lload 11
lstore 9
goto L72
L78:
aconst_null
astore 3
aconst_null
astore 16
L7:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
new java/io/FileInputStream
dup
aload 18
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 15
L8:
lload 7
lstore 9
aload 2
astore 3
L11:
aload 15
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 16
L12:
lload 7
lstore 9
aload 2
astore 3
L15:
aload 15
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 17
L16:
lload 7
lstore 9
aload 2
astore 3
L17:
aload 16
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L79
L18:
lload 7
lstore 9
aload 2
astore 3
L19:
aload 16
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 16
L20:
lload 7
lstore 9
aload 2
astore 3
L21:
aload 17
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L80
L22:
lload 7
lstore 9
aload 2
astore 3
L23:
aload 17
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 17
L24:
lload 7
lstore 9
aload 2
astore 3
L25:
aload 16
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L81
L26:
lload 7
lstore 9
aload 2
astore 3
L27:
aload 17
lload 11
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L81
L28:
lload 7
lstore 9
aload 2
astore 3
L29:
aload 2
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L82
L30:
lload 7
lstore 9
aload 2
astore 3
L31:
aload 19
invokevirtual java/io/File/length()J
lstore 13
L32:
lload 13
lstore 7
lload 7
lstore 9
aload 2
astore 3
L33:
aload 2
invokevirtual java/net/HttpURLConnection/disconnect()V
L34:
lload 7
lstore 9
aload 2
astore 3
L35:
new java/net/URL
dup
aload 20
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
L36:
lload 7
lstore 9
aload 2
astore 3
L37:
aload 2
ldc "RANGE"
new java/lang/StringBuilder
dup
ldc "bytes="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 13
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L38:
lload 7
lstore 9
aload 2
astore 3
L39:
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/connectTimeout I
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L40:
lload 7
lstore 9
aload 2
astore 3
L41:
aload 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/readTimeout I
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L42:
aload 15
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
lload 11
lstore 9
goto L72
L79:
ldc "0"
astore 16
goto L20
L80:
lload 7
lstore 9
aload 2
astore 3
L43:
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
astore 17
L44:
goto L24
L82:
lload 7
lstore 9
aload 2
astore 3
L45:
aload 19
invokevirtual java/io/File/delete()Z
pop
L46:
lload 7
lstore 9
aload 2
astore 3
L47:
aload 18
invokevirtual java/io/File/delete()Z
pop
L48:
lload 7
lstore 9
aload 2
astore 3
L49:
aload 19
invokevirtual java/io/File/createNewFile()Z
pop
L50:
lload 7
lstore 9
aload 2
astore 3
L51:
aload 18
invokevirtual java/io/File/createNewFile()Z
pop
L52:
goto L42
L13:
astore 16
aload 3
astore 2
lload 9
lstore 7
L83:
aload 15
astore 3
L53:
aload 16
invokevirtual java/lang/Exception/printStackTrace()V
L54:
aload 15
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
lload 11
lstore 9
goto L72
L81:
lload 7
lstore 9
aload 2
astore 3
L55:
aload 19
invokevirtual java/io/File/delete()Z
pop
L56:
lload 7
lstore 9
aload 2
astore 3
L57:
aload 18
invokevirtual java/io/File/delete()Z
pop
L58:
lload 7
lstore 9
aload 2
astore 3
L59:
aload 19
invokevirtual java/io/File/createNewFile()Z
pop
L60:
lload 7
lstore 9
aload 2
astore 3
L61:
aload 18
invokevirtual java/io/File/createNewFile()Z
pop
L62:
goto L42
L14:
astore 1
aload 15
astore 3
L84:
aload 3
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
L75:
aload 0
aload 3
ldc "Location"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
aconst_null
lload 7
aload 4
invokevirtual com/nostra13/universalimageloader/core/download/BaseImageDownloader/createConnection(Ljava/lang/String;Ljava/lang/Object;JLjava/util/HashMap;)Ljava/net/HttpURLConnection;
astore 3
iload 6
iconst_1
iadd
istore 6
goto L73
L2:
astore 4
aload 15
astore 2
L85:
aload 2
astore 1
L63:
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
L64:
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
goto L76
L3:
astore 3
aload 1
astore 2
aload 3
astore 1
L86:
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
L6:
astore 1
goto L86
L5:
astore 4
goto L85
L10:
astore 1
goto L84
L9:
astore 3
aload 16
astore 15
aload 3
astore 16
goto L83
.limit locals 21
.limit stack 7
.end method

.method protected getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.throws java/io/IOException
new java/lang/UnsupportedOperationException
dup
ldc "UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 7
.end method

.method protected getTotalLength(Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
aload 1
bipush 47
invokevirtual java/lang/String/indexOf(I)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
bipush 10
invokestatic java/lang/Long/parseLong(Ljava/lang/String;I)J
lstore 2
L1:
lload 2
lreturn
L2:
astore 1
lconst_0
lreturn
.limit locals 4
.limit stack 3
.end method

.method public getTotalSize(Ljava/lang/String;)J
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifle L0
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Long
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifle L1
aload 1
invokevirtual java/lang/Long/longValue()J
lstore 2
L0:
lload 2
lreturn
L1:
lconst_0
lreturn
.limit locals 6
.limit stack 4
.end method

.method public isWriteLog()Z
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/writeLog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public removeEtag(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public removeSizeMap(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L1
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloadSize(Ljava/lang/String;J)V
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public setTotalSize(Ljava/lang/String;J)V
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public setWriteLog(Z)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/download/BaseImageDownloader/writeLog Z
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
new com/nostra13/universalimageloader/core/download/JmuTrustManager
dup
invokespecial com/nostra13/universalimageloader/core/download/JmuTrustManager/<init>()V
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
