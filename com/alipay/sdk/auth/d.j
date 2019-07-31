.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/d
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/sdk/auth/AuthActivity;

.method <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/d/a Lcom/alipay/sdk/auth/AuthActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/alipay/sdk/auth/d/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/g(Lcom/alipay/sdk/auth/AuthActivity;)V
return
.limit locals 1
.limit stack 1
.end method
