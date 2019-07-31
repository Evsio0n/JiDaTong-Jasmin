.bytecode 50.0
.class final synchronized com/alipay/apmobilesecuritysdk/face/b
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/apmobilesecuritysdk/face/a;

.method <init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Throwable from L5 to L6 using L7
.catch all from L5 to L6 using L8
.catch java/lang/Throwable from L6 to L9 using L2
.catch all from L6 to L9 using L3
.catch java/lang/Throwable from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Throwable from L12 to L13 using L2
.catch all from L12 to L13 using L3
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/isEmpty()Z
ifne L13
aload 0
getfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/pollFirst()Ljava/lang/Object;
checkcast com/alipay/apmobilesecuritysdk/face/a$b
astore 2
L1:
aload 2
ifnull L0
L4:
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/d(Lcom/alipay/apmobilesecuritysdk/face/a;)Z
ifne L0
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_1
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
L5:
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/a I
istore 1
invokestatic com/alipay/apmobilesecuritysdk/d/a/b()Ljava/lang/String;
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 3
ldc "tid"
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/c Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
ldc "utdid"
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/b Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 3
ldc "umid"
invokestatic com/alipay/apmobilesecuritysdk/d/a/a()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
ldc "userId"
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/d Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
aload 3
invokestatic com/alipay/apmobilesecuritysdk/face/e/a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
pop
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/e Lcom/alipay/apmobilesecuritysdk/face/a$a;
ifnull L6
new com/alipay/apmobilesecuritysdk/face/a$c
dup
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokespecial com/alipay/apmobilesecuritysdk/face/a$c/<init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
astore 3
aload 3
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/b(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/c Ljava/lang/String;
aload 3
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/b Ljava/lang/String;
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/d/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;
pop
aload 3
invokestatic com/alipay/apmobilesecuritysdk/d/a/a()Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/a Ljava/lang/String;
aload 3
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/apmobilesecuritysdk/face/a$c/d Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "[*]result.apdid     = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
getfield com/alipay/apmobilesecuritysdk/face/a$c/c Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.token     = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
getfield com/alipay/apmobilesecuritysdk/face/a$c/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.umid      = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
getfield com/alipay/apmobilesecuritysdk/face/a$c/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/lang/StringBuilder
dup
ldc "[*]result.clientKey = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
getfield com/alipay/apmobilesecuritysdk/face/a$c/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/e Lcom/alipay/apmobilesecuritysdk/face/a$a;
astore 3
L6:
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
L9:
goto L0
L2:
astore 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;
pop
return
L7:
astore 3
L10:
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
L11:
goto L0
L3:
astore 2
aload 0
getfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;
pop
aload 2
athrow
L8:
astore 3
L12:
aload 2
getfield com/alipay/apmobilesecuritysdk/face/a$b/f Lcom/alipay/apmobilesecuritysdk/face/a;
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/face/a/a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
pop
aload 3
athrow
L13:
aload 0
getfield com/alipay/apmobilesecuritysdk/face/b/a Lcom/alipay/apmobilesecuritysdk/face/a;
invokestatic com/alipay/apmobilesecuritysdk/face/a/b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;
pop
return
.limit locals 4
.limit stack 3
.end method
