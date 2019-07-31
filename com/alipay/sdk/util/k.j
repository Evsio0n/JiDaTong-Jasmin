.bytecode 50.0
.class final synchronized com/alipay/sdk/util/k
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/app/Activity;

.method <init>(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/alipay/sdk/util/k/a Landroid/app/Activity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/alipay/sdk/util/k/a Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method
