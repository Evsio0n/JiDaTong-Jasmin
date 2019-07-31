.bytecode 50.0
.class final synchronized com/alipay/sdk/data/b
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/content/Context;

.field final synthetic 'b' Lcom/alipay/sdk/data/a;

.method <init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V
aload 0
aload 1
putfield com/alipay/sdk/data/b/b Lcom/alipay/sdk/data/a;
aload 0
aload 2
putfield com/alipay/sdk/data/b/a Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L6
.catch java/lang/Throwable from L4 to L5 using L2
L0:
new com/alipay/sdk/packet/impl/b
dup
invokespecial com/alipay/sdk/packet/impl/b/<init>()V
aload 0
getfield com/alipay/sdk/data/b/a Landroid/content/Context;
invokevirtual com/alipay/sdk/packet/impl/b/a(Landroid/content/Context;)Lcom/alipay/sdk/packet/b;
astore 1
L1:
aload 1
ifnull L5
L3:
aload 0
getfield com/alipay/sdk/data/b/b Lcom/alipay/sdk/data/a;
aload 1
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/data/a/a(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/data/b/b Lcom/alipay/sdk/data/a;
astore 1
L4:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "timeout"
aload 1
invokevirtual com/alipay/sdk/data/a/a()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "tbreturl"
aload 1
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
ldc "alipay_cashier_dynamic_config"
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
L5:
return
L2:
astore 1
return
L6:
astore 1
return
.limit locals 3
.limit stack 3
.end method
