.bytecode 50.0
.class public synchronized com/common/android/utils/download/DownloadModule
.super java/lang/Object
.inner class inner com/common/android/utils/download/DownloadModule$1
.inner class inner com/common/android/utils/download/DownloadModule$2
.inner class inner com/common/android/utils/download/DownloadModule$2$1
.inner class inner com/common/android/utils/download/DownloadModule$2$1$1
.inner class inner com/common/android/utils/download/DownloadModule$2$2
.inner class inner com/common/android/utils/download/DownloadModule$3
.inner class downloadRunnable inner com/common/android/utils/download/DownloadModule$downloadRunnable outer com/common/android/utils/download/DownloadModule

.field protected static final 'ALREADY_EXIST' I = 2


.field private static final 'CONFIG_NAME' Ljava/lang/String; = "download_config"

.field private static final 'CONNECT_TIMEOUT' I = 20000


.field private static final 'CONTENT_RANGE' Ljava/lang/String; = "Content-Range"

.field protected static final 'DOWNLOAD_COMPLETE' I = 0


.field protected static final 'DOWNLOAD_FAIL' I = 1


.field protected static final 'DOWNLOAD_PREPARE' I = 3


.field protected static final 'DOWNLOAD_PROGRESS' I = 4


.field private static final 'FILENAME_HEADER' Ljava/lang/String; = "filename="

.field private static final 'GZIP' Ljava/lang/String; = "gzip"

.field private static final 'PACKAGE_LENGH' I = 4096


.field private static final 'PROGRESS_DELTA' I = 2


.field private static final 'RANGE' Ljava/lang/String; = "Range"

.field private static final 'READ_TIMEOUT' I = 30000


.field private static final 'TAG' Ljava/lang/String; = "DownloadModule"

.field private static 'downTaskMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/common/android/utils/download/DownloadModule;>;"

.field private static 'mDownTasks' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/common/android/utils/download/DownloadModule;>;"

.field final 'DO_NOT_VERIFY' Ljavax/net/ssl/HostnameVerifier;

.field private 'className' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private 'downloadHandler' Landroid/os/Handler;

.field private 'downloadIntent' Landroid/content/Intent;

.field private 'isNuseProxy' Z

.field private 'isStarted' Z

.field private 'isStop' Z

.field private 'mAppId' I

.field private 'mContext' Landroid/content/Context;

.field private 'mDownLoadData' Lcom/common/android/utils/download/DownLoadData;

.field private 'mDownloadDir' Ljava/io/File;

.field private 'mDownloadDirPath' Ljava/lang/String;

.field private 'mDownloadFile' Ljava/io/File;

.field private 'mDownloadFileName' Ljava/lang/String;

.field private 'mDownloadIco' I

.field private 'mDownloadPendingIntent' Landroid/app/PendingIntent;

.field private 'mNotification' Landroid/app/Notification;

.field private 'mNotificationId' I

.field private 'mNotificationManager' Landroid/app/NotificationManager;

.field private 'mPreferences' Landroid/content/SharedPreferences;

.field private 'mSSLSocketFactory' Ljavax/net/ssl/SSLSocketFactory;

.field private 'mSoftName' Ljava/lang/String;

.field private 'mSoftUrl' Ljava/lang/String;

.field private 'mStartPosition' J

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mSoftName Ljava/lang/String;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mDownloadDirPath Ljava/lang/String;
aload 0
iconst_0
putfield com/common/android/utils/download/DownloadModule/mDownloadIco I
aload 0
iconst_0
putfield com/common/android/utils/download/DownloadModule/mNotificationId I
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mDownloadDir Ljava/io/File;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mDownloadFile Ljava/io/File;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mNotificationManager Landroid/app/NotificationManager;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/downloadIntent Landroid/content/Intent;
aload 0
aconst_null
putfield com/common/android/utils/download/DownloadModule/mDownloadPendingIntent Landroid/app/PendingIntent;
aload 0
iconst_0
putfield com/common/android/utils/download/DownloadModule/isNuseProxy Z
aload 0
iconst_0
putfield com/common/android/utils/download/DownloadModule/isStop Z
aload 0
iconst_0
putfield com/common/android/utils/download/DownloadModule/isStarted Z
aload 0
new com/common/android/utils/download/DownloadModule$2
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$2/<init>(Lcom/common/android/utils/download/DownloadModule;)V
putfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 0
new com/common/android/utils/download/DownloadModule$3
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$3/<init>(Lcom/common/android/utils/download/DownloadModule;)V
putfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mContext Landroid/content/Context;
aload 0
aload 1
ldc "download_config"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/common/android/utils/download/DownloadModule/mPreferences Landroid/content/SharedPreferences;
aload 0
new com/common/android/utils/download/DownLoadData
dup
invokespecial com/common/android/utils/download/DownLoadData/<init>()V
putfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
aload 0
lconst_0
putfield com/common/android/utils/download/DownloadModule/mStartPosition J
aload 0
aload 0
invokevirtual com/common/android/utils/download/DownloadModule/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
return
.limit locals 2
.limit stack 4
.end method

.method static GetProxy()Ljava/net/Proxy;
aconst_null
astore 0
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
ifnull L0
new java/net/Proxy
dup
getstatic java/net/Proxy$Type/HTTP Ljava/net/Proxy$Type;
new java/net/InetSocketAddress
dup
invokestatic android/net/Proxy/getDefaultHost()Ljava/lang/String;
invokestatic android/net/Proxy/getDefaultPort()I
invokespecial java/net/InetSocketAddress/<init>(Ljava/lang/String;I)V
invokespecial java/net/Proxy/<init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
astore 0
L0:
aload 0
areturn
.limit locals 1
.limit stack 7
.end method

