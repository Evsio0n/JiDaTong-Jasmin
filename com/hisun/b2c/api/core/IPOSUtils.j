.bytecode 50.0
.class public synchronized com/hisun/b2c/api/core/IPOSUtils
.super com/hisun/b2c/api/core/IPOSBase
.implements com/hisun/b2c/api/core/InstallReceiverListener
.inner class inner com/hisun/b2c/api/core/IPOSUtils$1
.inner class inner com/hisun/b2c/api/core/IPOSUtils$2
.inner class inner com/hisun/b2c/api/core/IPOSUtils$3
.inner class inner com/hisun/b2c/api/core/IPOSUtils$4
.inner class private AppInfo inner com/hisun/b2c/api/core/IPOSUtils$AppInfo outer com/hisun/b2c/api/core/IPOSUtils

.field public static final 'RESULT_SSOLOGIN_ERROR' Ljava/lang/String; = "8001"

.field public static final 'RESULT_SSOLOGIN_NOTAUTH' Ljava/lang/String; = "8002"

.field public static final 'RESULT_SSOLOGIN_SUCCESS' Ljava/lang/String; = "8000"

.field private static final 'TAG' Ljava/lang/String; = "IPOSUtils"

.field private 'appSign' Ljava/lang/String;

.field private 'binder' Lcom/hisun/b2c/api/core/IPOSBinder;

.field private 'cacheDir' Ljava/io/File;

.field private 'cachePath' Ljava/lang/String;

.field private 'checkVersionRunnable' Ljava/lang/Runnable;

.field private 'encodedIMEI' Ljava/lang/String;

.field private 'encodedIMSI' Ljava/lang/String;

.field private 'encodedMacAddress' Ljava/lang/String;

.field private 'handler' Landroid/os/Handler;

.field private 'installedVersion' Ljava/lang/String;

.field private 'iposIsInstalled' Z

.field private 'isCanceled' Z

.field private 'networkManager' Lcom/hisun/b2c/api/core/NetworkManager;

.field private 'orderForPay' Ljava/lang/String;

.field private 'pkgName' Ljava/lang/String;

.field private 'receiver' Lcom/hisun/b2c/api/core/InstallReceiver;

.field private 'retrieveApkSuccessFlag' Z

.field private 'ssoLoginRunnable' Ljava/lang/Runnable;

.field private 'version' Ljava/lang/String;

