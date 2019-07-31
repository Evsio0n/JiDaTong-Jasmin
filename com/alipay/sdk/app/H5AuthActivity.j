.bytecode 50.0
.class public synchronized com/alipay/sdk/app/H5AuthActivity
.super com/alipay/sdk/app/H5PayActivity

.method public <init>()V
aload 0
invokespecial com/alipay/sdk/app/H5PayActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L3
getstatic com/alipay/sdk/app/AuthTask/a Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 1
invokevirtual java/lang/Object/notify()V
L1:
aload 1
monitorexit
L4:
return
L3:
astore 2
aload 1
monitorexit
aload 2
athrow
L2:
astore 2
goto L1
.limit locals 3
.limit stack 1
.end method
