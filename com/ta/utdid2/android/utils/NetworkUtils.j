.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/NetworkUtils
.super java/lang/Object

.field public static final 'DEFAULT_WIFI_ADDRESS' Ljava/lang/String; = "00-00-00-00-00-00"

.field private static final 'TAG' Ljava/lang/String; = "NetworkUtils"

.field private static final 'WEAK_NETWORK_GROUP' [I

.field public static final 'WIFI' Ljava/lang/String; = "Wi-Fi"

.field private static 'sConnManager' Landroid/net/ConnectivityManager;

.method static <clinit>()V
aconst_null
putstatic com/ta/utdid2/android/utils/NetworkUtils/sConnManager Landroid/net/ConnectivityManager;
iconst_4
newarray int
dup
iconst_0
iconst_4
iastore
dup
iconst_1
bipush 7
iastore
dup
iconst_2
iconst_2
iastore
dup
iconst_3
iconst_1
iastore
putstatic com/ta/utdid2/android/utils/NetworkUtils/WEAK_NETWORK_GROUP [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static _convertIntToIp(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 0
sipush 255
iand
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
bipush 8
ishr
sipush 255
iand
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
bipush 16
ishr
sipush 255
iand
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
bipush 24
ishr
sipush 255
iand
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
aload 0
ifnonnull L0
ldc "NetworkUtils"
ldc "context is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L0:
getstatic com/ta/utdid2/android/utils/NetworkUtils/sConnManager Landroid/net/ConnectivityManager;
ifnonnull L1
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
putstatic com/ta/utdid2/android/utils/NetworkUtils/sConnManager Landroid/net/ConnectivityManager;
L1:
getstatic com/ta/utdid2/android/utils/NetworkUtils/sConnManager Landroid/net/ConnectivityManager;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iconst_2
anewarray java/lang/String
astore 1
aload 1
iconst_0
ldc "Unknown"
aastore
aload 1
iconst_1
ldc "Unknown"
aastore
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "android.permission.ACCESS_NETWORK_STATE"
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/pm/PackageManager/checkPermission(Ljava/lang/String;Ljava/lang/String;)I
ifeq L3
L1:
aload 1
iconst_0
ldc "Unknown"
aastore
aload 1
areturn
L3:
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 0
L4:
aload 0
ifnonnull L5
aload 1
iconst_0
ldc "Unknown"
aastore
aload 1
areturn
L5:
aload 0
iconst_1
invokevirtual android/net/ConnectivityManager/getNetworkInfo(I)Landroid/net/NetworkInfo;
astore 2
L6:
aload 2
ifnull L9
L7:
aload 2
invokevirtual android/net/NetworkInfo/getState()Landroid/net/NetworkInfo$State;
getstatic android/net/NetworkInfo$State/CONNECTED Landroid/net/NetworkInfo$State;
if_acmpne L9
L8:
aload 1
iconst_0
ldc "Wi-Fi"
aastore
aload 1
areturn
L9:
aload 0
iconst_0
invokevirtual android/net/ConnectivityManager/getNetworkInfo(I)Landroid/net/NetworkInfo;
astore 0
L10:
aload 0
ifnull L15
L11:
aload 0
invokevirtual android/net/NetworkInfo/getState()Landroid/net/NetworkInfo$State;
getstatic android/net/NetworkInfo$State/CONNECTED Landroid/net/NetworkInfo$State;
if_acmpne L15
L12:
aload 1
iconst_0
ldc "2G/3G"
aastore
L13:
aload 1
iconst_1
aload 0
invokevirtual android/net/NetworkInfo/getSubtypeName()Ljava/lang/String;
aastore
L14:
aload 1
areturn
L2:
astore 0
L15:
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 0
aload 0
ifnull L1
aload 0
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
astore 1
aload 1
astore 0
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L2
ldc "00-00-00-00-00-00"
astore 0
L2:
aload 0
areturn
L1:
ldc "00-00-00-00-00-00"
areturn
L0:
ldc "00-00-00-00-00-00"
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
ifnull L5
L0:
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokevirtual android/net/wifi/WifiInfo/getIpAddress()I
invokestatic com/ta/utdid2/android/utils/NetworkUtils/_convertIntToIp(I)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L6:
aconst_null
areturn
L2:
astore 0
L5:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static isConnected(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
invokestatic com/ta/utdid2/android/utils/NetworkUtils/getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
astore 0
aload 0
ifnull L5
L0:
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokevirtual android/net/NetworkInfo/isConnected()Z
istore 1
L4:
iload 1
ireturn
L2:
astore 0
ldc "NetworkUtils"
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
iconst_0
ireturn
L5:
ldc "NetworkUtils"
ldc "connManager is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L6
.limit locals 2
.limit stack 2
.end method

.method public static isConnectedToWeakNetwork(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
iconst_0
istore 5
aload 0
invokestatic com/ta/utdid2/android/utils/NetworkUtils/getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
astore 0
aload 0
ifnull L8
L0:
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokevirtual android/net/NetworkInfo/getSubtype()I
istore 2
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L4
ldc "NetworkUtils"
new java/lang/StringBuilder
dup
ldc "subType:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": name:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/net/NetworkInfo/getSubtypeName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
getstatic com/ta/utdid2/android/utils/NetworkUtils/WEAK_NETWORK_GROUP [I
astore 0
aload 0
arraylength
istore 3
L5:
iconst_0
istore 1
goto L9
L6:
ldc "NetworkUtils"
ldc "networkInfo is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
iconst_0
ireturn
L2:
astore 0
ldc "NetworkUtils"
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
L8:
ldc "NetworkUtils"
ldc "connManager is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
L9:
iload 5
istore 4
iload 1
iload 3
if_icmpge L10
aload 0
iload 1
iaload
iload 2
if_icmpne L11
iconst_1
istore 4
L10:
iload 4
ireturn
L11:
iload 1
iconst_1
iadd
istore 1
goto L9
.limit locals 6
.limit stack 4
.end method

.method public static isWifi(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 2
iload 2
istore 1
aload 0
ifnull L3
L0:
aload 0
invokestatic com/ta/utdid2/android/utils/NetworkUtils/getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
iconst_0
aaload
ldc "Wi-Fi"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 3
L1:
iload 2
istore 1
iload 3
ifeq L3
iconst_1
istore 1
L3:
iload 1
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
