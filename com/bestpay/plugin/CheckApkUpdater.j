.bytecode 50.0
.class public synchronized com/bestpay/plugin/CheckApkUpdater
.super java/lang/Object
.inner class inner com/bestpay/plugin/CheckApkUpdater$1
.inner class inner com/bestpay/plugin/CheckApkUpdater$2

.field public static final 'MESSAGE_SHOW_UPDATE_DIALOG' I = 1


.field public static 'path' Ljava/lang/String;

.field public final 'MESSAGE_CANCEL_PROGRESS_DIALOG' I

.field public final 'MESSAGE_INTERNET_EXCEPTION' I

.field public final 'MESSAGE_SHOW_DOWNLOAD_PROGRESS' I

.field public final 'MESSAGE_SHOW_UPDATE_DOWLOAD' I

.field public 'b' Z

.field public 'clientVersion' Ljava/lang/String;

.field public 'context' Landroid/content/Context;

.field public 'downedSize' I

.field public final 'downloadURL' Ljava/lang/String;

.field public 'entity' Lorg/apache/http/client/entity/UrlEncodedFormEntity;

.field private 'forceupgrade' Ljava/lang/String;

.field 'handler' Landroid/os/Handler;

.field public 'imei' Ljava/lang/String;

.field public 'imsi' Ljava/lang/String;

.field private 'isoptional' Ljava/lang/String;

.field 'mTm' Landroid/telephony/TelephonyManager;

.field public 'mtyb' Ljava/lang/String;

.field public 'mtype' Ljava/lang/String;

.field public 'numer' Ljava/lang/String;

.field public 'progressDialog' Landroid/app/ProgressDialog;

.field public 'release' Ljava/lang/String;

.field public 'serverVersion' Ljava/lang/String;

.field public 'totalSize' I

.field public 'url' Ljava/lang/String;

.method static <clinit>()V
ldc "/sdcard/bestpayplugin/"
putstatic com/bestpay/plugin/CheckApkUpdater/path Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "https://client.bestpay.com.cn/MEPF_INF2/httppost/"
putfield com/bestpay/plugin/CheckApkUpdater/downloadURL Ljava/lang/String;
aload 0
iconst_2
putfield com/bestpay/plugin/CheckApkUpdater/MESSAGE_SHOW_DOWNLOAD_PROGRESS I
aload 0
iconst_3
putfield com/bestpay/plugin/CheckApkUpdater/MESSAGE_CANCEL_PROGRESS_DIALOG I
aload 0
iconst_4
putfield com/bestpay/plugin/CheckApkUpdater/MESSAGE_INTERNET_EXCEPTION I
aload 0
iconst_0
putfield com/bestpay/plugin/CheckApkUpdater/totalSize I
aload 0
iconst_0
putfield com/bestpay/plugin/CheckApkUpdater/downedSize I
aload 0
iconst_5
putfield com/bestpay/plugin/CheckApkUpdater/MESSAGE_SHOW_UPDATE_DOWLOAD I
aload 0
new com/bestpay/plugin/CheckApkUpdater$1
dup
aload 0
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial com/bestpay/plugin/CheckApkUpdater$1/<init>(Lcom/bestpay/plugin/CheckApkUpdater;Landroid/os/Looper;)V
putfield com/bestpay/plugin/CheckApkUpdater/handler Landroid/os/Handler;
aload 0
aconst_null
putfield com/bestpay/plugin/CheckApkUpdater/mTm Landroid/telephony/TelephonyManager;
aload 0
aload 1
putfield com/bestpay/plugin/CheckApkUpdater/context Landroid/content/Context;
return
.limit locals 2
.limit stack 5
.end method

.method public static install(Ljava/io/File;Landroid/content/Context;)V
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 0
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
ldc "application/vnd.android.package-archive"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public alertProgressDialog()V
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/context Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
ldc "\u4e0b\u8f7d\u8fdb\u5ea6"
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/totalSize I
invokevirtual android/app/ProgressDialog/setMax(I)V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setProgressStyle(I)V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
astore 1
aload 1
new com/bestpay/plugin/CheckApkUpdater$2
dup
aload 0
aload 1
invokespecial com/bestpay/plugin/CheckApkUpdater$2/<init>(Lcom/bestpay/plugin/CheckApkUpdater;Ljava/util/Timer;)V
ldc2_w 200L
ldc2_w 200L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
.limit locals 2
.limit stack 6
.end method

