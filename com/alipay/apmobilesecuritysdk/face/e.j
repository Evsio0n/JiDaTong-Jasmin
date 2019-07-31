.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/face/e
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
ldc com/alipay/apmobilesecuritysdk/face/e
monitorenter
L0:
new com/alipay/apmobilesecuritysdk/a/a
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/a/a/<init>(Landroid/content/Context;)V
aload 1
invokevirtual com/alipay/apmobilesecuritysdk/a/a/a(Ljava/util/Map;)Ljava/lang/String;
astore 0
L1:
ldc com/alipay/apmobilesecuritysdk/face/e
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/face/e
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 3
.end method
