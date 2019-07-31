.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/c/b
.super java/lang/Object

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
.signature "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/c/b
monitorenter
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 1
ldc "tid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "utdid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
astore 0
aload 1
ldc "userId"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 2
ldc "AC1"
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "AC2"
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "AC3"
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "AC4"
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "AC5"
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L1:
ldc com/alipay/apmobilesecuritysdk/c/b
monitorexit
aload 2
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/b
monitorexit
aload 0
athrow
.limit locals 5
.limit stack 3
.end method
