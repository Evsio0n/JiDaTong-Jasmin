.bytecode 50.0
.class final synchronized com/alipay/apmobilesecuritysdk/face/a$b
.super java/lang/Object
.inner class private final b inner com/alipay/apmobilesecuritysdk/face/a$b outer com/alipay/apmobilesecuritysdk/face/a

.field 'a' I

.field 'b' Ljava/lang/String;

.field 'c' Ljava/lang/String;

.field 'd' Ljava/lang/String;

.field 'e' Lcom/alipay/apmobilesecuritysdk/face/a$a;

.field final synthetic 'f' Lcom/alipay/apmobilesecuritysdk/face/a;

.method public <init>(Lcom/alipay/apmobilesecuritysdk/face/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alipay/apmobilesecuritysdk/face/a$b/a I
aload 0
aload 4
putfield com/alipay/apmobilesecuritysdk/face/a$b/d Ljava/lang/String;
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/b/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$b/b Ljava/lang/String;
L1:
new java/lang/StringBuilder
dup
ldc "Utdid = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 0
aload 3
putfield com/alipay/apmobilesecuritysdk/face/a$b/c Ljava/lang/String;
aload 0
aconst_null
putfield com/alipay/apmobilesecuritysdk/face/a$b/e Lcom/alipay/apmobilesecuritysdk/face/a$a;
return
L0:
aload 0
aload 2
putfield com/alipay/apmobilesecuritysdk/face/a$b/b Ljava/lang/String;
goto L1
.limit locals 5
.limit stack 3
.end method

.method private a()V
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/d(Lcom/alipay/apmobilesecuritysdk/face/a;)Z
ifeq L4
return
L4:
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_1
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/a I
istore 1
invokestatic com/alipay/apmobilesecuritysdk/d/a/b()Ljava/lang/String;
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
ldc "tid"
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/c Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "utdid"
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/b Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 2
ldc "umid"
invokestatic com/alipay/apmobilesecuritysdk/d/a/a()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "userId"
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/d Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
aload 2
invokestatic com/alipay/apmobilesecuritysdk/face/e/a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/e Lcom/alipay/apmobilesecuritysdk/face/a$a;
ifnull L1
new com/alipay/apmobilesecuritysdk/face/a$c
dup
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokespecial com/alipay/apmobilesecuritysdk/face/a$c/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
astore 2
aload 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/b(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/c Ljava/lang/String;
aload 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/b Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 2
invokestatic com/alipay/apmobilesecuritysdk/d/a/a()Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/a Ljava/lang/String;
aload 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/d Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "[*]result.apdid     = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$c/c Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.token     = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$c/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.umid      = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$c/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.clientKey = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$c/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/e Lcom/alipay/apmobilesecuritysdk/face/a$a;
astore 2
L1:
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
return
L2:
astore 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
return
L3:
astore 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
aload 2
athrow
.limit locals 3
.limit stack 3
.end method
