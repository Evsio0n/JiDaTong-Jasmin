.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/b/c
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/apmobilesecuritysdk/b/b;

.method public <init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/b/c/a Lcom/alipay/apmobilesecuritysdk/b/b;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/b/c/a Lcom/alipay/apmobilesecuritysdk/b/b;
invokevirtual com/alipay/apmobilesecuritysdk/b/b/a()V
L1:
return
L2:
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 1
.end method
