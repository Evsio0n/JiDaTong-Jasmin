.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/s
.super java/lang/Object
.implements com/alipay/android/phone/mrpc/core/f

.field private static 'b' Lcom/alipay/android/phone/mrpc/core/s;

.field private static final 'i' Ljava/util/concurrent/ThreadFactory;

.field 'a' Landroid/content/Context;

.field private 'c' Ljava/util/concurrent/ThreadPoolExecutor;

.field private 'd' Lcom/alipay/android/phone/mrpc/core/i;

.field private 'e' J

.field private 'f' J

.field private 'g' J

.field private 'h' I

.method static <clinit>()V
aconst_null
putstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
new com/alipay/android/phone/mrpc/core/u
dup
invokespecial com/alipay/android/phone/mrpc/core/u/<init>()V
putstatic com/alipay/android/phone/mrpc/core/s/i Ljava/util/concurrent/ThreadFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/s/a Landroid/content/Context;
aload 0
ldc "android"
invokestatic com/alipay/android/phone/mrpc/core/i/a(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/i;
putfield com/alipay/android/phone/mrpc/core/s/d Lcom/alipay/android/phone/mrpc/core/i;
aload 0
new java/util/concurrent/ThreadPoolExecutor
dup
bipush 10
bipush 11
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
new java/util/concurrent/ArrayBlockingQueue
dup
bipush 20
invokespecial java/util/concurrent/ArrayBlockingQueue/<init>(I)V
getstatic com/alipay/android/phone/mrpc/core/s/i Ljava/util/concurrent/ThreadFactory;
new java/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy
dup
invokespecial java/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy/<init>()V
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
putfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
iconst_1
invokevirtual java/util/concurrent/ThreadPoolExecutor/allowCoreThreadTimeOut(Z)V
L1:
aload 0
getfield com/alipay/android/phone/mrpc/core/s/a Landroid/content/Context;
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
pop
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
iconst_1
invokevirtual android/webkit/CookieManager/setAcceptCookie(Z)V
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 12
.end method

.method public static final a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/s;
getstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
ifnull L0
getstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
areturn
L0:
aload 0
invokestatic com/alipay/android/phone/mrpc/core/s/b(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/s;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static final b(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/s;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/alipay/android/phone/mrpc/core/s
monitorenter
L0:
getstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
ifnull L3
getstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
astore 0
L1:
ldc com/alipay/android/phone/mrpc/core/s
monitorexit
aload 0
areturn
L3:
new com/alipay/android/phone/mrpc/core/s
dup
aload 0
invokespecial com/alipay/android/phone/mrpc/core/s/<init>(Landroid/content/Context;)V
astore 0
aload 0
putstatic com/alipay/android/phone/mrpc/core/s/b Lcom/alipay/android/phone/mrpc/core/s;
L4:
goto L1
L2:
astore 0
ldc com/alipay/android/phone/mrpc/core/s
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public final a()Lcom/alipay/android/phone/mrpc/core/i;
aload 0
getfield com/alipay/android/phone/mrpc/core/s/d Lcom/alipay/android/phone/mrpc/core/i;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/util/concurrent/Future;
.signature "(Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/util/concurrent/Future<Lcom/alipay/android/phone/mrpc/core/ab;>;"
lconst_0
lstore 5
aload 0
getfield com/alipay/android/phone/mrpc/core/s/a Landroid/content/Context;
invokestatic com/alipay/android/phone/mrpc/core/z/a(Landroid/content/Context;)Z
ifeq L0
new java/lang/StringBuilder
dup
ldc "HttpManager"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/Object/hashCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 11
aload 0
getfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
invokevirtual java/util/concurrent/ThreadPoolExecutor/getActiveCount()I
istore 2
aload 0
getfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
invokevirtual java/util/concurrent/ThreadPoolExecutor/getCompletedTaskCount()J
lstore 7
aload 0
getfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
invokevirtual java/util/concurrent/ThreadPoolExecutor/getTaskCount()J
lstore 9
aload 0
getfield com/alipay/android/phone/mrpc/core/s/g J
lconst_0
lcmp
ifne L1
lconst_0
lstore 3
L2:
aload 0
getfield com/alipay/android/phone/mrpc/core/s/h I
ifne L3
L4:
aload 11
bipush 9
anewarray java/lang/Object
dup
iconst_0
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
lload 7
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
lload 9
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_3
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_4
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_5
aload 0
getfield com/alipay/android/phone/mrpc/core/s/e J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 6
aload 0
getfield com/alipay/android/phone/mrpc/core/s/f J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 7
aload 0
getfield com/alipay/android/phone/mrpc/core/s/g J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 8
aload 0
getfield com/alipay/android/phone/mrpc/core/s/h I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
pop
L0:
new com/alipay/android/phone/mrpc/core/x
dup
aload 0
aload 1
checkcast com/alipay/android/phone/mrpc/core/v
invokespecial com/alipay/android/phone/mrpc/core/x/<init>(Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/v;)V
astore 1
new com/alipay/android/phone/mrpc/core/t
dup
aload 0
aload 1
aload 1
invokespecial com/alipay/android/phone/mrpc/core/t/<init>(Lcom/alipay/android/phone/mrpc/core/s;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/x;)V
astore 1
aload 0
getfield com/alipay/android/phone/mrpc/core/s/c Ljava/util/concurrent/ThreadPoolExecutor;
aload 1
invokevirtual java/util/concurrent/ThreadPoolExecutor/execute(Ljava/lang/Runnable;)V
aload 1
areturn
L1:
aload 0
getfield com/alipay/android/phone/mrpc/core/s/e J
ldc2_w 1000L
lmul
aload 0
getfield com/alipay/android/phone/mrpc/core/s/g J
ldiv
bipush 10
lshr
lstore 3
goto L2
L3:
aload 0
getfield com/alipay/android/phone/mrpc/core/s/f J
aload 0
getfield com/alipay/android/phone/mrpc/core/s/h I
i2l
ldiv
lstore 5
goto L4
.limit locals 12
.limit stack 6
.end method

.method public final a(J)V
aload 0
aload 0
getfield com/alipay/android/phone/mrpc/core/s/e J
lload 1
ladd
putfield com/alipay/android/phone/mrpc/core/s/e J
return
.limit locals 3
.limit stack 5
.end method

.method public final b(J)V
aload 0
aload 0
getfield com/alipay/android/phone/mrpc/core/s/f J
lload 1
ladd
putfield com/alipay/android/phone/mrpc/core/s/f J
aload 0
aload 0
getfield com/alipay/android/phone/mrpc/core/s/h I
iconst_1
iadd
putfield com/alipay/android/phone/mrpc/core/s/h I
return
.limit locals 3
.limit stack 5
.end method

.method public final c(J)V
aload 0
aload 0
getfield com/alipay/android/phone/mrpc/core/s/g J
lload 1
ladd
putfield com/alipay/android/phone/mrpc/core/s/g J
return
.limit locals 3
.limit stack 5
.end method
