.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/deviceinfo/d
.super java/lang/Object

.field private static 'a' Lcom/alipay/security/mobile/module/deviceinfo/d;

.method static <clinit>()V
new com/alipay/security/mobile/module/deviceinfo/d
dup
invokespecial com/alipay/security/mobile/module/deviceinfo/d/<init>()V
putstatic com/alipay/security/mobile/module/deviceinfo/d/a Lcom/alipay/security/mobile/module/deviceinfo/d;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a()Lcom/alipay/security/mobile/module/deviceinfo/d;
getstatic com/alipay/security/mobile/module/deviceinfo/d/a Lcom/alipay/security/mobile/module/deviceinfo/d;
areturn
.limit locals 0
.limit stack 1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "android.os.SystemProperties"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
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
aconst_null
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
dup
iconst_1
aload 1
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public static a(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
L0:
getstatic android/os/Build/HARDWARE Ljava/lang/String;
ldc "goldfish"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L13
getstatic android/os/Build/PRODUCT Ljava/lang/String;
ldc "sdk"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L13
getstatic android/os/Build/FINGERPRINT Ljava/lang/String;
ldc "generic"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
L1:
goto L13
L3:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 4
L4:
aload 4
ifnull L11
L5:
aload 4
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 4
L6:
aload 4
ifnull L14
L7:
aload 4
invokevirtual java/lang/String/length()I
istore 2
L8:
iload 2
ifne L15
goto L14
L16:
iload 1
iload 2
if_icmpge L17
L9:
aload 4
iload 1
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/isWhitespace(C)Z
ifne L18
aload 4
iload 1
invokevirtual java/lang/String/charAt(I)C
bipush 48
if_icmpeq L18
L10:
iconst_0
istore 1
goto L19
L11:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "android_id"
invokestatic android/provider/Settings$Secure/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 3
L12:
iload 3
ireturn
L2:
astore 0
iconst_0
ireturn
L13:
iconst_1
ireturn
L14:
iconst_1
istore 1
L19:
iload 1
ifeq L11
iconst_1
ireturn
L15:
iconst_0
istore 1
goto L16
L18:
iload 1
iconst_1
iadd
istore 1
goto L16
L17:
iconst_1
istore 1
goto L19
.limit locals 5
.limit stack 2
.end method

.method public static b()Ljava/lang/String;
ldc "android"
areturn
.limit locals 0
.limit stack 1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 0
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L7
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
astore 2
L1:
aload 2
ifnonnull L3
iconst_0
istore 1
goto L8
L3:
aload 2
ldc "WIFI"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
istore 1
L4:
goto L8
L5:
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/getExtraInfo()Ljava/lang/String;
astore 0
L6:
aload 0
areturn
L2:
astore 0
L7:
ldc ""
areturn
L8:
iload 1
ifeq L5
ldc "WIFI"
areturn
.limit locals 3
.limit stack 2
.end method

.method public static c()Z
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 0
L3:
iload 0
iconst_5
if_icmpge L4
L0:
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "/system/bin/"
aastore
dup
iconst_1
ldc "/system/xbin/"
aastore
dup
iconst_2
ldc "/system/sbin/"
aastore
dup
iconst_3
ldc "/sbin/"
aastore
dup
iconst_4
ldc "/vendor/bin/"
aastore
iload 0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "su"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
istore 1
L1:
iload 1
ifeq L5
iconst_1
ireturn
L5:
iload 0
iconst_1
iadd
istore 0
goto L3
L2:
astore 2
L4:
iconst_0
ireturn
.limit locals 3
.limit stack 7
.end method

.method public static d()Ljava/lang/String;
getstatic android/os/Build/BOARD Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static e()Ljava/lang/String;
getstatic android/os/Build/BRAND Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static f()Ljava/lang/String;
getstatic android/os/Build/DEVICE Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static g()Ljava/lang/String;
getstatic android/os/Build/DISPLAY Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static h()Ljava/lang/String;
getstatic android/os/Build$VERSION/INCREMENTAL Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static i()Ljava/lang/String;
getstatic android/os/Build/MANUFACTURER Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static j()Ljava/lang/String;
getstatic android/os/Build/MODEL Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static k()Ljava/lang/String;
getstatic android/os/Build/PRODUCT Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static l()Ljava/lang/String;
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static m()Ljava/lang/String;
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static n()Ljava/lang/String;
getstatic android/os/Build/TAGS Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static o()Ljava/lang/String;
ldc "ro.kernel.qemu"
ldc "0"
invokestatic com/alipay/security/mobile/module/deviceinfo/d/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static p()Ljava/lang/String;
ldc "gsm.sim.state"
ldc ""
invokestatic com/alipay/security/mobile/module/deviceinfo/d/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static q()Ljava/lang/String;
ldc "gsm.sim.state.2"
ldc ""
invokestatic com/alipay/security/mobile/module/deviceinfo/d/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static r()Ljava/lang/String;
ldc "wifi.interface"
ldc ""
invokestatic com/alipay/security/mobile/module/deviceinfo/d/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static s()Ljava/lang/String;
ldc "sys.usb.state"
ldc ""
invokestatic com/alipay/security/mobile/module/deviceinfo/d/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method
