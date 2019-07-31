.bytecode 50.0
.class final synchronized com/alipay/sdk/app/d
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener

.field final synthetic 'a' Lcom/alipay/sdk/app/c;

.method <init>(Lcom/alipay/sdk/app/c;)V
aload 0
aload 1
putfield com/alipay/sdk/app/d/a Lcom/alipay/sdk/app/c;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/alipay/sdk/app/d/a Lcom/alipay/sdk/app/c;
getfield com/alipay/sdk/app/c/b Lcom/alipay/sdk/app/b;
iconst_1
invokestatic com/alipay/sdk/app/b/a(Lcom/alipay/sdk/app/b;Z)Z
pop
aload 0
getfield com/alipay/sdk/app/d/a Lcom/alipay/sdk/app/c;
getfield com/alipay/sdk/app/c/a Landroid/webkit/SslErrorHandler;
invokevirtual android/webkit/SslErrorHandler/proceed()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 2
.end method
