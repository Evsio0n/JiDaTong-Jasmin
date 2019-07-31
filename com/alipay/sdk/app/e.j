.bytecode 50.0
.class final synchronized com/alipay/sdk/app/e
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener

.field final synthetic 'a' Lcom/alipay/sdk/app/c;

.method <init>(Lcom/alipay/sdk/app/c;)V
aload 0
aload 1
putfield com/alipay/sdk/app/e/a Lcom/alipay/sdk/app/c;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/alipay/sdk/app/e/a Lcom/alipay/sdk/app/c;
getfield com/alipay/sdk/app/c/a Landroid/webkit/SslErrorHandler;
invokevirtual android/webkit/SslErrorHandler/cancel()V
aload 0
getfield com/alipay/sdk/app/e/a Lcom/alipay/sdk/app/c;
getfield com/alipay/sdk/app/c/b Lcom/alipay/sdk/app/b;
iconst_0
invokestatic com/alipay/sdk/app/b/a(Lcom/alipay/sdk/app/b;Z)Z
pop
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
aload 0
getfield com/alipay/sdk/app/e/a Lcom/alipay/sdk/app/c;
getfield com/alipay/sdk/app/c/b Lcom/alipay/sdk/app/b;
invokestatic com/alipay/sdk/app/b/a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 3
.limit stack 2
.end method