.method public apkUpdater(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)Z
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/io/IOException from L7 to L8 using L9
.catch java/io/IOException from L8 to L10 using L9
.catch java/io/IOException from L11 to L12 using L13
.catch java/io/IOException from L12 to L14 using L13
.catch java/lang/Exception from L15 to L16 using L5
.catch all from L15 to L16 using L6
.catch all from L17 to L18 using L6
.catch java/io/IOException from L19 to L20 using L21
.catch java/io/IOException from L20 to L22 using L21
.catch java/io/IOException from L23 to L24 using L25
.catch java/io/IOException from L24 to L26 using L25
aload 0
aload 1
invokevirtual com/bestpay/plugin/CheckApkUpdater/getInfo(Landroid/content/Context;)V
getstatic org/apache/http/conn/ssl/SSLSocketFactory/ALLOW_ALL_HOSTNAME_VERIFIER Lorg/apache/http/conn/ssl/X509HostnameVerifier;
astore 4
new org/apache/http/conn/scheme/SchemeRegistry
dup
invokespecial org/apache/http/conn/scheme/SchemeRegistry/<init>()V
astore 3
invokestatic org/apache/http/conn/ssl/SSLSocketFactory/getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
astore 1
aload 1
aload 4
checkcast org/apache/http/conn/ssl/X509HostnameVerifier
invokevirtual org/apache/http/conn/ssl/SSLSocketFactory/setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "https"
aload 1
sipush 443
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
aload 3
new org/apache/http/conn/scheme/Scheme
dup
ldc "http"
invokestatic org/apache/http/conn/scheme/PlainSocketFactory/getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
bipush 80
invokespecial org/apache/http/conn/scheme/Scheme/<init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invokevirtual org/apache/http/conn/scheme/SchemeRegistry/register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
pop
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
astore 1
new org/apache/http/impl/client/DefaultHttpClient
dup
new org/apache/http/impl/conn/SingleClientConnManager
dup
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getParams()Lorg/apache/http/params/HttpParams;
aload 3
invokespecial org/apache/http/impl/conn/SingleClientConnManager/<init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getParams()Lorg/apache/http/params/HttpParams;
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
astore 3
aload 4
invokestatic javax/net/ssl/HttpsURLConnection/setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
new java/text/SimpleDateFormat
dup
ldc "yyyyMMddhhmmss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
pop
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "method"
ldc "clientupdateAndApplist"
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "CHANNELID"
ldc "000000"
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "TYPE"
ldc "08"
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "IMSI"
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/imsi Ljava/lang/String;
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "CURRENTVERSION"
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "SYSTEM"
ldc "android"
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "SYSVERSION"
ldc "4.3"
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "PHONE"
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/mtype Ljava/lang/String;
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "PRODUCTNO"
ldc ""
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "WIDGETVER"
ldc ""
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "MAXRECORD"
ldc ""
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "STARTRECORD"
ldc ""
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
new org/apache/http/message/BasicNameValuePair
dup
ldc "LOCATION"
ldc ""
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 0
new org/apache/http/client/entity/UrlEncodedFormEntity
dup
aload 4
ldc "UTF-8"
invokespecial org/apache/http/client/entity/UrlEncodedFormEntity/<init>(Ljava/util/List;Ljava/lang/String;)V
putfield com/bestpay/plugin/CheckApkUpdater/entity Lorg/apache/http/client/entity/UrlEncodedFormEntity;
ldc "geek"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/bestpay/util/LoggerHelper/d(Ljava/lang/String;Ljava/lang/String;)V
L1:
new org/apache/http/client/methods/HttpPost
dup
ldc "https://client.bestpay.com.cn/MEPF_INF2/httppost/"
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
astore 4
aload 4
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/entity Lorg/apache/http/client/entity/UrlEncodedFormEntity;
invokevirtual org/apache/http/client/methods/HttpPost/setEntity(Lorg/apache/http/HttpEntity;)V
L3:
aload 3
aload 4
invokevirtual org/apache/http/impl/client/DefaultHttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
astore 3
aload 3
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L4
new org/json/JSONObject
dup
aload 3
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokestatic org/apache/http/util/EntityUtils/toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
ldc "returns:"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
ldc "000000"
aload 3
ldc "ERRORCODE"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
aload 3
ldc "URL"
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifne L4
aload 3
ldc "VERSION"
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifne L4
aload 0
aload 3
ldc "ISOPTIONAL"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/isoptional Ljava/lang/String;
aload 0
aload 3
ldc "FORCEUPGRADE"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/forceupgrade Ljava/lang/String;
aload 0
aload 3
ldc "URL"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/url Ljava/lang/String;
aload 0
aload 3
ldc "VERSION"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/serverVersion Ljava/lang/String;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/serverVersion Ljava/lang/String;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifle L27
aload 2
invokeinterface com/bestpay/plugin/CallBack/execute()Z 0
pop
L4:
iconst_0
ifeq L8
L7:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L8:
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
L10:
iconst_1
ireturn
L2:
astore 4
aload 4
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L1
L27:
iconst_0
ifeq L12
L11:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L12:
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
L14:
iconst_0
ireturn
L15:
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/handler Landroid/os/Handler;
iconst_4
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L16:
goto L4
L5:
astore 2
L17:
aload 2
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
pop
L18:
iconst_0
ifeq L20
L19:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L20:
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
L22:
goto L10
L21:
astore 1
goto L10
L6:
astore 2
iconst_0
ifeq L24
L23:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L24:
aload 1
invokevirtual org/apache/http/impl/client/DefaultHttpClient/getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
invokeinterface org/apache/http/conn/ClientConnectionManager/shutdown()V 0
L26:
aload 2
athrow
L9:
astore 1
goto L10
L25:
astore 1
goto L26
L13:
astore 1
goto L14
.limit locals 5
.limit stack 6
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.throws org/apache/http/client/ClientProtocolException
.throws java/io/IOException
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
.catch all from L20 to L21 using L22
.catch all from L21 to L23 using L22
.catch all from L23 to L24 using L25
.catch all from L24 to L26 using L25
.catch all from L27 to L28 using L25
.catch all from L29 to L30 using L25
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 9
aconst_null
astore 6
aconst_null
astore 10
aload 9
astore 5
L0:
new java/lang/StringBuffer
dup
aload 1
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 9
astore 5
L3:
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
new org/apache/http/client/methods/HttpGet
dup
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/lang/String;)V
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 11
L4:
aload 9
astore 5
L5:
aload 0
aload 11
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContentLength()J 0
l2i
putfield com/bestpay/plugin/CheckApkUpdater/totalSize I
L6:
aload 9
astore 5
L7:
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/handler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L8:
aload 10
astore 1
aload 9
astore 5
L9:
aload 11
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L31
L10:
aload 9
astore 5
L11:
aload 11
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 1
L12:
aload 1
astore 5
L13:
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
L14:
aload 1
astore 5
L15:
aload 6
invokevirtual java/io/File/exists()Z
ifne L18
L16:
aload 1
astore 5
L17:
aload 6
invokevirtual java/io/File/mkdirs()Z
pop
L18:
aload 1
astore 5
L19:
new java/io/File
dup
aload 2
aload 3
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 3
L20:
aload 3
invokevirtual java/io/File/exists()Z
ifne L21
aload 3
invokevirtual java/io/File/createNewFile()Z
pop
L21:
new java/io/FileOutputStream
dup
aload 3
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L23:
sipush 1024
newarray byte
astore 5
L24:
aload 1
aload 5
invokevirtual java/io/InputStream/read([B)I
istore 4
L26:
iload 4
iconst_m1
if_icmpne L29
L27:
aload 3
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/context Landroid/content/Context;
invokestatic com/bestpay/plugin/CheckApkUpdater/install(Ljava/io/File;Landroid/content/Context;)V
L28:
aload 2
astore 7
aload 1
astore 6
aload 3
astore 1
L31:
aload 7
ifnull L32
aload 7
invokevirtual java/io/FileOutputStream/close()V
L32:
aload 6
ifnull L33
aload 6
invokevirtual java/io/InputStream/close()V
L33:
aload 1
areturn
L29:
aload 2
aload 5
iconst_0
iload 4
invokevirtual java/io/FileOutputStream/write([BII)V
aload 0
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/downedSize I
iload 4
iadd
putfield com/bestpay/plugin/CheckApkUpdater/downedSize I
L30:
goto L24
L25:
astore 5
aload 2
astore 3
aload 5
astore 2
L34:
aload 3
ifnull L35
aload 3
invokevirtual java/io/FileOutputStream/close()V
L35:
aload 1
ifnull L36
aload 1
invokevirtual java/io/InputStream/close()V
L36:
aload 2
athrow
L2:
astore 2
aload 5
astore 1
aload 8
astore 3
goto L34
L22:
astore 2
aload 8
astore 3
goto L34
.limit locals 12
.limit stack 4
.end method

.method public downloadApk()V
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
L0:
aload 0
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/url Ljava/lang/String;
getstatic com/bestpay/plugin/CheckApkUpdater/path Ljava/lang/String;
ldc "bestpayplugin.apk"
invokevirtual com/bestpay/plugin/CheckApkUpdater/download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
pop
L1:
return
L2:
astore 1
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 1
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
return
L3:
astore 1
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method

.method public getInfo(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
L0:
aload 0
aload 1
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
putfield com/bestpay/plugin/CheckApkUpdater/mTm Landroid/telephony/TelephonyManager;
aload 0
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/mTm Landroid/telephony/TelephonyManager;
invokevirtual android/telephony/TelephonyManager/getSubscriberId()Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/imsi Ljava/lang/String;
L1:
aload 0
getstatic android/os/Build/MODEL Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/mtype Ljava/lang/String;
aload 0
getstatic android/os/Build/BRAND Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/mtyb Ljava/lang/String;
getstatic android/os/Build/MODEL Ljava/lang/String;
astore 2
aload 0
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/release Ljava/lang/String;
L3:
aload 0
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.chinatelecom.bestpayplugin"
invokestatic com/bestpay/util/PackageUtils/getPackageVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
ifnonnull L4
aload 0
ldc "0.0.0"
putfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
L4:
return
L2:
astore 2
aload 0
ldc ""
putfield com/bestpay/plugin/CheckApkUpdater/imsi Ljava/lang/String;
goto L1
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
ldc "0.0.0"
putfield com/bestpay/plugin/CheckApkUpdater/clientVersion Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method
