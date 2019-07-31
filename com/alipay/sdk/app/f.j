.bytecode 50.0
.class final synchronized com/alipay/sdk/app/f
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/sdk/app/b;

.method <init>(Lcom/alipay/sdk/app/b;)V
aload 0
aload 1
putfield com/alipay/sdk/app/f/a Lcom/alipay/sdk/app/b;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/alipay/sdk/app/f/a Lcom/alipay/sdk/app/b;
invokestatic com/alipay/sdk/app/b/b(Lcom/alipay/sdk/app/b;)V
return
.limit locals 1
.limit stack 1
.end method
