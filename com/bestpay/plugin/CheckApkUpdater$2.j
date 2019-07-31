.bytecode 50.0
.class synchronized com/bestpay/plugin/CheckApkUpdater$2
.super java/util/TimerTask
.enclosing method com/bestpay/plugin/CheckApkUpdater/alertProgressDialog()V
.inner class inner com/bestpay/plugin/CheckApkUpdater$2

.field final synthetic 'this$0' Lcom/bestpay/plugin/CheckApkUpdater;

.field private final synthetic 'val$timer' Ljava/util/Timer;

.method <init>(Lcom/bestpay/plugin/CheckApkUpdater;Ljava/util/Timer;)V
aload 0
aload 1
putfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
aload 2
putfield com/bestpay/plugin/CheckApkUpdater$2/val$timer Ljava/util/Timer;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/downedSize I
invokevirtual android/app/ProgressDialog/setProgress(I)V
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/getMax()I
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/getProgress()I
if_icmpne L0
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/this$0 Lcom/bestpay/plugin/CheckApkUpdater;
getfield com/bestpay/plugin/CheckApkUpdater/handler Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/bestpay/plugin/CheckApkUpdater$2/val$timer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
L0:
return
.limit locals 1
.limit stack 2
.end method
