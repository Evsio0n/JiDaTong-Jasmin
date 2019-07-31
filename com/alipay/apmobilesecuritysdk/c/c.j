.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/c/c
.super java/lang/Object

.method public static a(Landroid/content/Context;)Ljava/util/Map;
.signature "(Landroid/content/Context;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
invokestatic com/alipay/security/mobile/module/deviceinfo/b/a()Lcom/alipay/security/mobile/module/deviceinfo/b;
astore 7
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 8
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/c/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/d;
astore 9
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/a(Landroid/content/Context;)Ljava/lang/String;
astore 2
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/b(Landroid/content/Context;)Ljava/lang/String;
astore 3
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/h(Landroid/content/Context;)Ljava/lang/String;
astore 4
invokestatic com/alipay/security/mobile/module/deviceinfo/b/h()Ljava/lang/String;
astore 5
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/j(Landroid/content/Context;)Ljava/lang/String;
astore 6
aload 9
ifnull L3
aload 2
astore 1
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L4
aload 9
getfield com/alipay/apmobilesecuritysdk/e/d/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
astore 1
L4:
aload 3
astore 2
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L5
aload 9
getfield com/alipay/apmobilesecuritysdk/e/d/b Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
astore 2
L5:
aload 4
astore 3
aload 4
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L6
aload 9
getfield com/alipay/apmobilesecuritysdk/e/d/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
astore 3
L6:
aload 5
astore 4
aload 5
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L7
aload 9
getfield com/alipay/apmobilesecuritysdk/e/d/d Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
astore 4
L7:
aload 6
astore 5
aload 6
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L8
aload 9
getfield com/alipay/apmobilesecuritysdk/e/d/e Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
astore 5
L8:
new com/alipay/apmobilesecuritysdk/e/d
dup
aload 1
aload 2
aload 3
aload 4
aload 5
invokespecial com/alipay/apmobilesecuritysdk/e/d/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
astore 6
aload 0
ifnull L1
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
aload 9
ldc "imei"
aload 6
getfield com/alipay/apmobilesecuritysdk/e/d/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "imsi"
aload 6
getfield com/alipay/apmobilesecuritysdk/e/d/b Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "mac"
aload 6
getfield com/alipay/apmobilesecuritysdk/e/d/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "bluetoothmac"
aload 6
getfield com/alipay/apmobilesecuritysdk/e/d/d Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "gsi"
aload 6
getfield com/alipay/apmobilesecuritysdk/e/d/e Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 6
ldc "device_feature_file_name"
ldc "device_feature_file_key"
aload 6
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "device_feature_prefs_name"
ldc "device_feature_prefs_key"
aload 6
invokestatic com/alipay/apmobilesecuritysdk/f/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 8
ldc "AD1"
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD2"
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD3"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/d(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD5"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/e(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD6"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/f(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD7"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/g(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD8"
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD9"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/i(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD10"
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD11"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/b()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD12"
aload 7
invokevirtual com/alipay/security/mobile/module/deviceinfo/b/c()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD13"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/d()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD14"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/e()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD15"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/f()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD16"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/g()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD17"
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD18"
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD19"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/k(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD20"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/i()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD21"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/c(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD22"
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AD23"
invokestatic com/alipay/security/mobile/module/deviceinfo/b/j()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
ldc "AL3"
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/l(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 8
areturn
L2:
astore 6
aload 6
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
goto L1
L3:
aload 2
astore 1
aload 3
astore 2
aload 4
astore 3
aload 5
astore 4
aload 6
astore 5
goto L8
.limit locals 10
.limit stack 7
.end method
