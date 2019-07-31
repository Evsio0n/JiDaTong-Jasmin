.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/f
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener

.field final synthetic 'a' Lcom/alipay/sdk/auth/e;

.method <init>(Lcom/alipay/sdk/auth/e;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/f/a Lcom/alipay/sdk/auth/e;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/alipay/sdk/auth/f/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/b Lcom/alipay/sdk/auth/AuthActivity$b;
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
iconst_1
invokestatic com/alipay/sdk/auth/AuthActivity/a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
pop
aload 0
getfield com/alipay/sdk/auth/f/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/a Landroid/webkit/SslErrorHandler;
invokevirtual android/webkit/SslErrorHandler/proceed()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 2
.end method
