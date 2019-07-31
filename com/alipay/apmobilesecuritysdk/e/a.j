.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/e/a
.super java/lang/Object

.method public static a()Lcom/alipay/apmobilesecuritysdk/e/b;
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
aconst_null
astore 1
ldc com/alipay/apmobilesecuritysdk/e/a
monitorenter
L0:
ldc "wxcasxx_v3"
ldc "wxcasxx"
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 0
L1:
iload 0
ifeq L3
L8:
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 1
areturn
L3:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
new com/alipay/apmobilesecuritysdk/e/b
dup
aload 2
ldc "apdid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "deviceInfoHash"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "token"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 2
ldc "timestamp"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/alipay/apmobilesecuritysdk/e/b/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
astore 2
L4:
aload 2
astore 1
goto L8
L5:
astore 2
L6:
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L7:
goto L8
L2:
astore 1
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 7
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L8
.catch all from L6 to L7 using L2
.catch all from L9 to L10 using L2
aconst_null
astore 2
ldc com/alipay/apmobilesecuritysdk/e/a
monitorenter
L0:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/a/c(Landroid/content/Context;)Ljava/lang/String;
astore 3
L1:
aload 3
astore 0
L3:
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L4
ldc "wxcasxx_v3"
ldc "wxcasxx"
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L4:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L5:
iload 1
ifeq L6
aload 2
astore 0
L11:
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 0
areturn
L6:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
new com/alipay/apmobilesecuritysdk/e/b
dup
aload 0
ldc "apdid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "deviceInfoHash"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "token"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "timestamp"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/alipay/apmobilesecuritysdk/e/b/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
astore 0
L7:
goto L11
L8:
astore 0
L9:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L10:
aload 2
astore 0
goto L11
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 0
athrow
.limit locals 4
.limit stack 7
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
ldc com/alipay/apmobilesecuritysdk/e/a
monitorenter
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "apdid"
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "deviceInfoHash"
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/b Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "token"
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "timestamp"
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/d Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
aload 0
ldc "vkeyid_profiles_v3"
ldc "deviceid"
aload 1
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
ldc "wxcasxx_v3"
ldc "wxcasxx"
aload 1
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
return
L2:
astore 0
L4:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L5:
goto L1
L3:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 4
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
aconst_null
astore 2
ldc com/alipay/apmobilesecuritysdk/e/a
monitorenter
L0:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/a/c(Landroid/content/Context;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L1:
iload 1
ifeq L3
aload 2
astore 0
L8:
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 0
areturn
L3:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
new com/alipay/apmobilesecuritysdk/e/b
dup
aload 0
ldc "apdid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "deviceInfoHash"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "token"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "timestamp"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/alipay/apmobilesecuritysdk/e/b/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
astore 0
L4:
goto L8
L5:
astore 0
L6:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L7:
aload 2
astore 0
goto L8
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/a
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 7
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
aload 0
ldc "vkeyid_profiles_v3"
ldc "deviceid"
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
