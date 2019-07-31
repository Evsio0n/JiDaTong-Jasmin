.bytecode 50.0
.class public synchronized com/bestpay/util/DeviceInfo
.super java/lang/Object

.field public static final 'TAG' Ljava/lang/String; = "DeviceInfo"

.field public 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getBaseVersion()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 1
L0:
ldc "android.os.SystemProperties"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 2
aload 2
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 3
aload 2
ldc "get"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
dup
iconst_1
ldc java/lang/String
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 3
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "gsm.version.baseband"
aastore
dup
iconst_1
ldc "no message"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L1:
aload 2
astore 1
L3:
aload 1
checkcast java/lang/String
areturn
L2:
astore 2
goto L3
.limit locals 4
.limit stack 6
.end method

.method public getClientVersion()Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 2
aconst_null
astore 1
L0:
aload 2
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 2
L1:
aload 2
astore 1
L3:
aload 1
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
areturn
L2:
astore 2
aload 2
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
goto L3
.limit locals 3
.limit stack 3
.end method

.method public getDeviceModel()Ljava/lang/String;
getstatic android/os/Build/MODEL Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeviceName()Ljava/lang/String;
getstatic android/os/Build/USER Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIMEI()Ljava/lang/String;
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getIMSI()Ljava/lang/String;
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getSubscriberId()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getKernelVersion()Ljava/lang/String;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/io/IOException from L7 to L8 using L9
.catch java/lang/IndexOutOfBoundsException from L10 to L11 using L12
.catch java/io/IOException from L13 to L14 using L5
.catch all from L13 to L14 using L6
.catch all from L15 to L16 using L6
.catch java/io/IOException from L16 to L17 using L18
.catch java/io/IOException from L19 to L20 using L21
ldc ""
astore 4
L0:
new java/io/FileInputStream
dup
ldc "/proc/version"
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
astore 5
L1:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 5
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
sipush 8192
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 6
ldc ""
astore 2
L3:
aload 6
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L4:
aload 3
ifnonnull L13
L7:
aload 6
invokevirtual java/io/BufferedReader/close()V
aload 5
invokevirtual java/io/InputStream/close()V
L8:
aload 4
astore 3
aload 2
ldc ""
if_acmpeq L11
L10:
aload 2
ldc "version "
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 2
ldc "version "
invokevirtual java/lang/String/length()I
iload 1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 2
aload 2
iconst_0
aload 2
ldc " "
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L11:
aload 3
areturn
L2:
astore 2
aload 2
invokevirtual java/io/FileNotFoundException/printStackTrace()V
ldc ""
areturn
L13:
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L14:
aload 3
astore 2
goto L3
L5:
astore 3
L15:
aload 3
invokevirtual java/io/IOException/printStackTrace()V
L16:
aload 6
invokevirtual java/io/BufferedReader/close()V
aload 5
invokevirtual java/io/InputStream/close()V
L17:
goto L8
L18:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L8
L6:
astore 2
L19:
aload 6
invokevirtual java/io/BufferedReader/close()V
aload 5
invokevirtual java/io/InputStream/close()V
L20:
aload 2
athrow
L21:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L20
L9:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L8
L12:
astore 2
aload 2
invokevirtual java/lang/IndexOutOfBoundsException/printStackTrace()V
aload 4
astore 3
goto L11
.limit locals 7
.limit stack 5
.end method

.method public getLocalIpAddress()Ljava/lang/String;
.catch java/net/SocketException from L0 to L1 using L2
.catch java/net/SocketException from L1 to L3 using L2
.catch java/net/SocketException from L4 to L5 using L2
.catch java/net/SocketException from L5 to L6 using L2
L0:
invokestatic java/net/NetworkInterface/getNetworkInterfaces()Ljava/util/Enumeration;
astore 1
L1:
aload 1
invokeinterface java/util/Enumeration/hasMoreElements()Z 0
ifne L4
L3:
goto L7
L4:
aload 1
invokeinterface java/util/Enumeration/nextElement()Ljava/lang/Object; 0
checkcast java/net/NetworkInterface
invokevirtual java/net/NetworkInterface/getInetAddresses()Ljava/util/Enumeration;
astore 2
L5:
aload 2
invokeinterface java/util/Enumeration/hasMoreElements()Z 0
ifeq L1
aload 2
invokeinterface java/util/Enumeration/nextElement()Ljava/lang/Object; 0
checkcast java/net/InetAddress
astore 3
aload 3
invokevirtual java/net/InetAddress/isLoopbackAddress()Z
ifne L5
aload 3
invokevirtual java/net/InetAddress/getHostAddress()Ljava/lang/String;
invokestatic org/apache/http/conn/util/InetAddressUtils/isIPv4Address(Ljava/lang/String;)Z
ifeq L5
aload 3
invokevirtual java/net/InetAddress/getHostAddress()Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
astore 1
L6:
aload 1
areturn
L2:
astore 1
L7:
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public getLocationWithGps()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
ldc "location"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/location/LocationManager
ldc "gps"
invokevirtual android/location/LocationManager/getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
astore 5
new android/location/Geocoder
dup
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokespecial android/location/Geocoder/<init>(Landroid/content/Context;Ljava/util/Locale;)V
astore 6
dconst_0
dstore 1
dconst_0
dstore 3
aload 5
ifnull L3
aload 5
invokevirtual android/location/Location/getLatitude()D
dstore 1
aload 5
invokevirtual android/location/Location/getLongitude()D
dstore 3
L3:
aconst_null
astore 5
L0:
aload 6
dload 1
dload 3
iconst_1
invokevirtual android/location/Geocoder/getFromLocation(DDI)Ljava/util/List;
astore 6
L1:
aload 6
astore 5
L4:
aconst_null
astore 7
aload 7
astore 6
aload 5
ifnull L5
aload 7
astore 6
aload 5
invokeinterface java/util/List/size()I 0
ifle L5
aload 5
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/location/Address
astore 5
aload 5
invokevirtual android/location/Address/getCountryName()Ljava/lang/String;
pop
aload 5
invokevirtual android/location/Address/getLocality()Ljava/lang/String;
astore 6
aload 5
invokevirtual android/location/Address/getCountryCode()Ljava/lang/String;
pop
L5:
aload 6
areturn
L2:
astore 6
goto L4
.limit locals 8
.limit stack 6
.end method

.method public getOsVersion()Ljava/lang/String;
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPhoneIp()Ljava/lang/String;
aconst_null
astore 2
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
astore 1
aload 1
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
ifnull L2
aload 1
invokevirtual android/net/wifi/WifiInfo/getIpAddress()I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
astore 2
L2:
aload 2
areturn
L0:
aload 1
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public getPhoneMac()Ljava/lang/String;
aconst_null
astore 2
aload 0
getfield com/bestpay/util/DeviceInfo/mContext Landroid/content/Context;
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
astore 1
aload 1
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
ifnull L2
aload 1
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
astore 2
L2:
aload 2
areturn
L0:
aload 1
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method