.field private 'whatForPay' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBase/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
aload 0
iconst_0
putfield com/hisun/b2c/api/core/IPOSUtils/isCanceled Z
aload 0
iconst_0
putfield com/hisun/b2c/api/core/IPOSUtils/retrieveApkSuccessFlag Z
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSUtils/encodedMacAddress Ljava/lang/String;
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSUtils/encodedIMSI Ljava/lang/String;
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSUtils/encodedIMEI Ljava/lang/String;
aload 0
new com/hisun/b2c/api/core/IPOSUtils$1
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils$1/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
putfield com/hisun/b2c/api/core/IPOSUtils/checkVersionRunnable Ljava/lang/Runnable;
aload 0
new com/hisun/b2c/api/core/IPOSUtils$2
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils$2/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
putfield com/hisun/b2c/api/core/IPOSUtils/ssoLoginRunnable Ljava/lang/Runnable;
aload 0
ldc com/hisun/b2c/api/core/IPOSUtils
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/tagName Ljava/lang/String;
aload 0
aload 0
putfield com/hisun/b2c/api/core/IPOSUtils/iposUtils Lcom/hisun/b2c/api/core/IPOSUtils;
aload 0
new com/hisun/b2c/api/core/IPOSBinder
dup
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBinder/<init>(Landroid/content/Context;)V
putfield com/hisun/b2c/api/core/IPOSUtils/binder Lcom/hisun/b2c/api/core/IPOSBinder;
new android/content/IntentFilter
dup
ldc "android.intent.action.PACKAGE_ADDED"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "android.intent.action.PACKAGE_REMOVED"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 2
ldc "package"
invokevirtual android/content/IntentFilter/addDataScheme(Ljava/lang/String;)V
aload 0
new com/hisun/b2c/api/core/InstallReceiver
dup
invokespecial com/hisun/b2c/api/core/InstallReceiver/<init>()V
putfield com/hisun/b2c/api/core/IPOSUtils/receiver Lcom/hisun/b2c/api/core/InstallReceiver;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/receiver Lcom/hisun/b2c/api/core/InstallReceiver;
aload 0
invokevirtual com/hisun/b2c/api/core/InstallReceiver/setIPOSUtilsListener(Lcom/hisun/b2c/api/core/InstallReceiverListener;)V
aload 1
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/receiver Lcom/hisun/b2c/api/core/InstallReceiver;
aload 2
invokevirtual android/content/Context/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$0(Lcom/hisun/b2c/api/core/IPOSUtils;)Z
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/isCanceled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/checkNewUpdate()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10(Lcom/hisun/b2c/api/core/IPOSUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
aload 2
aload 3
invokespecial com/hisun/b2c/api/core/IPOSUtils/getSSOResultStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$11(Lcom/hisun/b2c/api/core/IPOSUtils;Z)V
aload 0
iload 1
putfield com/hisun/b2c/api/core/IPOSUtils/isCanceled Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2(Lcom/hisun/b2c/api/core/IPOSUtils;)Lcom/hisun/b2c/api/core/NetworkManager;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/hisun/b2c/api/core/IPOSUtils;)Z
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/hisun/b2c/api/core/IPOSUtils;)V
.throws java/lang/Exception
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/iPay()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/getWifiMacAddress()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$7(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/util/Map;
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/dealSSOLogin()Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/hisun/b2c/api/core/IPOSUtils;)Landroid/os/Handler;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$9(Lcom/hisun/b2c/api/core/IPOSUtils;)I
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/whatForPay I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnull L0
aload 0
ifnull L0
new java/lang/StringBuilder
dup
ldc "<"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method private checkNewUpdate()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
ifnonnull L1
aload 0
new com/hisun/b2c/api/core/NetworkManager
dup
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokespecial com/hisun/b2c/api/core/NetworkManager/<init>(Landroid/content/Context;)V
putfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
L1:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/installedVersion Ljava/lang/String;
invokestatic com/hisun/b2c/api/util/IPOSHelper/getNewVerRequestUrl(Ljava/lang/String;)Ljava/lang/String;
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "update requestUrl="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
aload 1
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/installedVersion Ljava/lang/String;
ldc "3"
ldc "TEMP_UA01"
invokevirtual com/hisun/b2c/api/core/NetworkManager/sendAndWaitResponseByGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method private dealSSOLogin()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
ifnonnull L1
aload 0
new com/hisun/b2c/api/core/NetworkManager
dup
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokespecial com/hisun/b2c/api/core/NetworkManager/<init>(Landroid/content/Context;)V
putfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
L1:
invokestatic com/hisun/b2c/api/util/IPOSHelper/getSSOLoginRequestUrl()Ljava/lang/String;
astore 1
ldc "IPOSUtils"
new java/lang/StringBuilder
dup
ldc "bpascal ssoLogin url is:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/encodedMacAddress Ljava/lang/String;
astore 2
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/encodedIMSI Ljava/lang/String;
astore 3
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/encodedIMEI Ljava/lang/String;
astore 4
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/pkgName Ljava/lang/String;
astore 5
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/version Ljava/lang/String;
astore 6
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/appSign Ljava/lang/String;
astore 7
aload 2
aload 3
aload 4
ldc "801201"
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "APPNAME"
aastore
dup
iconst_1
ldc "APPVER"
aastore
dup
iconst_2
ldc "APPHASH"
aastore
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 5
aastore
dup
iconst_1
aload 6
aastore
dup
iconst_2
aload 7
aastore
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/buildMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/networkManager Lcom/hisun/b2c/api/core/NetworkManager;
aload 2
aload 1
invokevirtual com/hisun/b2c/api/core/NetworkManager/sendAndWaitResponseByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/hisun/b2c/api/core/IPOSUtils/paserSSOResp(Ljava/lang/String;)Ljava/util/Map;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 8
.limit stack 9
.end method

