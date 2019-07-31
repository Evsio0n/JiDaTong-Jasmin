.bytecode 50.0
.class final synchronized com/alipay/sdk/util/f
.super java/lang/Object
.implements android/content/ServiceConnection

.field final synthetic 'a' Lcom/alipay/sdk/util/e;

.method <init>(Lcom/alipay/sdk/util/e;)V
aload 0
aload 1
putfield com/alipay/sdk/util/f/a Lcom/alipay/sdk/util/e;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.catch all from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/util/f/a Lcom/alipay/sdk/util/e;
invokestatic com/alipay/sdk/util/e/a(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/alipay/sdk/util/f/a Lcom/alipay/sdk/util/e;
aload 2
invokestatic com/alipay/android/app/IAlixPay$Stub/asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;
invokestatic com/alipay/sdk/util/e/a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
pop
aload 0
getfield com/alipay/sdk/util/f/a Lcom/alipay/sdk/util/e;
invokestatic com/alipay/sdk/util/e/a(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
invokevirtual java/lang/Object/notify()V
aload 1
monitorexit
L1:
return
L2:
astore 2
aload 1
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
aload 0
getfield com/alipay/sdk/util/f/a Lcom/alipay/sdk/util/e;
aconst_null
invokestatic com/alipay/sdk/util/e/a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
pop
return
.limit locals 2
.limit stack 2
.end method
