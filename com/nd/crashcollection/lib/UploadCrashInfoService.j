.bytecode 50.0
.class public synchronized com/nd/crashcollection/lib/UploadCrashInfoService
.super android/app/IntentService

.field private static final 'ANDROID_RELEASE' Ljava/lang/String; = "android_release"

.field private static final 'ANDROID_SDK' Ljava/lang/String; = "android_sdk"

.field private static final 'APP_CODE' Ljava/lang/String; = "app_code"

.field private static final 'APP_VERSION' Ljava/lang/String; = "app_version"

.field private static final 'BRAND' Ljava/lang/String; = "brand"

.field private static 'CRASH_APP_CODE' I = 0


.field private static final 'CRASH_INFO' Ljava/lang/String; = "crash_info"

.field private static final 'CRASH_STACK_MD5' Ljava/lang/String; = "crash_stack_md5"

.field private static final 'CRASH_TIME' Ljava/lang/String; = "crash_time"

.field private static final 'CRASH_TYPE' Ljava/lang/String; = "crash_type"

.field private static final 'IMEI' Ljava/lang/String; = "imei"

.field private static final 'LANGUAGE' Ljava/lang/String; = "language"

.field private static final 'MANUFACTURER' Ljava/lang/String; = "manufacturer"

.field private static final 'MODEL' Ljava/lang/String; = "model"

.field private static final 'NETWORK_TYPE' Ljava/lang/String; = "network_type"

.field private static final 'SERVER_URI' Ljava/lang/String; = "http://api.rj.99.com/"

.method static <clinit>()V
iconst_0
putstatic com/nd/crashcollection/lib/UploadCrashInfoService/CRASH_APP_CODE I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
ldc "UploadCrashInfoService"
invokespecial android/app/IntentService/<init>(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method private compress(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnull L3
aload 1
invokevirtual java/lang/String/length()I
ifne L0
L3:
aload 1
areturn
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
new java/util/zip/DeflaterOutputStream
dup
aload 2
invokespecial java/util/zip/DeflaterOutputStream/<init>(Ljava/io/OutputStream;)V
astore 3
aload 3
aload 1
ldc "ISO-8859-1"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/util/zip/DeflaterOutputStream/write([B)V
aload 3
invokevirtual java/util/zip/DeflaterOutputStream/close()V
aload 2
ldc "ISO-8859-1"
invokevirtual java/io/ByteArrayOutputStream/toString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc ""
areturn
.limit locals 4
.limit stack 3
.end method

.method public static crashItem2Json(Ljava/lang/String;Lcom/nd/crashcollection/lib/CrashInfo;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "imei"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "manufacturer"
getstatic android/os/Build/MANUFACTURER Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "brand"
getstatic android/os/Build/BRAND Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "model"
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "app_code"
getstatic com/nd/crashcollection/lib/UploadCrashInfoService/CRASH_APP_CODE I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "android_sdk"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAndroidSdk()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "android_release"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAndroidRelease()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "language"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getLanguage()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "app_version"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAppVersion()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "network_type"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getNetworkType()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "crash_type"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashType()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "crash_info"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashInfo()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "crash_time"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashTime()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashStackMd5()Ljava/lang/String;
astore 1
L1:
aload 1
astore 0
aload 1
ifnonnull L3
ldc ""
astore 0
L3:
aload 2
ldc "crash_stack_md5"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 2
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/UploadCrashInfoService/compress(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
invokestatic com/nd/crashcollection/lib/HttpRequest/getInstance(Landroid/content/Context;)Lcom/nd/crashcollection/lib/IHttpRequest;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 3
aload 2
aload 1
aload 4
invokeinterface com/nd/crashcollection/lib/IHttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I 3
pop
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
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

.method private isOnline(Landroid/content/Context;)Z
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isWifiConn(Landroid/content/Context;)Z
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
iconst_1
invokevirtual android/net/ConnectivityManager/getNetworkInfo(I)Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/isConnected()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static setAppCode(I)V
iload 0
putstatic com/nd/crashcollection/lib/UploadCrashInfoService/CRASH_APP_CODE I
return
.limit locals 1
.limit stack 1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L5 to L6 using L4
aload 0
aload 0
invokespecial com/nd/crashcollection/lib/UploadCrashInfoService/isOnline(Landroid/content/Context;)Z
ifne L7
L8:
return
L7:
aload 0
aload 0
invokespecial com/nd/crashcollection/lib/UploadCrashInfoService/isWifiConn(Landroid/content/Context;)Z
ifeq L9
iconst_5
istore 2
L10:
new com/nd/crashcollection/lib/CrashInfoSQLiteHelper
dup
aload 0
invokespecial com/nd/crashcollection/lib/CrashInfoSQLiteHelper/<init>(Landroid/content/Context;)V
astore 5
aload 5
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/deleteUnusedItems()V
aload 5
iload 2
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getCrashInfo(I)Ljava/util/List;
astore 1
L11:
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L8
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 6
aload 0
invokestatic com/nd/crashcollection/lib/UploadCrashInfoService/getDeviceId(Landroid/content/Context;)Ljava/lang/String;
astore 7
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L12:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L13
aload 0
aload 6
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
ldc "http://api.rj.99.com/CrashCollection/collect"
invokespecial com/nd/crashcollection/lib/UploadCrashInfoService/doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
new org/json/JSONArray
dup
aload 6
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 6
L1:
aload 6
invokevirtual org/json/JSONArray/length()I
istore 4
L3:
iconst_0
istore 3
L14:
iload 3
iload 4
if_icmplt L5
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L8
aload 5
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/setUploaded(Ljava/util/List;)V
aload 0
aload 0
invokespecial com/nd/crashcollection/lib/UploadCrashInfoService/isWifiConn(Landroid/content/Context;)Z
ifeq L8
aload 5
iload 2
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getCrashInfo(I)Ljava/util/List;
astore 1
goto L11
L9:
iconst_1
istore 2
goto L10
L13:
aload 7
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/crashcollection/lib/CrashInfo
invokestatic com/nd/crashcollection/lib/UploadCrashInfoService/crashItem2Json(Ljava/lang/String;Lcom/nd/crashcollection/lib/CrashInfo;)Lorg/json/JSONObject;
astore 8
aload 8
ifnull L12
aload 6
aload 8
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
goto L12
L5:
aload 1
aload 6
iload 3
invokevirtual org/json/JSONArray/getLong(I)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 3
iconst_1
iadd
istore 3
goto L14
L2:
astore 1
return
L4:
astore 1
return
.limit locals 9
.limit stack 3
.end method
