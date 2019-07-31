.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/face/a
.super java/lang/Object
.inner class public static abstract interface a inner com/alipay/apmobilesecuritysdk/face/a$a outer com/alipay/apmobilesecuritysdk/face/a
.inner class private final b inner com/alipay/apmobilesecuritysdk/face/a$b outer com/alipay/apmobilesecuritysdk/face/a
.inner class public final c inner com/alipay/apmobilesecuritysdk/face/a$c outer com/alipay/apmobilesecuritysdk/face/a

.field private static 'a' Lcom/alipay/apmobilesecuritysdk/face/a;

.field private static 'b' Ljava/lang/Object;

.field private 'c' Landroid/content/Context;

.field private volatile 'd' Z

.field private 'e' Ljava/lang/Thread;

.field private 'f' Ljava/util/LinkedList; signature "Ljava/util/LinkedList<Lcom/alipay/apmobilesecuritysdk/face/a$b;>;"

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/alipay/apmobilesecuritysdk/face/a/b Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alipay/apmobilesecuritysdk/face/a/d Z
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/alipay/apmobilesecuritysdk/face/a/f Ljava/util/LinkedList;
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/a;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
getstatic com/alipay/apmobilesecuritysdk/face/a/b Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/face/a/a Lcom/alipay/apmobilesecuritysdk/face/a;
ifnonnull L1
new com/alipay/apmobilesecuritysdk/face/a
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/face/a/<init>(Landroid/content/Context;)V
putstatic com/alipay/apmobilesecuritysdk/face/a/a Lcom/alipay/apmobilesecuritysdk/face/a;
L1:
getstatic com/alipay/apmobilesecuritysdk/face/a/a Lcom/alipay/apmobilesecuritysdk/face/a;
astore 0
aload 1
monitorexit
L3:
aload 0
areturn
L2:
astore 0
aload 1
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 3
.end method

.method private a()Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Landroid/content/Context;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/f Ljava/util/LinkedList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
aload 0
iload 1
putfield com/alipay/apmobilesecuritysdk/face/a/d Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private b()Lcom/alipay/apmobilesecuritysdk/face/a$c;
.catch java/lang/Throwable from L0 to L1 using L2
new com/alipay/apmobilesecuritysdk/face/a$c
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/face/a$c/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
astore 3
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 3
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/b Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "getLocalApdidToken spend "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " ms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 3
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/b(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/c Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 3
invokestatic com/alipay/apmobilesecuritysdk/d/a/a()Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/a Ljava/lang/String;
aload 3
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/d Ljava/lang/String;
L1:
aload 3
areturn
L2:
astore 4
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method static synthetic b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;
aload 0
aconst_null
putfield com/alipay/apmobilesecuritysdk/face/a/e Ljava/lang/Thread;
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/c Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic d(Lcom/alipay/apmobilesecuritysdk/face/a;)Z
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/d Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 1
ldc "utdid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
ldc "tid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "userId"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "https://mobilegw.alipay.com/mgw.htm"
invokestatic com/alipay/security/mobile/module/a/a/a/a(Ljava/lang/String;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/f Ljava/util/LinkedList;
new com/alipay/apmobilesecuritysdk/face/a$b
dup
aload 0
aload 2
aload 3
aload 1
invokespecial com/alipay/apmobilesecuritysdk/face/a$b/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/util/LinkedList/addLast(Ljava/lang/Object;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/e Ljava/lang/Thread;
ifnonnull L0
aload 0
new java/lang/Thread
dup
new com/alipay/apmobilesecuritysdk/face/b
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/face/b/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
putfield com/alipay/apmobilesecuritysdk/face/a/e Ljava/lang/Thread;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/e Ljava/lang/Thread;
new com/alipay/apmobilesecuritysdk/face/c
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/face/c/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
invokevirtual java/lang/Thread/setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a/e Ljava/lang/Thread;
invokevirtual java/lang/Thread/start()V
L0:
return
.limit locals 4
.limit stack 7
.end method
