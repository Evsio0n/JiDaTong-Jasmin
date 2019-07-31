.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/c/a
.super java/lang/Object

.method public static a(Landroid/content/Context;)Ljava/util/Map;
.signature "(Landroid/content/Context;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
ldc com/alipay/apmobilesecuritysdk/c/a
monitorenter
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "AA1"
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ldc "AA2"
aload 0
invokestatic com/alipay/apmobilesecuritysdk/c/a/b(Landroid/content/Context;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ldc "AA3"
ldc "security-sdk-token"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ldc "AA4"
ldc "3.0.2.20151027"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/e/d(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b/a;
astore 3
aload 3
getfield com/alipay/security/mobile/module/a/b/a/b Ljava/lang/String;
astore 2
aload 3
getfield com/alipay/security/mobile/module/a/b/a/a Ljava/lang/String;
astore 3
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L7
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L5
L1:
goto L7
L3:
aload 1
ldc "AA5"
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
ldc com/alipay/apmobilesecuritysdk/c/a
monitorexit
aload 1
areturn
L5:
invokestatic com/alipay/security/mobile/module/deviceinfo/b/a()Lcom/alipay/security/mobile/module/deviceinfo/b;
pop
aload 0
invokestatic com/alipay/security/mobile/module/deviceinfo/b/m(Landroid/content/Context;)Ljava/util/Map;
aload 3
aload 2
invokestatic com/alipay/apmobilesecuritysdk/f/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L6:
goto L3
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/a
monitorexit
aload 0
athrow
L7:
ldc ""
astore 0
goto L3
.limit locals 4
.limit stack 3
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
bipush 16
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc "0.0.0"
areturn
.limit locals 1
.limit stack 3
.end method
