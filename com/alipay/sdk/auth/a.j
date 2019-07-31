.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/a
.super java/lang/Object
.implements android/webkit/DownloadListener

.field final synthetic 'a' Lcom/alipay/sdk/auth/AuthActivity;

.method <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/a/a Lcom/alipay/sdk/auth/AuthActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 0
getfield com/alipay/sdk/auth/a/a Lcom/alipay/sdk/auth/AuthActivity;
aload 1
invokevirtual com/alipay/sdk/auth/AuthActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 1
return
.limit locals 7
.limit stack 4
.end method