.method private getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 2
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
areturn
.limit locals 3
.limit stack 3
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
iconst_0
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
astore 4
L1:
iconst_0
istore 1
L3:
iload 1
aload 4
invokeinterface java/util/List/size()I 0
if_icmplt L5
L4:
goto L7
L5:
aload 4
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/content/pm/PackageInfo
astore 3
aload 3
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.hisun.ipos2"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
istore 2
L6:
iload 2
ifne L8
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 3
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getTag()Ljava/lang/String;
aload 3
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aconst_null
astore 3
L8:
aload 3
areturn
.limit locals 5
.limit stack 2
.end method

.method private getSSOResultStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
ldc "<RESULT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ifnull L0
aload 4
ldc "RESULT_CODE"
ldc "8000"
invokestatic com/hisun/b2c/api/core/IPOSUtils/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "SESSIONID"
aload 2
invokestatic com/hisun/b2c/api/core/IPOSUtils/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 4
ldc "RESULT_MESSAGE"
aload 3
invokestatic com/hisun/b2c/api/core/IPOSUtils/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "</RESULT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L0:
aload 1
ifnull L2
aload 4
ldc "RESULT_CODE"
aload 1
invokestatic com/hisun/b2c/api/core/IPOSUtils/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 4
ldc "RESULT_CODE"
ldc "8001"
invokestatic com/hisun/b2c/api/core/IPOSUtils/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
.limit locals 5
.limit stack 3
.end method

