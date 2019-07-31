.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/g
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener

.field final synthetic 'a' Lcom/alipay/sdk/auth/e;

.method <init>(Lcom/alipay/sdk/auth/e;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/a Landroid/webkit/SslErrorHandler;
invokevirtual android/webkit/SslErrorHandler/cancel()V
aload 0
getfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/b Lcom/alipay/sdk/auth/AuthActivity$b;
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
iconst_0
invokestatic com/alipay/sdk/auth/AuthActivity/a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/b Lcom/alipay/sdk/auth/AuthActivity$b;
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/c(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=150"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/b Lcom/alipay/sdk/auth/AuthActivity$b;
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
aload 1
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/g/a Lcom/alipay/sdk/auth/e;
getfield com/alipay/sdk/auth/e/b Lcom/alipay/sdk/auth/AuthActivity$b;
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
return
.limit locals 3
.limit stack 2
.end method
