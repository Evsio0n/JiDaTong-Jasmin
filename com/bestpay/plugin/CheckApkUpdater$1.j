.bytecode 50.0
.class synchronized com/bestpay/plugin/CheckApkUpdater$1
.super android/os/Handler
.enclosing method com/bestpay/plugin/CheckApkUpdater
.inner class inner com/bestpay/plugin/CheckApkUpdater$1

.field final synthetic 'this$0' Lcom/bestpay/plugin/CheckApkUpdater;

.method <init>(Lcom/bestpay/plugin/CheckApkUpdater;Landroid/os/Looper;)V
aload 0
aload 1
putfield com/bestpay/plugin/CheckApkUpdater$1/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
aload 2
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
return
.limit locals 3
.limit stack 2
.end method

.method public dispatchMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 2
L0
L1
L2
default : L3
L3:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$1/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
invokevirtual com/bestpay/plugin/CheckApkUpdater/alertProgressDialog()V
goto L3
L1:
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$1/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
goto L3
L2:
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$1/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/context Landroid/content/Context;
ldc "\u83b7\u53d6\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L3
.limit locals 2
.limit stack 3
.end method
