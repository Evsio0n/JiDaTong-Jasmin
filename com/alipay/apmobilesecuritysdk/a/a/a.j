.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/a/a/a
.super java/lang/Object

.method public static a()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aconst_null
astore 2
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorenter
L0:
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/b()Ljava/lang/String;
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 0
L1:
iload 0
ifeq L3
aload 2
astore 1
L7:
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 1
areturn
L3:
aload 1
ldc "`"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
L4:
aload 2
astore 1
aload 3
ifnull L7
aload 2
astore 1
L5:
aload 3
arraylength
iconst_2
if_icmplt L7
L6:
aload 3
iconst_0
aaload
astore 1
goto L7
L2:
astore 1
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorenter
L0:
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a()Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L3:
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L4
aload 0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/b(Landroid/content/Context;)Ljava/lang/String;
astore 1
L4:
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 1
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 1
.end method

.method public static a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch all from L5 to L6 using L2
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorenter
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L1:
iload 1
ifeq L3
L8:
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
return
L3:
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "`"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L4:
aload 0
ifnull L8
L5:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "device"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
ldc "deviceid_v2"
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/localstorage/a/a(Ljava/lang/String;Ljava/lang/String;)V
L6:
goto L8
L7:
astore 0
goto L8
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 3
.end method

.method private static b()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
ldc "deviceid_v2"
invokestatic com/alipay/security/mobile/module/localstorage/a/a(Ljava/lang/String;)Ljava/lang/String;
astore 0
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "device"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Throwable from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Throwable from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Throwable from L10 to L11 using L2
.catch all from L10 to L11 using L3
aconst_null
astore 2
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorenter
L0:
aload 0
ldc "profiles"
ldc "deviceid"
ldc ""
invokestatic com/alipay/security/mobile/module/localstorage/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L6
L1:
aconst_null
astore 0
L4:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L5:
iload 1
ifeq L8
aload 2
astore 0
L12:
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 0
areturn
L6:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L7:
goto L4
L8:
new com/alipay/apmobilesecuritysdk/a/a/b
dup
invokespecial com/alipay/apmobilesecuritysdk/a/a/b/<init>()V
pop
aload 0
invokestatic com/alipay/apmobilesecuritysdk/a/a/b/a(Ljava/lang/String;)Ljava/util/Map;
astore 0
L9:
aload 0
ifnull L13
L10:
aload 0
ldc "deviceId"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 0
L11:
goto L12
L2:
astore 0
L13:
ldc ""
astore 0
goto L12
L3:
astore 0
ldc com/alipay/apmobilesecuritysdk/a/a/a
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 4
.end method
