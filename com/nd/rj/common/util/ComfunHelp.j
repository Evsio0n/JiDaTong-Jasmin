.bytecode 50.0
.class public synchronized com/nd/rj/common/util/ComfunHelp
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static Md5Digest(Ljava/lang/String;)Ljava/lang/String;
aload 0
iconst_1
invokestatic com/nd/rj/common/util/ComfunHelp/Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L2
.catch java/security/NoSuchAlgorithmException from L9 to L10 using L2
.catch java/security/NoSuchAlgorithmException from L11 to L12 using L2
.catch java/security/NoSuchAlgorithmException from L13 to L14 using L2
.catch java/security/NoSuchAlgorithmException from L15 to L16 using L2
.catch java/security/NoSuchAlgorithmException from L17 to L18 using L2
ldc ""
astore 6
aload 6
astore 5
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 7
L1:
aload 6
astore 5
L3:
aload 7
aload 0
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
L4:
aload 6
astore 5
L5:
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
L6:
aload 6
astore 5
L7:
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
L8:
iconst_0
istore 2
L19:
aload 6
astore 5
L9:
iload 2
aload 0
arraylength
if_icmpge L20
L10:
aload 0
iload 2
baload
istore 4
iload 4
istore 3
iload 4
ifge L21
iload 4
sipush 256
iadd
istore 3
L21:
iload 3
bipush 16
if_icmpge L12
aload 6
astore 5
L11:
aload 7
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L12:
aload 6
astore 5
L13:
aload 7
iload 3
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L14:
iload 2
iconst_1
iadd
istore 2
goto L19
L20:
aload 6
astore 5
L15:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 0
L16:
aload 0
astore 5
iload 1
ifeq L22
aload 0
astore 5
L17:
aload 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 0
L18:
aload 0
astore 5
L22:
aload 5
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
aload 5
areturn
.limit locals 8
.limit stack 3
.end method

.method public static getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 3
aconst_null
astore 2
aconst_null
astore 0
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokevirtual android/net/ConnectivityManager/getAllNetworkInfo()[Landroid/net/NetworkInfo;
astore 3
aload 3
ifnull L1
iconst_0
istore 1
L2:
aload 0
astore 2
iload 1
aload 3
arraylength
if_icmpge L1
aload 3
iload 1
aaload
invokevirtual android/net/NetworkInfo/getState()Landroid/net/NetworkInfo$State;
getstatic android/net/NetworkInfo$State/CONNECTED Landroid/net/NetworkInfo$State;
if_acmpne L3
aload 3
iload 1
aaload
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
astore 0
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L1 to L3 using L4
L0:
aload 0
checkcast android/app/Activity
astore 1
L1:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
invokevirtual android/app/Activity/getApplication()Landroid/app/Application;
invokevirtual android/app/Application/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
invokevirtual android/content/pm/ApplicationInfo/loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 0
L3:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
L4:
astore 0
aload 0
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ldc "deviceId"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 3
aload 3
ldc "deviceId"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
astore 2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
L0:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 0
L1:
aload 0
astore 1
L4:
aload 1
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
ldc "-"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L5:
aload 3
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
aload 1
ldc "deviceId"
aload 0
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 0
astore 2
L3:
aload 2
areturn
L2:
astore 0
goto L4
.limit locals 4
.limit stack 3
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
aload 0
invokestatic com/nd/rj/common/util/ComfunHelp/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
