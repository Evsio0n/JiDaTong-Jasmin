.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bestpay/plugin/Plugin/pay(Landroid/content/Context;Ljava/lang/String;)V
.inner class inner com/bestpay/plugin/Plugin$2

.field private final synthetic 'val$context' Landroid/content/Context;

.field private final synthetic 'val$paymentParams' Ljava/lang/String;

.method <init>(Ljava/lang/String;Landroid/content/Context;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$2/val$paymentParams Ljava/lang/String;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$2/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "ORDERPARAMS"
aload 0
getfield com/bestpay/plugin/Plugin$2/val$paymentParams Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
new android/content/ComponentName
dup
ldc "com.chinatelecom.bestpayplugin"
ldc "com.chinatelecom.bestpayplugin.PaymentActivity"
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
L0:
aload 0
getfield com/bestpay/plugin/Plugin$2/val$context Landroid/content/Context;
checkcast android/app/Activity
aload 1
sipush 1000
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
ldc "Plugin"
new java/lang/StringBuilder
dup
ldc "lunch error message:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method