.method static synthetic access$000(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule/mSoftUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule/mSoftName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/common/android/utils/download/DownloadModule;Landroid/app/Notification;)Landroid/app/Notification;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadIco I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/PendingIntent;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadPendingIntent Landroid/app/PendingIntent;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1302(Lcom/common/android/utils/download/DownloadModule;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadPendingIntent Landroid/app/PendingIntent;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotificationManager Landroid/app/NotificationManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/common/android/utils/download/DownloadModule;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mNotificationManager Landroid/app/NotificationManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
invokestatic com/common/android/utils/download/DownloadModule/addDownTask(Lcom/common/android/utils/download/DownloadModule;)V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule/mAppId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(ILcom/common/android/utils/download/DownloadModule;)V
iload 0
aload 1
invokestatic com/common/android/utils/download/DownloadModule/addDownTaskToMap(ILcom/common/android/utils/download/DownloadModule;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1800(Lcom/common/android/utils/download/DownloadModule;I)V
aload 0
iload 1
invokespecial com/common/android/utils/download/DownloadModule/saveConfig(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/common/android/utils/download/DownloadModule;)Z
aload 0
getfield com/common/android/utils/download/DownloadModule/isStarted Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1902(Lcom/common/android/utils/download/DownloadModule;Z)Z
aload 0
iload 1
putfield com/common/android/utils/download/DownloadModule/isStarted Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/common/android/utils/download/DownloadModule;Ljava/lang/String;Lcom/common/android/utils/download/DownLoadData;)V
.throws java/net/MalformedURLException
.throws java/io/IOException
.throws org/apache/http/HttpException
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/download/DownloadModule/getDonwloadData(Ljava/lang/String;Lcom/common/android/utils/download/DownLoadData;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotificationId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
invokestatic com/common/android/utils/download/DownloadModule/deleteDownTask(Lcom/common/android/utils/download/DownloadModule;)V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(I)V
iload 0
invokestatic com/common/android/utils/download/DownloadModule/deleteDownTaskFromMap(I)V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadFileName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/common/android/utils/download/DownloadModule;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadFileName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadFile Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/common/android/utils/download/DownloadModule;Ljava/io/File;)Ljava/io/File;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadFile Ljava/io/File;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadDir Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/Class;
aload 0
getfield com/common/android/utils/download/DownloadModule/className Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Intent;
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadIntent Landroid/content/Intent;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/common/android/utils/download/DownloadModule;Landroid/content/Intent;)Landroid/content/Intent;
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/downloadIntent Landroid/content/Intent;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
aload 0
getfield com/common/android/utils/download/DownloadModule/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static addDownTask(Lcom/common/android/utils/download/DownloadModule;)V
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
ifnonnull L0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
L0:
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
aload 0
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method private static addDownTaskToMap(ILcom/common/android/utils/download/DownloadModule;)V
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
L0:
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method private checkSdCard()Z
invokestatic com/common/android/utils/download/DownloadModule/getSDPath()Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifle L0
aload 0
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadDirPath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/common/android/utils/download/DownloadModule/mDownloadDir Ljava/io/File;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadDir Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L1
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadDir Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/no_sdcard_for_download I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method private static deleteDownTask(Lcom/common/android/utils/download/DownloadModule;)V
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
ifnull L0
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
aload 0
invokevirtual java/util/Vector/remove(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private static deleteDownTaskFromMap(I)V
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
ifnull L0
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getDonwloadData(Ljava/lang/String;Lcom/common/android/utils/download/DownLoadData;)V
.throws java/net/MalformedURLException
.throws java/io/IOException
.throws org/apache/http/HttpException
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 4
aload 2
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/setUrl(Ljava/lang/String;)V
aload 4
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 5
aload 5
ldc "RANGE"
ldc "bytes=0-0"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 5
sipush 10000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 5
sipush 20000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 5
instanceof javax/net/ssl/HttpsURLConnection
ifeq L0
aload 5
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
aload 5
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L0:
aload 5
ldc "Content-Disposition"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 5
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 3
iload 3
sipush 200
if_icmpeq L1
iload 3
sipush 206
if_icmpeq L1
new org/apache/http/HttpException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "connect fail("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "):"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/net/HttpURLConnection/getResponseMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/HttpException/<init>(Ljava/lang/String;)V
athrow
L1:
new java/lang/String
dup
aload 1
ldc "ISO-8859-1"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "utf-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 6
ldc ""
astore 4
aload 4
astore 1
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 6
ldc "filename="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 4
astore 1
iload 3
iflt L2
aload 6
ldc "filename="
invokevirtual java/lang/String/length()I
iload 3
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
aload 1
bipush 34
invokevirtual java/lang/String/indexOf(I)I
istore 3
iload 3
ifge L3
L2:
aload 2
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/setServerFileName(Ljava/lang/String;)V
aload 5
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 2
iconst_0
invokevirtual com/common/android/utils/download/DownLoadData/setIsChaterDownload(Z)V
return
L3:
aload 1
iload 3
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 6
aload 6
bipush 34
invokevirtual java/lang/String/indexOf(I)I
istore 3
aload 4
astore 1
iload 3
ifle L2
aload 6
iconst_0
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
goto L2
L4:
aload 2
iconst_1
invokevirtual com/common/android/utils/download/DownLoadData/setIsChaterDownload(Z)V
aload 2
aload 1
invokestatic com/common/android/utils/download/DownloadModule/getTotalLength(Ljava/lang/String;)J
invokevirtual com/common/android/utils/download/DownLoadData/setSize(J)V
return
.limit locals 7
.limit stack 4
.end method

.method public static getDownTaskCount()I
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
ifnull L0
getstatic com/common/android/utils/download/DownloadModule/mDownTasks Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getDownTaskMap()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/Integer;Lcom/common/android/utils/download/DownloadModule;>;"
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
L0:
getstatic com/common/android/utils/download/DownloadModule/downTaskMap Ljava/util/HashMap;
areturn
.limit locals 0
.limit stack 2
.end method

.method private getProgressDelta(J)J
lload 1
ldc2_w 4194304L
lcmp
ifle L0
lload 1
ldc2_w 100L
ldiv
lreturn
L0:
lload 1
ldc2_w 50L
ldiv
lreturn
.limit locals 3
.limit stack 4
.end method

.method public static getSDPath()Ljava/lang/String;
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 0
.limit stack 2
.end method

.method protected static getTotalLength(Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 0
bipush 47
invokevirtual java/lang/String/indexOf(I)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
bipush 10
invokestatic java/lang/Long/parseLong(Ljava/lang/String;I)J
lstore 1
L1:
lload 1
lreturn
L2:
astore 0
lconst_0
lreturn
.limit locals 3
.limit stack 3
.end method

.method private saveConfig(I)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/isChaterDownload()Z
ifeq L0
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/toJSONString()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/common/android/utils/download/DownloadModule/mPreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/getFileName()Ljava/lang/String;
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method InitNotificationView(I)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress_bar I
bipush 100
iload 1
iconst_0
invokevirtual android/widget/RemoteViews/setProgressBar(IIIZ)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_soft I
aload 0
getfield com/common/android/utils/download/DownloadModule/mSoftName Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_progressblock I
iconst_0
invokevirtual android/widget/RemoteViews/setViewVisibility(II)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/imgV_ico I
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadIco I
invokevirtual android/widget/RemoteViews/setImageViewResource(II)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownloadPendingIntent Landroid/app/PendingIntent;
putfield android/app/Notification/contentIntent Landroid/app/PendingIntent;
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotificationManager Landroid/app/NotificationManager;
iconst_1
invokevirtual android/app/NotificationManager/cancel(I)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotificationManager Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotificationId I
aload 0
getfield com/common/android/utils/download/DownloadModule/mNotification Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 2
.limit stack 5
.end method

.method public Start()V
aload 0
invokespecial com/common/android/utils/download/DownloadModule/checkSdCard()Z
ifne L0
return
L0:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_3
putfield android/os/Message/what I
aload 1
iconst_0
putfield android/os/Message/arg1 I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
new java/lang/Thread
dup
new com/common/android/utils/download/DownloadModule$downloadRunnable
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$downloadRunnable/<init>(Lcom/common/android/utils/download/DownloadModule;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
aload 0
invokestatic com/common/android/utils/download/DownloadModule/addDownTask(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
getfield com/common/android/utils/download/DownloadModule/mAppId I
aload 0
invokestatic com/common/android/utils/download/DownloadModule/addDownTaskToMap(ILcom/common/android/utils/download/DownloadModule;)V
return
.limit locals 2
.limit stack 5
.end method

.method public doChaterDownload(Lcom/common/android/utils/download/DownLoadData;)V
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
.catch java/net/SocketTimeoutException from L26 to L27 using L28
.catch java/net/SocketException from L26 to L27 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L26 to L27 using L30
.catch java/net/UnknownHostException from L26 to L27 using L31
.catch java/lang/Exception from L26 to L27 using L32
.catch all from L26 to L27 using L33
.catch java/net/SocketTimeoutException from L34 to L35 using L28
.catch java/net/SocketException from L34 to L35 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L34 to L35 using L30
.catch java/net/UnknownHostException from L34 to L35 using L31
.catch java/lang/Exception from L34 to L35 using L32
.catch all from L34 to L35 using L33
.catch java/net/SocketTimeoutException from L36 to L37 using L28
.catch java/net/SocketException from L36 to L37 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L36 to L37 using L30
.catch java/net/UnknownHostException from L36 to L37 using L31
.catch java/lang/Exception from L36 to L37 using L32
.catch all from L36 to L37 using L33
.catch java/net/SocketTimeoutException from L38 to L39 using L28
.catch java/net/SocketException from L38 to L39 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L38 to L39 using L30
.catch java/net/UnknownHostException from L38 to L39 using L31
.catch java/lang/Exception from L38 to L39 using L32
.catch all from L38 to L39 using L33
.catch java/net/SocketTimeoutException from L40 to L41 using L28
.catch java/net/SocketException from L40 to L41 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L40 to L41 using L30
.catch java/net/UnknownHostException from L40 to L41 using L31
.catch java/lang/Exception from L40 to L41 using L32
.catch all from L40 to L41 using L33
.catch java/net/SocketTimeoutException from L42 to L43 using L28
.catch java/net/SocketException from L42 to L43 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L42 to L43 using L30
.catch java/net/UnknownHostException from L42 to L43 using L31
.catch java/lang/Exception from L42 to L43 using L32
.catch all from L42 to L43 using L33
.catch java/net/SocketTimeoutException from L44 to L45 using L28
.catch java/net/SocketException from L44 to L45 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L44 to L45 using L30
.catch java/net/UnknownHostException from L44 to L45 using L31
.catch java/lang/Exception from L44 to L45 using L32
.catch all from L44 to L45 using L33
.catch java/net/SocketTimeoutException from L46 to L47 using L28
.catch java/net/SocketException from L46 to L47 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L46 to L47 using L30
.catch java/net/UnknownHostException from L46 to L47 using L31
.catch java/lang/Exception from L46 to L47 using L32
.catch all from L46 to L47 using L33
.catch java/io/IOException from L48 to L49 using L50
.catch java/net/SocketTimeoutException from L48 to L49 using L28
.catch java/net/SocketException from L48 to L49 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L48 to L49 using L30
.catch java/net/UnknownHostException from L48 to L49 using L31
.catch java/lang/Exception from L48 to L49 using L32
.catch all from L48 to L49 using L33
.catch java/net/SocketTimeoutException from L51 to L52 using L28
.catch java/net/SocketException from L51 to L52 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L51 to L52 using L30
.catch java/net/UnknownHostException from L51 to L52 using L31
.catch java/lang/Exception from L51 to L52 using L32
.catch all from L51 to L52 using L33
.catch java/net/SocketTimeoutException from L53 to L54 using L28
.catch java/net/SocketException from L53 to L54 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L53 to L54 using L30
.catch java/net/UnknownHostException from L53 to L54 using L31
.catch java/lang/Exception from L53 to L54 using L32
.catch all from L53 to L54 using L33
.catch java/net/SocketTimeoutException from L55 to L56 using L28
.catch java/net/SocketException from L55 to L56 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L55 to L56 using L30
.catch java/net/UnknownHostException from L55 to L56 using L31
.catch java/lang/Exception from L55 to L56 using L32
.catch all from L55 to L56 using L33
.catch java/net/SocketTimeoutException from L57 to L58 using L28
.catch java/net/SocketException from L57 to L58 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L57 to L58 using L30
.catch java/net/UnknownHostException from L57 to L58 using L31
.catch java/lang/Exception from L57 to L58 using L32
.catch all from L57 to L58 using L33
.catch java/net/SocketTimeoutException from L59 to L60 using L28
.catch java/net/SocketException from L59 to L60 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L59 to L60 using L30
.catch java/net/UnknownHostException from L59 to L60 using L31
.catch java/lang/Exception from L59 to L60 using L32
.catch all from L59 to L60 using L33
.catch java/net/SocketTimeoutException from L61 to L62 using L28
.catch java/net/SocketException from L61 to L62 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L61 to L62 using L30
.catch java/net/UnknownHostException from L61 to L62 using L31
.catch java/lang/Exception from L61 to L62 using L32
.catch all from L61 to L62 using L33
.catch all from L63 to L64 using L7
.catch java/io/IOException from L65 to L66 using L67
.catch java/io/IOException from L68 to L69 using L70
.catch java/net/SocketTimeoutException from L71 to L72 using L28
.catch java/net/SocketException from L71 to L72 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L71 to L72 using L30
.catch java/net/UnknownHostException from L71 to L72 using L31
.catch java/lang/Exception from L71 to L72 using L32
.catch all from L71 to L72 using L33
.catch java/net/SocketTimeoutException from L73 to L74 using L28
.catch java/net/SocketException from L73 to L74 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L73 to L74 using L30
.catch java/net/UnknownHostException from L73 to L74 using L31
.catch java/lang/Exception from L73 to L74 using L32
.catch all from L73 to L74 using L33
.catch java/net/SocketTimeoutException from L75 to L76 using L28
.catch java/net/SocketException from L75 to L76 using L29
.catch org/apache/http/conn/ConnectTimeoutException from L75 to L76 using L30
.catch java/net/UnknownHostException from L75 to L76 using L31
.catch java/lang/Exception from L75 to L76 using L32
.catch all from L75 to L76 using L33
.catch java/io/IOException from L77 to L78 using L79
.catch java/io/IOException from L80 to L81 using L82
.catch all from L83 to L84 using L7
.catch java/io/IOException from L85 to L86 using L87
.catch java/io/IOException from L88 to L89 using L90
.catch all from L91 to L92 using L7
.catch java/io/IOException from L93 to L94 using L95
.catch java/io/IOException from L96 to L97 using L98
.catch all from L99 to L100 using L7
.catch java/io/IOException from L101 to L102 using L103
.catch java/io/IOException from L104 to L105 using L106
.catch all from L107 to L108 using L7
.catch java/io/IOException from L109 to L110 using L111
.catch java/io/IOException from L112 to L113 using L114
.catch java/io/IOException from L115 to L116 using L117
.catch java/io/IOException from L118 to L119 using L120
ldc "debug"
ldc "doChaterDownload"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
astore 15
aconst_null
astore 16
aconst_null
astore 21
aconst_null
astore 22
aconst_null
astore 23
aconst_null
astore 14
aconst_null
astore 25
aconst_null
astore 24
aconst_null
astore 18
aconst_null
astore 19
aconst_null
astore 20
aconst_null
astore 30
aconst_null
astore 26
aconst_null
astore 27
aconst_null
astore 28
aconst_null
astore 29
aconst_null
astore 31
aconst_null
astore 17
sipush 4096
newarray byte
astore 32
new java/io/File
dup
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getFileName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 34
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getUrl()Ljava/lang/String;
astore 33
aload 14
astore 1
aload 31
astore 13
L0:
aload 34
invokevirtual java/io/File/length()J
lstore 3
L1:
aload 14
astore 1
aload 31
astore 13
L8:
new java/net/URL
dup
aload 33
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 33
L9:
aload 14
astore 1
aload 31
astore 13
L10:
aload 33
ldc "Range"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "bytes="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 14
astore 1
aload 31
astore 13
L12:
aload 33
sipush 20000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L13:
aload 14
astore 1
aload 31
astore 13
L14:
aload 33
sipush 30000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L15:
aload 14
astore 1
aload 31
astore 13
L16:
aload 33
instanceof javax/net/ssl/HttpsURLConnection
ifeq L21
L17:
aload 14
astore 1
aload 31
astore 13
L18:
aload 33
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L19:
aload 14
astore 1
aload 31
astore 13
L20:
aload 33
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L21:
aload 14
astore 1
aload 31
astore 13
L22:
aload 33
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/common/android/utils/download/DownloadModule/getTotalLength(Ljava/lang/String;)J
lstore 9
L23:
aload 14
astore 1
aload 31
astore 13
L24:
new java/io/FileOutputStream
dup
aload 34
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
astore 14
L25:
aload 30
astore 15
aload 25
astore 16
aload 24
astore 17
L26:
aload 33
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 13
L27:
aload 13
astore 15
aload 13
astore 16
aload 13
astore 17
aload 13
astore 18
aload 13
astore 19
aload 13
astore 20
L34:
aload 33
invokevirtual java/net/HttpURLConnection/getContentEncoding()Ljava/lang/String;
astore 21
L35:
aload 13
astore 1
aload 21
ifnull L39
aload 13
astore 1
aload 13
astore 15
aload 13
astore 16
aload 13
astore 17
aload 13
astore 18
aload 13
astore 19
aload 13
astore 20
L36:
aload 21
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L39
L37:
aload 13
astore 15
aload 13
astore 16
aload 13
astore 17
aload 13
astore 18
aload 13
astore 19
aload 13
astore 20
L38:
new java/util/zip/GZIPInputStream
dup
aload 13
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L39:
lload 3
lstore 5
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L40:
aload 0
lload 9
invokespecial com/common/android/utils/download/DownloadModule/getProgressDelta(J)J
lstore 11
L41:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L42:
aload 1
aload 32
invokevirtual java/io/InputStream/read([B)I
istore 2
L43:
iload 2
iconst_m1
if_icmpeq L121
lload 3
lload 9
lcmp
ifge L49
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L44:
aload 0
getfield com/common/android/utils/download/DownloadModule/isStop Z
ifeq L49
L45:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L46:
ldc "debug"
ldc "chapter download stop"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L47:
aload 1
ifnull L49
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L48:
aload 1
invokevirtual java/io/InputStream/close()V
L49:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L51:
aload 14
aload 32
iconst_0
iload 2
invokevirtual java/io/OutputStream/write([BII)V
L52:
lload 3
iload 2
i2l
ladd
lstore 7
lload 7
lstore 3
lload 7
lload 5
lsub
lload 11
lcmp
ifle L41
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L53:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 13
L54:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L55:
aload 13
iconst_4
putfield android/os/Message/what I
L56:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L57:
aload 13
ldc2_w 100L
lload 7
lmul
lload 9
ldiv
l2i
putfield android/os/Message/arg1 I
L58:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L59:
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 13
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L60:
lload 7
lstore 5
lload 7
lstore 3
goto L41
L50:
astore 13
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L61:
ldc "DownloadModule"
aload 13
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L62:
goto L49
L28:
astore 16
L122:
aload 15
astore 1
aload 14
astore 13
L63:
ldc "DownloadModule"
aload 16
invokevirtual java/net/SocketTimeoutException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L64:
aload 15
ifnull L66
L65:
aload 15
invokevirtual java/io/InputStream/close()V
L66:
aload 14
ifnull L69
L68:
aload 14
invokevirtual java/io/OutputStream/close()V
L69:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L121:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L71:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 13
L72:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L73:
aload 13
iconst_0
putfield android/os/Message/what I
L74:
aload 1
astore 15
aload 1
astore 16
aload 1
astore 17
aload 1
astore 18
aload 1
astore 19
aload 1
astore 20
L75:
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 13
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L76:
aload 1
ifnull L78
L77:
aload 1
invokevirtual java/io/InputStream/close()V
L78:
aload 14
ifnull L81
L80:
aload 14
invokevirtual java/io/OutputStream/close()V
L81:
return
L79:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L78
L82:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L81
L67:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L66
L70:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L69
L3:
astore 15
aload 26
astore 14
aload 16
astore 20
L123:
aload 20
astore 1
aload 14
astore 13
L83:
ldc "DownloadModule"
aload 15
invokevirtual java/net/SocketException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L84:
aload 20
ifnull L86
L85:
aload 20
invokevirtual java/io/InputStream/close()V
L86:
aload 14
ifnull L69
L88:
aload 14
invokevirtual java/io/OutputStream/close()V
L89:
goto L69
L90:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L69
L87:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L86
L4:
astore 15
aload 27
astore 14
aload 21
astore 19
L124:
aload 19
astore 1
aload 14
astore 13
L91:
ldc "DownloadModule"
aload 15
invokevirtual org/apache/http/conn/ConnectTimeoutException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L92:
aload 19
ifnull L94
L93:
aload 19
invokevirtual java/io/InputStream/close()V
L94:
aload 14
ifnull L69
L96:
aload 14
invokevirtual java/io/OutputStream/close()V
L97:
goto L69
L98:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L69
L95:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L94
L5:
astore 15
aload 28
astore 14
aload 22
astore 18
L125:
aload 18
astore 1
aload 14
astore 13
L99:
ldc "DownloadModule"
aload 15
invokevirtual java/net/UnknownHostException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L100:
aload 18
ifnull L102
L101:
aload 18
invokevirtual java/io/InputStream/close()V
L102:
aload 14
ifnull L69
L104:
aload 14
invokevirtual java/io/OutputStream/close()V
L105:
goto L69
L106:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L69
L103:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L102
L6:
astore 15
aload 29
astore 14
aload 23
astore 17
L126:
aload 17
astore 1
aload 14
astore 13
L107:
ldc "DownloadModule"
aload 15
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L108:
aload 17
ifnull L110
L109:
aload 17
invokevirtual java/io/InputStream/close()V
L110:
aload 14
ifnull L69
L112:
aload 14
invokevirtual java/io/OutputStream/close()V
L113:
goto L69
L114:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L69
L111:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L110
L7:
astore 14
L127:
aload 1
ifnull L116
L115:
aload 1
invokevirtual java/io/InputStream/close()V
L116:
aload 13
ifnull L119
L118:
aload 13
invokevirtual java/io/OutputStream/close()V
L119:
aload 14
athrow
L117:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L116
L120:
astore 1
ldc "DownloadModule"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L119
L33:
astore 15
aload 14
astore 13
aload 16
astore 1
aload 15
astore 14
goto L127
L32:
astore 15
goto L126
L31:
astore 15
goto L125
L30:
astore 15
goto L124
L29:
astore 15
goto L123
L2:
astore 16
aload 17
astore 14
goto L122
.limit locals 35
.limit stack 5
.end method

.method public doDownload(Lcom/common/android/utils/download/DownLoadData;)V
.catch java/net/MalformedURLException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
.catch all from L0 to L1 using L5
.catch java/net/MalformedURLException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch java/lang/Exception from L6 to L7 using L4
.catch all from L6 to L7 using L5
.catch java/net/MalformedURLException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
.catch java/lang/Exception from L8 to L9 using L4
.catch all from L8 to L9 using L5
.catch java/net/MalformedURLException from L10 to L11 using L2
.catch java/io/IOException from L10 to L11 using L3
.catch java/lang/Exception from L10 to L11 using L4
.catch all from L10 to L11 using L5
.catch java/net/MalformedURLException from L12 to L13 using L2
.catch java/io/IOException from L12 to L13 using L3
.catch java/lang/Exception from L12 to L13 using L4
.catch all from L12 to L13 using L5
.catch java/net/MalformedURLException from L14 to L15 using L2
.catch java/io/IOException from L14 to L15 using L3
.catch java/lang/Exception from L14 to L15 using L4
.catch all from L14 to L15 using L5
.catch java/net/MalformedURLException from L16 to L17 using L2
.catch java/io/IOException from L16 to L17 using L3
.catch java/lang/Exception from L16 to L17 using L4
.catch all from L16 to L17 using L5
.catch java/net/MalformedURLException from L18 to L19 using L2
.catch java/io/IOException from L18 to L19 using L3
.catch java/lang/Exception from L18 to L19 using L4
.catch all from L18 to L19 using L5
.catch java/net/MalformedURLException from L20 to L2 using L2
.catch java/io/IOException from L20 to L2 using L3
.catch java/lang/Exception from L20 to L2 using L4
.catch all from L20 to L2 using L5
.catch all from L21 to L22 using L5
.catch java/lang/Exception from L23 to L24 using L25
.catch java/lang/Exception from L26 to L27 using L25
.catch java/net/MalformedURLException from L28 to L29 using L2
.catch java/io/IOException from L28 to L29 using L3
.catch java/lang/Exception from L28 to L29 using L4
.catch all from L28 to L29 using L5
.catch java/net/MalformedURLException from L30 to L31 using L2
.catch java/io/IOException from L30 to L31 using L3
.catch java/lang/Exception from L30 to L31 using L4
.catch all from L30 to L31 using L5
.catch java/net/MalformedURLException from L32 to L33 using L2
.catch java/io/IOException from L32 to L33 using L3
.catch java/lang/Exception from L32 to L33 using L4
.catch all from L32 to L33 using L5
.catch java/net/MalformedURLException from L34 to L35 using L2
.catch java/io/IOException from L34 to L35 using L3
.catch java/lang/Exception from L34 to L35 using L4
.catch all from L34 to L35 using L5
.catch java/net/MalformedURLException from L36 to L37 using L2
.catch java/io/IOException from L36 to L37 using L3
.catch java/lang/Exception from L36 to L37 using L4
.catch all from L36 to L37 using L5
.catch java/net/MalformedURLException from L37 to L38 using L39
.catch java/io/IOException from L37 to L38 using L40
.catch java/lang/Exception from L37 to L38 using L41
.catch all from L37 to L38 using L42
.catch java/net/MalformedURLException from L38 to L43 using L39
.catch java/io/IOException from L38 to L43 using L40
.catch java/lang/Exception from L38 to L43 using L41
.catch all from L38 to L43 using L42
.catch java/net/MalformedURLException from L44 to L45 using L39
.catch java/io/IOException from L44 to L45 using L40
.catch java/lang/Exception from L44 to L45 using L41
.catch all from L44 to L45 using L42
.catch java/net/MalformedURLException from L46 to L47 using L39
.catch java/io/IOException from L46 to L47 using L40
.catch java/lang/Exception from L46 to L47 using L41
.catch all from L46 to L47 using L42
.catch java/net/MalformedURLException from L48 to L49 using L39
.catch java/io/IOException from L48 to L49 using L40
.catch java/lang/Exception from L48 to L49 using L41
.catch all from L48 to L49 using L42
.catch java/net/MalformedURLException from L50 to L51 using L39
.catch java/io/IOException from L50 to L51 using L40
.catch java/lang/Exception from L50 to L51 using L41
.catch all from L50 to L51 using L42
.catch java/net/MalformedURLException from L52 to L53 using L39
.catch java/io/IOException from L52 to L53 using L40
.catch java/lang/Exception from L52 to L53 using L41
.catch all from L52 to L53 using L42
.catch java/lang/Exception from L54 to L55 using L56
.catch java/lang/Exception from L57 to L58 using L56
.catch all from L59 to L60 using L5
.catch java/lang/Exception from L61 to L62 using L63
.catch java/lang/Exception from L64 to L65 using L63
.catch all from L66 to L67 using L5
.catch java/lang/Exception from L68 to L69 using L70
.catch java/lang/Exception from L71 to L72 using L70
.catch java/lang/Exception from L73 to L74 using L75
.catch java/lang/Exception from L76 to L77 using L75
iconst_0
istore 2
new java/io/File
dup
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getFileName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 27
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getFileName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "temp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 28
lconst_0
lstore 6
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getSize()J
lstore 8
aconst_null
astore 17
aconst_null
astore 19
aconst_null
astore 11
aconst_null
astore 15
aconst_null
astore 24
aconst_null
astore 25
aconst_null
astore 26
aconst_null
astore 10
aconst_null
astore 22
aconst_null
astore 23
aconst_null
astore 14
aconst_null
astore 21
aload 10
astore 16
aload 24
astore 18
aload 25
astore 20
aload 14
astore 13
aload 26
astore 12
L0:
new java/net/URL
dup
aload 1
invokevirtual com/common/android/utils/download/DownLoadData/getUrl()Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L1:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L6:
aload 1
ldc "RANGE"
ldc "bytes=0-"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L7:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L8:
aload 1
sipush 10000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L9:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L10:
aload 1
sipush 20000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L11:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L12:
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L17
L13:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L14:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L15:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L16:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L17:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L18:
aload 1
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 404
if_icmpne L78
L19:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L20:
new java/lang/Exception
dup
ldc "fail!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L2:
astore 11
aload 16
astore 10
aload 15
astore 1
aload 21
astore 14
aload 11
astore 15
L79:
aload 14
astore 13
aload 1
astore 11
aload 10
astore 12
L21:
aload 15
invokevirtual java/net/MalformedURLException/printStackTrace()V
L22:
aload 1
ifnull L80
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L80:
aload 10
ifnull L24
L23:
aload 10
invokevirtual java/io/InputStream/close()V
L24:
aload 14
ifnull L27
L26:
aload 14
invokevirtual java/io/FileOutputStream/close()V
L27:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L78:
lload 8
lstore 4
lload 8
lconst_0
lcmp
ifgt L33
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L28:
aload 1
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
lstore 8
L29:
lload 8
lstore 4
lload 8
lconst_1
lcmp
ifge L33
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L30:
aload 1
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 29
L31:
lload 8
lstore 4
aload 29
ifnull L33
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L32:
aload 29
invokestatic com/common/android/utils/download/DownloadModule/getTotalLength(Ljava/lang/String;)J
lstore 4
L33:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 24
astore 18
aload 1
astore 19
aload 25
astore 20
aload 14
astore 13
aload 1
astore 11
aload 26
astore 12
L34:
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 10
L35:
aload 1
astore 15
aload 10
astore 16
aload 1
astore 17
aload 10
astore 18
aload 1
astore 19
aload 10
astore 20
aload 14
astore 13
aload 1
astore 11
aload 10
astore 12
L36:
new java/io/FileOutputStream
dup
aload 28
iconst_0
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
astore 14
L37:
sipush 4096
newarray byte
astore 11
L38:
aload 10
aload 11
invokevirtual java/io/InputStream/read([B)I
istore 3
L43:
iload 3
ifle L52
L44:
aload 14
aload 11
iconst_0
iload 3
invokevirtual java/io/FileOutputStream/write([BII)V
L45:
lload 6
iload 3
i2l
ladd
lstore 8
L46:
ldc2_w 100L
lload 8
lmul
lload 4
ldiv
l2i
istore 3
L47:
iload 2
ifeq L48
lload 8
lstore 6
iload 3
iconst_2
isub
iload 2
if_icmplt L38
L48:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 12
L49:
iload 3
istore 2
L50:
aload 12
iconst_4
putfield android/os/Message/what I
aload 12
iload 3
putfield android/os/Message/arg1 I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 12
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L51:
lload 8
lstore 6
goto L38
L52:
aload 28
aload 27
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
aload 28
invokevirtual java/io/File/delete()Z
pop
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 11
aload 11
iconst_0
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 11
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L53:
aload 1
ifnull L81
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L81:
aload 10
ifnull L55
L54:
aload 10
invokevirtual java/io/InputStream/close()V
L55:
aload 14
ifnull L58
L57:
aload 14
invokevirtual java/io/FileOutputStream/close()V
L58:
return
L3:
astore 15
aload 18
astore 10
aload 17
astore 1
aload 22
astore 14
L82:
aload 14
astore 13
aload 1
astore 11
aload 10
astore 12
L59:
aload 15
invokevirtual java/io/IOException/printStackTrace()V
L60:
aload 1
ifnull L83
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L83:
aload 10
ifnull L62
L61:
aload 10
invokevirtual java/io/InputStream/close()V
L62:
aload 14
ifnull L27
L64:
aload 14
invokevirtual java/io/FileOutputStream/close()V
L65:
goto L27
L63:
astore 1
goto L27
L4:
astore 15
aload 20
astore 10
aload 19
astore 1
aload 23
astore 14
L84:
aload 14
astore 13
aload 1
astore 11
aload 10
astore 12
L66:
aload 15
invokevirtual java/lang/Exception/printStackTrace()V
L67:
aload 1
ifnull L85
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L85:
aload 10
ifnull L69
L68:
aload 10
invokevirtual java/io/InputStream/close()V
L69:
aload 14
ifnull L27
L71:
aload 14
invokevirtual java/io/FileOutputStream/close()V
L72:
goto L27
L70:
astore 1
goto L27
L5:
astore 1
aload 12
astore 10
L86:
aload 11
ifnull L87
aload 11
invokevirtual java/net/HttpURLConnection/disconnect()V
L87:
aload 10
ifnull L74
L73:
aload 10
invokevirtual java/io/InputStream/close()V
L74:
aload 13
ifnull L77
L76:
aload 13
invokevirtual java/io/FileOutputStream/close()V
L77:
aload 1
athrow
L75:
astore 10
goto L77
L42:
astore 12
aload 14
astore 13
aload 1
astore 11
aload 12
astore 1
goto L86
L41:
astore 15
goto L84
L40:
astore 15
goto L82
L25:
astore 1
goto L27
L56:
astore 1
goto L58
L39:
astore 15
goto L79
.limit locals 30
.limit stack 4
.end method

.method public downloadFile(Ljava/lang/String;Ljava/io/File;)J
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L24 using L2
.catch all from L25 to L26 using L2
.catch all from L27 to L28 using L2
.catch all from L29 to L2 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
.catch all from L34 to L35 using L2
.catch all from L36 to L37 using L2
.catch all from L38 to L39 using L2
.catch all from L39 to L40 using L41
.catch all from L40 to L42 using L41
.catch all from L43 to L44 using L41
.catch all from L45 to L46 using L41
.catch all from L47 to L48 using L41
.catch all from L49 to L50 using L41
iconst_0
istore 3
lconst_0
lstore 7
aconst_null
astore 15
aconst_null
astore 13
aconst_null
astore 14
aload 15
astore 11
aload 13
astore 12
L0:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 15
astore 11
aload 13
astore 12
L3:
aload 0
getfield com/common/android/utils/download/DownloadModule/isNuseProxy Z
ifne L51
L4:
aload 15
astore 11
aload 13
astore 12
L5:
invokestatic com/common/android/utils/download/DownloadModule/GetProxy()Ljava/net/Proxy;
astore 16
L6:
aload 16
ifnull L52
aload 15
astore 11
aload 13
astore 12
L7:
aload 1
aload 16
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L8:
iconst_0
ifle L53
aload 1
astore 11
aload 13
astore 12
L9:
aload 1
ldc "RANGE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "bytes="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L10:
aload 1
astore 11
aload 13
astore 12
L11:
aload 1
sipush 10000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L12:
aload 1
astore 11
aload 13
astore 12
L13:
aload 1
sipush 20000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L14:
aload 1
astore 11
aload 13
astore 12
L15:
aload 1
instanceof javax/net/ssl/HttpsURLConnection
ifeq L20
L16:
aload 1
astore 11
aload 13
astore 12
L17:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L18:
aload 1
astore 11
aload 13
astore 12
L19:
aload 1
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L20:
aload 1
astore 11
aload 13
astore 12
L21:
aload 1
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
lstore 9
L22:
lload 9
lstore 5
lload 9
lconst_1
lcmp
ifge L26
aload 1
astore 11
aload 13
astore 12
L23:
aload 1
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 15
L24:
lload 9
lstore 5
aload 15
ifnull L26
aload 1
astore 11
aload 13
astore 12
L25:
aload 15
invokestatic com/common/android/utils/download/DownloadModule/getTotalLength(Ljava/lang/String;)J
lstore 5
L26:
aload 1
astore 11
aload 13
astore 12
L27:
aload 1
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 404
if_icmpne L54
L28:
aload 1
astore 11
aload 13
astore 12
L29:
new java/lang/Exception
dup
ldc "fail!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L2:
astore 13
aload 11
astore 1
aload 14
astore 2
L55:
aload 1
ifnull L56
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L56:
aload 12
ifnull L57
aload 12
invokevirtual java/io/InputStream/close()V
L57:
aload 2
ifnull L58
aload 2
invokevirtual java/io/FileOutputStream/close()V
L58:
aload 13
athrow
L52:
aload 15
astore 11
aload 13
astore 12
L30:
aload 1
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L31:
goto L8
L51:
aload 15
astore 11
aload 13
astore 12
L32:
aload 1
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 1
L33:
goto L8
L53:
aload 1
astore 11
aload 13
astore 12
L34:
aload 1
ldc "RANGE"
ldc "bytes=0-"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L35:
goto L10
L54:
aload 1
astore 11
aload 13
astore 12
L36:
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 13
L37:
aload 1
astore 11
aload 13
astore 12
L38:
new java/io/FileOutputStream
dup
aload 2
iconst_0
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
astore 2
L39:
sipush 4096
newarray byte
astore 11
L40:
aload 13
aload 11
invokevirtual java/io/InputStream/read([B)I
istore 4
L42:
iload 4
ifle L49
L43:
aload 2
aload 11
iconst_0
iload 4
invokevirtual java/io/FileOutputStream/write([BII)V
L44:
lload 7
iload 4
i2l
ladd
lstore 9
L45:
ldc2_w 100L
lload 9
lmul
lload 5
ldiv
l2i
istore 4
L46:
iload 3
ifeq L59
lload 9
lstore 7
iload 4
iconst_2
isub
iload 3
if_icmplt L40
L59:
iload 4
istore 3
L47:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 12
aload 12
iconst_4
putfield android/os/Message/what I
aload 12
iload 4
putfield android/os/Message/arg1 I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 12
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L48:
lload 9
lstore 7
goto L40
L49:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 11
aload 11
iconst_0
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule/downloadHandler Landroid/os/Handler;
aload 11
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L50:
aload 1
ifnull L60
aload 1
invokevirtual java/net/HttpURLConnection/disconnect()V
L60:
aload 13
ifnull L61
aload 13
invokevirtual java/io/InputStream/close()V
L61:
aload 2
ifnull L62
aload 2
invokevirtual java/io/FileOutputStream/close()V
L62:
lload 7
lreturn
L41:
astore 11
aload 13
astore 12
aload 11
astore 13
goto L55
.limit locals 17
.limit stack 4
.end method

.method public getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
aload 1
aload 1
ldc "/"
aload 1
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;I)I
iconst_1
iadd
aload 1
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getFilename(Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L24 using L2
.catch all from L25 to L2 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
.catch all from L34 to L35 using L2
.catch all from L36 to L37 using L2
.catch all from L38 to L39 using L2
.catch all from L40 to L41 using L2
.catch all from L42 to L43 using L2
.catch all from L44 to L45 using L2
.catch all from L46 to L47 using L2
.catch all from L48 to L49 using L2
aconst_null
astore 3
aload 3
astore 4
L0:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 5
L1:
aload 3
astore 4
L3:
aload 0
getfield com/common/android/utils/download/DownloadModule/isNuseProxy Z
ifne L50
L4:
aload 3
astore 4
L5:
invokestatic com/common/android/utils/download/DownloadModule/GetProxy()Ljava/net/Proxy;
astore 6
L6:
aload 6
ifnull L51
aload 3
astore 4
L7:
aload 5
aload 6
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 3
L8:
aload 3
astore 4
L9:
aload 3
ldc "RANGE"
ldc "bytes=0-0"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L10:
aload 3
astore 4
L11:
aload 3
sipush 10000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
L12:
aload 3
astore 4
L13:
aload 3
sipush 20000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L14:
aload 3
astore 4
L15:
aload 3
instanceof javax/net/ssl/HttpsURLConnection
ifeq L20
L16:
aload 3
astore 4
L17:
aload 3
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L18:
aload 3
astore 4
L19:
aload 3
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/common/android/utils/download/DownloadModule/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L20:
aload 3
astore 4
L21:
aload 3
ldc "Content-Disposition"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 5
L22:
aload 3
astore 4
L23:
aload 3
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 404
if_icmpne L52
L24:
aload 3
astore 4
L25:
new java/lang/Exception
dup
ldc "fail!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 4
ifnull L53
aload 4
invokevirtual java/net/HttpURLConnection/disconnect()V
L53:
aload 1
athrow
L51:
aload 3
astore 4
L26:
aload 5
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 3
L27:
goto L8
L50:
aload 3
astore 4
L28:
aload 5
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 3
L29:
goto L8
L52:
aload 5
ifnonnull L54
aload 3
astore 4
L30:
aload 0
aload 1
invokevirtual com/common/android/utils/download/DownloadModule/getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
astore 1
L31:
aload 3
ifnull L55
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
L55:
aload 1
areturn
L54:
aload 3
astore 4
L32:
new java/lang/String
dup
aload 5
ldc "ISO-8859-1"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "utf-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 1
L33:
aload 3
astore 4
L34:
aload 1
ldc "filename="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
L35:
iload 2
ifge L56
aload 3
ifnull L57
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
L57:
aconst_null
areturn
L56:
aload 3
astore 4
L36:
aload 1
iload 2
bipush 9
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 5
L37:
aload 3
astore 4
L38:
aload 5
ldc ";"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
L39:
aload 5
astore 1
iload 2
ifle L41
aload 3
astore 4
L40:
aload 5
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L41:
aload 3
astore 4
L42:
aload 1
bipush 34
invokevirtual java/lang/String/indexOf(I)I
istore 2
L43:
iload 2
ifge L58
aload 3
ifnull L59
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
L59:
aload 1
areturn
L58:
aload 3
astore 4
L44:
aload 1
iload 2
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
L45:
aload 3
astore 4
L46:
aload 1
bipush 34
invokevirtual java/lang/String/indexOf(I)I
istore 2
L47:
iload 2
ifge L60
aload 3
ifnull L61
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
L61:
aconst_null
areturn
L60:
aload 3
astore 4
L48:
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L49:
aload 3
ifnull L62
aload 3
invokevirtual java/net/HttpURLConnection/disconnect()V
L62:
aload 1
areturn
.limit locals 7
.limit stack 4
.end method

.method protected getURIType(Ljava/lang/String;)Ljava/lang/String;
aload 1
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 2
iload 2
ifge L0
aconst_null
astore 3
L1:
aload 3
areturn
L0:
aload 1
iload 2
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 4
aload 4
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
pop
bipush 69
anewarray [Ljava/lang/String;
astore 5
aload 5
iconst_0
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "3gp"
aastore
dup
iconst_1
ldc "video/3gpp"
aastore
aastore
aload 5
iconst_1
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "7z"
aastore
dup
iconst_1
ldc "application/x-compress"
aastore
aastore
aload 5
iconst_2
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "apk"
aastore
dup
iconst_1
ldc "application/vnd.android.package-archive"
aastore
aastore
aload 5
iconst_3
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "asf"
aastore
dup
iconst_1
ldc "video/x-ms-asf"
aastore
aastore
aload 5
iconst_4
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "avi"
aastore
dup
iconst_1
ldc "video/x-msvideo"
aastore
aastore
aload 5
iconst_5
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "bin"
aastore
dup
iconst_1
ldc "application/octet-stream"
aastore
aastore
aload 5
bipush 6
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "bmp"
aastore
dup
iconst_1
ldc "image/bmp"
aastore
aastore
aload 5
bipush 7
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "c"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 8
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "class"
aastore
dup
iconst_1
ldc "application/octet-stream"
aastore
aastore
aload 5
bipush 9
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "conf"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 10
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "cpp"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 11
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "doc"
aastore
dup
iconst_1
ldc "application/msword"
aastore
aastore
aload 5
bipush 12
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "docx"
aastore
dup
iconst_1
ldc "application/msword"
aastore
aastore
aload 5
bipush 13
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "exe"
aastore
dup
iconst_1
ldc "application/octet-stream"
aastore
aastore
aload 5
bipush 14
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "gif"
aastore
dup
iconst_1
ldc "image/gif"
aastore
aastore
aload 5
bipush 15
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "gtar"
aastore
dup
iconst_1
ldc "application/x-gtar"
aastore
aastore
aload 5
bipush 16
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "gz"
aastore
dup
iconst_1
ldc "application/x-gzip"
aastore
aastore
aload 5
bipush 17
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "h"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 18
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "htm"
aastore
dup
iconst_1
ldc "text/html"
aastore
aastore
aload 5
bipush 19
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "html"
aastore
dup
iconst_1
ldc "text/html"
aastore
aastore
aload 5
bipush 20
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "jar"
aastore
dup
iconst_1
ldc "application/java-archive"
aastore
aastore
aload 5
bipush 21
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "java"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 22
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "jpeg"
aastore
dup
iconst_1
ldc "image/jpeg"
aastore
aastore
aload 5
bipush 23
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "jpg"
aastore
dup
iconst_1
ldc "image/jpeg"
aastore
aastore
aload 5
bipush 24
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "js"
aastore
dup
iconst_1
ldc "application/x-javascript"
aastore
aastore
aload 5
bipush 25
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "log"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 26
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m3u"
aastore
dup
iconst_1
ldc "audio/x-mpegurl"
aastore
aastore
aload 5
bipush 27
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m4a"
aastore
dup
iconst_1
ldc "audio/mp4a-latm"
aastore
aastore
aload 5
bipush 28
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m4b"
aastore
dup
iconst_1
ldc "audio/mp4a-latm"
aastore
aastore
aload 5
bipush 29
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m4p"
aastore
dup
iconst_1
ldc "audio/mp4a-latm"
aastore
aastore
aload 5
bipush 30
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m4u"
aastore
dup
iconst_1
ldc "video/vnd.mpegurl"
aastore
aastore
aload 5
bipush 31
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "m4v"
aastore
dup
iconst_1
ldc "video/x-m4v"
aastore
aastore
aload 5
bipush 32
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mov"
aastore
dup
iconst_1
ldc "video/quicktime"
aastore
aastore
aload 5
bipush 33
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mp2"
aastore
dup
iconst_1
ldc "audio/x-mpeg"
aastore
aastore
aload 5
bipush 34
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mp3"
aastore
dup
iconst_1
ldc "audio/x-mpeg"
aastore
aastore
aload 5
bipush 35
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mp4"
aastore
dup
iconst_1
ldc "video/mp4"
aastore
aastore
aload 5
bipush 36
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpc"
aastore
dup
iconst_1
ldc "application/vnd.mpohun.certificate"
aastore
aastore
aload 5
bipush 37
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpe"
aastore
dup
iconst_1
ldc "video/mpeg"
aastore
aastore
aload 5
bipush 38
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpeg"
aastore
dup
iconst_1
ldc "video/mpeg"
aastore
aastore
aload 5
bipush 39
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpg"
aastore
dup
iconst_1
ldc "video/mpeg"
aastore
aastore
aload 5
bipush 40
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpg4"
aastore
dup
iconst_1
ldc "video/mp4"
aastore
aastore
aload 5
bipush 41
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "mpga"
aastore
dup
iconst_1
ldc "audio/mpeg"
aastore
aastore
aload 5
bipush 42
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "msg"
aastore
dup
iconst_1
ldc "application/vnd.ms-outlook"
aastore
aastore
aload 5
bipush 43
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "ogg"
aastore
dup
iconst_1
ldc "audio/ogg"
aastore
aastore
aload 5
bipush 44
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "pdf"
aastore
dup
iconst_1
ldc "application/pdf"
aastore
aastore
aload 5
bipush 45
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "png"
aastore
dup
iconst_1
ldc "image/png"
aastore
aastore
aload 5
bipush 46
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "psd"
aastore
dup
iconst_1
ldc "image/x-photoshop"
aastore
aastore
aload 5
bipush 47
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "pps"
aastore
dup
iconst_1
ldc "application/vnd.ms-powerpoint"
aastore
aastore
aload 5
bipush 48
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "ppt"
aastore
dup
iconst_1
ldc "application/vnd.ms-powerpoint"
aastore
aastore
aload 5
bipush 49
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "pptx"
aastore
dup
iconst_1
ldc "application/vnd.ms-powerpoint"
aastore
aastore
aload 5
bipush 50
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "prop"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 51
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "rar"
aastore
dup
iconst_1
ldc "application/x-rar-compressed"
aastore
aastore
aload 5
bipush 52
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "rc"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 53
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "rmvb"
aastore
dup
iconst_1
ldc "audio/x-pn-realaudio"
aastore
aastore
aload 5
bipush 54
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "rtf"
aastore
dup
iconst_1
ldc "application/rtf"
aastore
aastore
aload 5
bipush 55
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "sh"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 56
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "tar"
aastore
dup
iconst_1
ldc "application/x-tar"
aastore
aastore
aload 5
bipush 57
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "tgz"
aastore
dup
iconst_1
ldc "application/x-compressed"
aastore
aastore
aload 5
bipush 58
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "txt"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 59
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "wav"
aastore
dup
iconst_1
ldc "audio/x-wav"
aastore
aastore
aload 5
bipush 60
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "wma"
aastore
dup
iconst_1
ldc "audio/x-ms-wma"
aastore
aastore
aload 5
bipush 61
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "wmv"
aastore
dup
iconst_1
ldc "audio/x-ms-wmv"
aastore
aastore
aload 5
bipush 62
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "wps"
aastore
dup
iconst_1
ldc "application/vnd.ms-works"
aastore
aastore
aload 5
bipush 63
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "xml"
aastore
dup
iconst_1
ldc "text/plain"
aastore
aastore
aload 5
bipush 64
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "xls"
aastore
dup
iconst_1
ldc "application/vnd.ms-excel"
aastore
aastore
aload 5
bipush 65
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "xlsx"
aastore
dup
iconst_1
ldc "application/vnd.ms-excel"
aastore
aastore
aload 5
bipush 66
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "z"
aastore
dup
iconst_1
ldc "application/x-compress"
aastore
aastore
aload 5
bipush 67
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "zip"
aastore
dup
iconst_1
ldc "application/zip"
aastore
aastore
aload 5
bipush 68
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc ""
aastore
dup
iconst_1
ldc "*/*"
aastore
aastore
aconst_null
astore 1
iconst_0
istore 2
L2:
aload 1
astore 3
iload 2
aload 5
arraylength
if_icmpge L1
aload 4
aload 5
iload 2
aaload
iconst_0
aaload
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 5
iload 2
aaload
iconst_1
aaload
astore 1
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 6
.end method

.method public isDownloading()Z
aload 0
getfield com/common/android/utils/download/DownloadModule/isStarted Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAppId(I)V
aload 0
iload 1
putfield com/common/android/utils/download/DownloadModule/mAppId I
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloadDirPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadDirPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloadFileName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadFileName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloadIco(I)V
aload 0
iload 1
putfield com/common/android/utils/download/DownloadModule/mDownloadIco I
return
.limit locals 2
.limit stack 2
.end method

.method public setIntentClassName(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/className Ljava/lang/Class;
return
.limit locals 2
.limit stack 2
.end method

.method public setNuseProxy(Z)V
aload 0
iload 1
putfield com/common/android/utils/download/DownloadModule/isNuseProxy Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSoftName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mSoftName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSoftUid(I)V
aload 0
iload 1
putfield com/common/android/utils/download/DownloadModule/mNotificationId I
return
.limit locals 2
.limit stack 2
.end method

.method public setSoftUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule/mSoftUrl Ljava/lang/String;
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
new com/common/android/utils/http/ComTrustManager
dup
invokespecial com/common/android/utils/http/ComTrustManager/<init>()V
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

.method public startChapterDownload()V
aload 0
invokespecial com/common/android/utils/download/DownloadModule/checkSdCard()Z
ifne L0
return
L0:
new java/lang/Thread
dup
new com/common/android/utils/download/DownloadModule$1
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$1/<init>(Lcom/common/android/utils/download/DownloadModule;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method public stopCurrent()V
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
ifnull L0
aload 0
getfield com/common/android/utils/download/DownloadModule/mDownLoadData Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/isChaterDownload()Z
ifeq L0
aload 0
iconst_1
putfield com/common/android/utils/download/DownloadModule/isStop Z
L0:
return
.limit locals 1
.limit stack 2
.end method
