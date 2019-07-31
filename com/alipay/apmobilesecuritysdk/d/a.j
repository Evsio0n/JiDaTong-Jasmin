.bytecode 50.0
.class public synchronized com/alipay/apmobilesecuritysdk/d/a
.super java/lang/Object

.field private static 'a' Ljava/lang/String;

.field private static volatile 'b' Z

.field private static 'c' Landroid/content/Context;

.field private static 'd' Lcom/alipay/apmobilesecuritysdk/d/a;

.method static <clinit>()V
ldc ""
putstatic com/alipay/apmobilesecuritysdk/d/a/a Ljava/lang/String;
iconst_0
putstatic com/alipay/apmobilesecuritysdk/d/a/b Z
aconst_null
putstatic com/alipay/apmobilesecuritysdk/d/a/c Landroid/content/Context;
aconst_null
putstatic com/alipay/apmobilesecuritysdk/d/a/d Lcom/alipay/apmobilesecuritysdk/d/a;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
getstatic com/alipay/apmobilesecuritysdk/d/a/d Lcom/alipay/apmobilesecuritysdk/d/a;
ifnonnull L3
ldc com/alipay/apmobilesecuritysdk/d/a
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/d/a/d Lcom/alipay/apmobilesecuritysdk/d/a;
ifnonnull L1
new com/alipay/apmobilesecuritysdk/d/a
dup
invokespecial com/alipay/apmobilesecuritysdk/d/a/<init>()V
putstatic com/alipay/apmobilesecuritysdk/d/a/d Lcom/alipay/apmobilesecuritysdk/d/a;
aload 0
putstatic com/alipay/apmobilesecuritysdk/d/a/c Landroid/content/Context;
L1:
ldc com/alipay/apmobilesecuritysdk/d/a
monitorexit
L3:
getstatic com/alipay/apmobilesecuritysdk/d/a/d Lcom/alipay/apmobilesecuritysdk/d/a;
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/d/a
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public static a()Ljava/lang/String;
getstatic com/alipay/apmobilesecuritysdk/d/a/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
pop
getstatic com/alipay/apmobilesecuritysdk/d/a/a Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static b()Ljava/lang/String;
getstatic com/alipay/apmobilesecuritysdk/d/a/a Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method
