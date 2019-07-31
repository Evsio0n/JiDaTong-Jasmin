.bytecode 50.0
.class public synchronized com/nd/rj/common/login/util/LoginCommonUtil
.super java/lang/Object

.field private static 'mSid' Ljava/lang/String;

.field private static 'toast' Landroid/widget/Toast;

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/login/util/LoginCommonUtil/toast Landroid/widget/Toast;
aconst_null
putstatic com/nd/rj/common/login/util/LoginCommonUtil/mSid Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static Md5NdDigest(Ljava/lang/String;Z)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L3 to L4 using L5
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L6 to L7 using L2
.catch java/security/NoSuchAlgorithmException from L8 to L9 using L2
.catch java/security/NoSuchAlgorithmException from L10 to L11 using L2
.catch java/security/NoSuchAlgorithmException from L12 to L13 using L2
.catch java/security/NoSuchAlgorithmException from L14 to L15 using L2
.catch java/security/NoSuchAlgorithmException from L16 to L17 using L2
.catch java/security/NoSuchAlgorithmException from L18 to L19 using L2
.catch java/security/NoSuchAlgorithmException from L20 to L21 using L2
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
ldc "GB2312"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
L4:
aload 6
astore 5
L6:
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
L7:
aload 6
astore 5
L8:
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
L9:
iconst_0
istore 2
L22:
aload 6
astore 5
L10:
iload 2
aload 0
arraylength
if_icmpge L23
L11:
aload 0
iload 2
baload
istore 4
iload 4
istore 3
iload 4
ifge L24
iload 4
sipush 256
iadd
istore 3
L24:
iload 3
bipush 16
if_icmpge L13
aload 6
astore 5
L12:
aload 7
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L13:
aload 6
astore 5
L14:
aload 7
iload 3
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L15:
iload 2
iconst_1
iadd
istore 2
goto L22
L5:
astore 0
aload 6
astore 5
L16:
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
L17:
goto L4
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L25:
aload 5
areturn
L23:
aload 6
astore 5
L18:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 0
L19:
aload 0
astore 5
iload 1
ifeq L25
aload 0
astore 5
L20:
aload 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 0
L21:
aload 0
areturn
.limit locals 8
.limit stack 3
.end method

.method private static byteToHex([B)Ljava/lang/String;
new java/util/Formatter
dup
invokespecial java/util/Formatter/<init>()V
astore 3
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
ldc "%02x"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
iload 1
baload
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
aastore
invokevirtual java/util/Formatter/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 3
invokevirtual java/util/Formatter/toString()Ljava/lang/String;
astore 0
aload 3
invokevirtual java/util/Formatter/close()V
aload 0
areturn
.limit locals 4
.limit stack 7
.end method

.method public static getClientInfo(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
aload 1
ldc "appid"
aload 0
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getAppid()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "platform"
bipush 30
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "platformver"
aload 0
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getVersionName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "deviceid"
aload 0
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getIMEI(Landroid/content/Context;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "devicetype"
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getMachineName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "systype"
ldc "android"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "sysver"
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getFirmWareVersion()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getFirmWareVersion()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
tableswitch 3
L3
L4
L5
L6
L7
L8
L9
L10
L11
L12
L13
L14
L15
L16
L17
L18
L1
default : L19
L1:
ldc "4.4"
areturn
L2:
astore 0
ldc "2.1"
areturn
L19:
ldc "2.1"
areturn
L3:
ldc "1.5"
areturn
L4:
ldc "1.6"
areturn
L5:
ldc "2.0"
areturn
L6:
ldc "2.0.1"
areturn
L7:
ldc "2.1"
areturn
L8:
ldc "2.2"
areturn
L9:
ldc "2.3"
areturn
L10:
ldc "2.3.3"
areturn
L11:
ldc "3.0"
areturn
L12:
ldc "3.1"
areturn
L13:
ldc "3.2"
areturn
L14:
ldc "4.0"
areturn
L15:
ldc "4.0.3"
areturn
L16:
ldc "4.1.1"
areturn
L17:
ldc "4.2"
areturn
L18:
ldc "4.3"
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 1
aload 1
ifnonnull L3
ldc ""
astore 1
L4:
aload 1
areturn
L3:
aconst_null
astore 0
L0:
aload 1
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 1
L1:
aload 1
astore 0
L5:
aload 0
astore 1
aload 0
ifnonnull L4
ldc ""
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L5
.limit locals 2
.limit stack 2
.end method

.method public static getMachineName()Ljava/lang/String;
getstatic android/os/Build/MODEL Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
ldc ""
astore 1
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
L1:
aload 1
astore 0
L3:
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getUnitId()I
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
istore 0
getstatic com/product/android/business/config/Configuration/DEBUG Z
ifeq L0
ldc_w 96423
istore 0
L0:
iload 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L6 to L7 using L2
ldc ""
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
L0:
aload 0
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
aload 3
aload 6
invokevirtual com/nd/rj/common/login/communication/uapCom/getUserInfo(JLjava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L1:
aload 5
astore 0
iload 4
ifne L4
L3:
new org/json/JSONObject
dup
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "nickname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L5:
astore 0
L6:
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L7:
ldc ""
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 7
.limit stack 5
.end method

.method public static getUserPwd(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "user_pwd"
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getUserSid(Landroid/content/Context;)Ljava/lang/String;
getstatic com/nd/rj/common/login/util/LoginCommonUtil/mSid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static hasLoginBefore(Landroid/content/Context;)Z
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_0
ireturn
L1:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 0
aload 0
ifnull L3
aload 0
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
iconst_1
ireturn
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
astore 0
aload 0
ifnull L3
aload 0
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
iconst_1
ireturn
L2:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
ifnull L3
aload 0
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserPwd(Landroid/content/Context;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static parseInt(Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_m1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static parseLong(Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L1:
lload 1
lreturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 2
.end method

.method public static setUserPwd(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "user_pwd"
aload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static setUserSid(Landroid/content/Context;Ljava/lang/String;)V
aload 1
putstatic com/nd/rj/common/login/util/LoginCommonUtil/mSid Ljava/lang/String;
return
.limit locals 2
.limit stack 1
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
L0:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
aload 1
invokevirtual java/security/MessageDigest/reset()V
aload 1
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/byteToHex([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
ldc ""
areturn
L3:
astore 0
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/rj/common/login/util/LoginCommonUtil/toast Landroid/widget/Toast;
ifnonnull L0
aload 0
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
putstatic com/nd/rj/common/login/util/LoginCommonUtil/toast Landroid/widget/Toast;
L1:
getstatic com/nd/rj/common/login/util/LoginCommonUtil/toast Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
getstatic com/nd/rj/common/login/util/LoginCommonUtil/toast Landroid/widget/Toast;
aload 1
invokevirtual android/widget/Toast/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 2
.limit stack 3
.end method

.method public static toSendNotifyIdentityExpired()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iconst_1
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyIdentityExpired()V
return
.limit locals 0
.limit stack 2
.end method