.method private getSignInfo(Ljava/lang/String;)Lcom/hisun/b2c/api/core/IPOSUtils$AppInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/hisun/b2c/api/core/IPOSUtils$AppInfo
dup
aload 0
aconst_null
invokespecial com/hisun/b2c/api/core/IPOSUtils$AppInfo/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;Lcom/hisun/b2c/api/core/IPOSUtils$AppInfo;)V
astore 2
aload 2
aload 1
invokevirtual com/hisun/b2c/api/core/IPOSUtils$AppInfo/setAppName(Ljava/lang/String;)V
L0:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 1
aload 2
new java/lang/StringBuilder
dup
aload 1
getfield android/content/pm/PackageInfo/versionCode I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/hisun/b2c/api/core/IPOSUtils$AppInfo/setVersion(Ljava/lang/String;)V
aload 1
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
astore 1
L1:
aload 1
ifnull L4
aload 1
iconst_0
aaload
ifnull L4
L3:
aload 2
aload 1
iconst_0
aaload
invokevirtual android/content/pm/Signature/toByteArray()[B
invokestatic com/hisun/b2c/api/util/MD5Util/sha1([B)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/core/IPOSUtils$AppInfo/setAppSign(Ljava/lang/String;)V
L4:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private getWifiMacAddress()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/InterruptedException from L9 to L10 using L11
.catch java/lang/Exception from L12 to L13 using L14
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
astore 2
aload 2
ifnonnull L15
L16:
return
L15:
aload 2
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
astore 3
aload 3
ifnonnull L17
aload 2
invokevirtual android/net/wifi/WifiManager/isWifiEnabled()Z
ifne L17
aload 2
iconst_1
invokevirtual android/net/wifi/WifiManager/setWifiEnabled(Z)Z
pop
iconst_0
istore 1
L18:
iload 1
bipush 20
if_icmplt L19
L20:
aload 2
iconst_0
invokevirtual android/net/wifi/WifiManager/setWifiEnabled(Z)Z
pop
L21:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 2
aload 2
ifnull L16
aload 2
invokevirtual android/telephony/TelephonyManager/getSubscriberId()Ljava/lang/String;
astore 3
aload 3
ifnull L1
L0:
aload 0
aload 3
invokestatic com/hisun/b2c/api/util/MD5Util/sha1(Ljava/lang/String;)Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/encodedIMSI Ljava/lang/String;
L1:
aload 2
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 2
aload 2
ifnull L16
L3:
aload 0
aload 2
putfield com/hisun/b2c/api/core/IPOSUtils/encodedIMEI Ljava/lang/String;
L4:
return
L5:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
L19:
aload 2
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
astore 3
aload 3
ifnull L9
ldc "IPOSUtils"
new java/lang/StringBuilder
dup
ldc "bpascal MAC:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aload 0
aload 3
putfield com/hisun/b2c/api/core/IPOSUtils/encodedMacAddress Ljava/lang/String;
L7:
goto L20
L8:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L20
L9:
ldc2_w 500L
invokestatic java/lang/Thread/sleep(J)V
L10:
iload 1
iconst_1
iadd
istore 1
goto L18
L11:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L10
L17:
aload 3
ifnull L21
L12:
aload 0
aload 3
putfield com/hisun/b2c/api/core/IPOSUtils/encodedMacAddress Ljava/lang/String;
L13:
goto L21
L14:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L21
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private iPay()V
.throws java/lang/Exception
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/orderForPay Ljava/lang/String;
ifnull L0
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
ifne L1
L0:
return
L1:
ldc "IPOSBinder"
ldc "bpascal goto bindpay"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/binder Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/orderForPay Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/whatForPay I
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/bindAndPay(Ljava/lang/String;ILandroid/os/Handler;)V
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSUtils/orderForPay Ljava/lang/String;
return
.limit locals 1
.limit stack 4
.end method

.method private init()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/getPackageInfo()Landroid/content/pm/PackageInfo;
astore 1
aload 0
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
putfield com/hisun/b2c/api/core/IPOSUtils/cacheDir Ljava/io/File;
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cacheDir Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/temp.apk"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
ifnull L1
new java/io/File
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifeq L1
aload 2
invokevirtual java/io/File/delete()Z
pop
L1:
aload 1
ifnonnull L7
L3:
aload 0
iconst_0
putfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
aload 0
aload 0
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getIPosReleaseName()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
invokespecial com/hisun/b2c/api/core/IPOSUtils/retrieveApkFromAssets(Ljava/lang/String;Ljava/lang/String;)Z
putfield com/hisun/b2c/api/core/IPOSUtils/retrieveApkSuccessFlag Z
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/retrieveApkSuccessFlag Z
ifne L5
aload 0
ldc "0.0.0.1"
putfield com/hisun/b2c/api/core/IPOSUtils/installedVersion Ljava/lang/String;
L4:
aload 0
monitorexit
return
L5:
aload 0
new java/lang/StringBuilder
dup
aload 0
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/cachePath Ljava/lang/String;
invokespecial com/hisun/b2c/api/core/IPOSUtils/getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/installedVersion Ljava/lang/String;
L6:
goto L4
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L7:
aload 0
iconst_1
putfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
aload 0
new java/lang/StringBuilder
dup
aload 1
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/installedVersion Ljava/lang/String;
L8:
goto L4
.limit locals 3
.limit stack 6
.end method

.method private parseSignature([B)Ljava/lang/String;
.catch java/security/cert/CertificateException from L0 to L1 using L2
L0:
ldc "X.509"
invokestatic java/security/cert/CertificateFactory/getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
new java/io/ByteArrayInputStream
dup
aload 1
invokespecial java/io/ByteArrayInputStream/<init>([B)V
invokevirtual java/security/cert/CertificateFactory/generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
checkcast java/security/cert/X509Certificate
astore 1
aload 1
invokevirtual java/security/cert/X509Certificate/getPublicKey()Ljava/security/PublicKey;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
pop
aload 1
invokevirtual java/security/cert/X509Certificate/getSerialNumber()Ljava/math/BigInteger;
invokevirtual java/math/BigInteger/toString()Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/security/cert/CertificateException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method private paserSSOResp(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
aload 0
aload 1
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getXmlPullParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
iconst_2
aconst_null
ldc "ROOT"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
iconst_2
aconst_null
ldc "HEAD"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
L1:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
iconst_2
if_icmpeq L5
aload 1
iconst_3
aconst_null
ldc "HEAD"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
iconst_2
aconst_null
ldc "BODY"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
L3:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
iconst_2
if_icmpeq L12
aload 1
iconst_3
aconst_null
ldc "BODY"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
iconst_3
aconst_null
ldc "ROOT"
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
iconst_1
aconst_null
aconst_null
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
L4:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
L5:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L6:
aload 3
ifnull L10
L7:
aload 3
ldc "RSPCD"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
aload 2
ldc "RSPCD"
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L8:
aload 1
iconst_3
aconst_null
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
L9:
goto L1
L10:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
pop
L11:
goto L8
L12:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L13:
aload 3
ifnull L21
L14:
aload 3
ldc "ERRORINFO"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L21
aload 2
ldc "ERRORINFO"
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L15:
aload 1
iconst_3
aconst_null
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/require(ILjava/lang/String;Ljava/lang/String;)V 3
L16:
goto L3
L21:
aload 3
ifnull L19
L17:
aload 3
ldc "SESSIONID"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L19
aload 2
ldc "SESSIONID"
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L18:
goto L15
L19:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
pop
L20:
goto L15
.limit locals 4
.limit stack 4
.end method

.method private retrieveApkFromAssets(Ljava/lang/String;Ljava/lang/String;)Z
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
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L2
.catch all from L21 to L22 using L3
.catch all from L23 to L24 using L3
.catch java/io/IOException from L25 to L26 using L27
.catch java/io/IOException from L28 to L29 using L30
aconst_null
astore 8
aconst_null
astore 7
L0:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 1
L1:
aload 1
astore 7
aload 1
astore 8
L4:
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
L5:
aload 1
astore 7
aload 1
astore 8
L6:
aload 2
invokevirtual java/io/File/createNewFile()Z
pop
L7:
aload 1
astore 7
aload 1
astore 8
L8:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L9:
aload 1
astore 7
aload 1
astore 8
L10:
sipush 1024
newarray byte
astore 9
L11:
iconst_0
istore 3
L31:
aload 1
astore 7
aload 1
astore 8
L12:
aload 1
aload 9
invokevirtual java/io/InputStream/read([B)I
istore 4
L13:
iload 4
ifgt L32
aload 1
astore 7
aload 1
astore 8
L14:
aload 2
invokevirtual java/io/FileOutputStream/close()V
L15:
aload 1
astore 7
aload 1
astore 8
L16:
aload 1
invokevirtual java/io/InputStream/close()V
L17:
iconst_1
istore 6
iload 6
istore 5
aload 1
ifnull L33
L18:
aload 1
invokevirtual java/io/InputStream/close()V
L19:
iload 6
istore 5
L33:
iload 5
ireturn
L32:
aload 1
astore 7
aload 1
astore 8
L21:
aload 2
aload 9
invokevirtual java/io/FileOutputStream/write([B)V
L22:
iload 3
iload 4
iadd
istore 3
goto L31
L2:
astore 1
aload 7
astore 8
L23:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L24:
iconst_0
istore 5
aload 7
ifnull L33
L25:
aload 7
invokevirtual java/io/InputStream/close()V
L26:
iconst_0
ireturn
L27:
astore 1
iconst_0
ireturn
L3:
astore 1
aload 8
ifnull L29
L28:
aload 8
invokevirtual java/io/InputStream/close()V
L29:
aload 1
athrow
L30:
astore 2
goto L29
L20:
astore 1
iconst_1
ireturn
.limit locals 10
.limit stack 3
.end method

.method private ssoLogin(Ljava/lang/String;ILandroid/os/Handler;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iload 2
putfield com/hisun/b2c/api/core/IPOSUtils/whatForPay I
aload 0
aload 3
putfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSUtils/getSignInfo(Ljava/lang/String;)Lcom/hisun/b2c/api/core/IPOSUtils$AppInfo;
astore 3
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils/pkgName Ljava/lang/String;
aload 0
aload 3
invokevirtual com/hisun/b2c/api/core/IPOSUtils$AppInfo/getVersion()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/version Ljava/lang/String;
aload 0
aload 3
invokevirtual com/hisun/b2c/api/core/IPOSUtils$AppInfo/getAppSign()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSUtils/appSign Ljava/lang/String;
aload 0
sipush 404
iconst_3
anewarray java/lang/Object
dup
iconst_0
ldc "\u63d0\u793a"
aastore
dup
iconst_1
ldc "\u6b63\u5728\u8fdb\u884c\u5355\u70b9\u767b\u5f55,\u8bf7\u8010\u5fc3\u7b49\u5f85..."
aastore
dup
iconst_2
new com/hisun/b2c/api/core/IPOSUtils$4
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils$4/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aastore
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(ILjava/lang/Object;)V
new java/lang/Thread
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/ssoLoginRunnable Ljava/lang/Runnable;
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
astore 1
aload 1
iconst_1
invokevirtual java/lang/Thread/setDaemon(Z)V
aload 1
iconst_5
invokevirtual java/lang/Thread/setPriority(I)V
aload 1
invokevirtual java/lang/Thread/start()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 8
.end method

.method public cancel()V
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
ldc_w 619068
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected getTag()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/tagName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getXmlPullParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
astore 2
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 3
L1:
aload 1
ifnull L4
aload 3
astore 2
L3:
aload 3
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/Reader;)V 1
L4:
aload 3
areturn
L2:
astore 1
ldc "IPOSUtils"
new java/lang/StringBuilder
dup
ldc "\u9519\u8bef\uff1a\u89e3\u6790xml\u9519\u8bef\uff0cException="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public iPay(Ljava/lang/String;ILandroid/os/Handler;)V
.throws java/lang/Exception
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/init()V
aload 0
aload 3
putfield com/hisun/b2c/api/core/IPOSUtils/handler Landroid/os/Handler;
aload 0
iload 2
putfield com/hisun/b2c/api/core/IPOSUtils/whatForPay I
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils/orderForPay Ljava/lang/String;
aload 0
sipush 404
iconst_3
anewarray java/lang/Object
dup
iconst_0
ldc "\u63d0\u793a"
aastore
dup
iconst_1
ldc "\u6b63\u5728\u521d\u59cb\u5316\u5b89\u5168\u652f\u4ed8\u7ec4\u4ef6, \u5982\u679c\u662f\u7b2c\u4e00\u6b21\u4f7f\u7528,\u8be5\u8fc7\u7a0b\u53ef\u80fd\u6bd4\u8f83\u957f,\u8bf7\u8010\u5fc3\u7b49\u5f85..."
aastore
dup
iconst_2
new com/hisun/b2c/api/core/IPOSUtils$3
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils$3/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aastore
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(ILjava/lang/Object;)V
new java/lang/Thread
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/checkVersionRunnable Ljava/lang/Runnable;
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
astore 1
aload 1
iconst_1
invokevirtual java/lang/Thread/setDaemon(Z)V
aload 1
iconst_5
invokevirtual java/lang/Thread/setPriority(I)V
aload 1
invokevirtual java/lang/Thread/start()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 8
.end method

.method public isAPKFileExist()Z
new java/io/File
dup
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getIPosReleaseName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 1
.limit stack 3
.end method

.method public notifyInstallState(Z)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iload 1
putfield com/hisun/b2c/api/core/IPOSUtils/iposIsInstalled Z
iload 1
ifeq L1
L0:
aload 0
invokespecial com/hisun/b2c/api/core/IPOSUtils/iPay()V
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 2
.end method

.method public onDestroy()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/receiver Lcom/hisun/b2c/api/core/InstallReceiver;
invokevirtual android/content/Context/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L1:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/binder Lcom/hisun/b2c/api/core/IPOSBinder;
ifnull L3
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils/binder Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/onDestroy()V
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSUtils/binder Lcom/hisun/b2c/api/core/IPOSBinder;
L3:
return
L2:
astore 1
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getTag()Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
.limit locals 2
.limit stack 2
.end method
