.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/e/f
.super java/lang/Object

.field private static 'a' Ljava/lang/String;

.field private static 'b' Ljava/lang/String;

.method static <clinit>()V
ldc ""
putstatic com/alipay/apmobilesecuritysdk/e/f/a Ljava/lang/String;
ldc ""
putstatic com/alipay/apmobilesecuritysdk/e/f/b Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public static a()Ljava/lang/String;
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/e/f
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/e/f/a Ljava/lang/String;
astore 0
L1:
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public static a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/e/f
monitorenter
aload 0
ifnull L1
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
putstatic com/alipay/apmobilesecuritysdk/e/f/a Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
putstatic com/alipay/apmobilesecuritysdk/e/f/b Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "Update Token Storage. apdid = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/alipay/apmobilesecuritysdk/e/f/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", token = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/alipay/apmobilesecuritysdk/e/f/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
L1:
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
return
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public static a(Landroid/content/Context;)Z
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
ldc com/alipay/apmobilesecuritysdk/e/f
monitorenter
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/e/b(Landroid/content/Context;)J
lstore 3
new java/lang/StringBuilder
dup
ldc "[*]validTime="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]Now      ="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
lload 1
lload 3
lsub
invokestatic java/lang/Math/abs(J)J
lstore 1
L1:
lload 1
ldc2_w 86400000L
lcmp
ifge L5
iconst_1
istore 5
L6:
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
iload 5
ireturn
L2:
astore 0
L4:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L5:
iconst_0
istore 5
goto L6
L3:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
athrow
.limit locals 6
.limit stack 4
.end method

.method public static b()Ljava/lang/String;
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/e/f
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/e/f/b Ljava/lang/String;
astore 0
L1:
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/e/f
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method
