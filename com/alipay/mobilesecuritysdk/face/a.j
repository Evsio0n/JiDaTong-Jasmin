.bytecode 50.0
.class public final synchronized com/alipay/mobilesecuritysdk/face/a
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
.signature "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
ldc com/alipay/mobilesecuritysdk/face/a
monitorenter
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 3
ldc "utdid"
aload 1
ldc "utdid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
ldc "tid"
aload 1
ldc "tid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
ldc "userId"
aload 1
ldc "userId"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/a;
aload 3
invokevirtual com/alipay/apmobilesecuritysdk/face/a/a(Ljava/util/Map;)V
invokestatic com/alipay/apmobilesecuritysdk/e/f/a()Ljava/lang/String;
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 2
L1:
iload 2
ifne L3
L11:
ldc com/alipay/mobilesecuritysdk/face/a
monitorexit
aload 1
areturn
L3:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 1
L4:
aload 1
ifnull L7
L5:
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L7
aload 1
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
astore 1
L6:
goto L11
L7:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a(Landroid/content/Context;)Ljava/lang/String;
astore 3
L8:
aload 3
astore 1
L9:
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L11
aload 0
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
astore 1
L10:
goto L11
L2:
astore 0
ldc com/alipay/mobilesecuritysdk/face/a
monitorexit
aload 0
athrow
.limit locals 4
.limit stack 5
.end method
