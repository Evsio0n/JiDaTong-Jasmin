.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/e/c
.super java/lang/Object

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/d;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnonnull L3
aconst_null
areturn
L3:
aload 0
ldc "device_feature_prefs_name"
ldc "device_feature_prefs_key"
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
astore 0
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L4
ldc "device_feature_file_name"
ldc "device_feature_file_key"
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L4:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
new com/alipay/apmobilesecuritysdk/e/d
dup
invokespecial com/alipay/apmobilesecuritysdk/e/d/<init>()V
astore 1
aload 1
aload 0
ldc "imei"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/e/d/a Ljava/lang/String;
aload 1
aload 0
ldc "imsi"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/e/d/b Ljava/lang/String;
aload 1
aload 0
ldc "mac"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/e/d/c Ljava/lang/String;
aload 1
aload 0
ldc "bluetoothmac"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/e/d/d Ljava/lang/String;
aload 1
aload 0
ldc "gsi"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/e/d/e Ljava/lang/String;
L1:
aload 1
areturn
L2:
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method
