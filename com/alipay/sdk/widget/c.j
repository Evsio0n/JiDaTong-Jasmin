.bytecode 50.0
.class final synchronized com/alipay/sdk/widget/c
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/sdk/widget/a;

.method <init>(Lcom/alipay/sdk/widget/a;)V
aload 0
aload 1
putfield com/alipay/sdk/widget/c/a Lcom/alipay/sdk/widget/a;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/widget/c/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;
ifnull L1
L0:
aload 0
getfield com/alipay/sdk/widget/c/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;
invokevirtual com/alipay/sdk/widget/a$a/dismiss()V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 1
.end method
