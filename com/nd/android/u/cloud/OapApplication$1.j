.bytecode 50.0
.class synchronized com/nd/android/u/cloud/OapApplication$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/OapApplication/onCreate()V
.inner class inner com/nd/android/u/cloud/OapApplication$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/OapApplication;

.method <init>(Lcom/nd/android/u/cloud/OapApplication;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/OapApplication$1/this$0 Lcom/nd/android/u/cloud/OapApplication;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/nd/android/u/cloud/OapApplication/access$000()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/AUTO_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
invokestatic com/nd/android/u/cloud/helper/Utils/checkUpdate(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;)V
return
.limit locals 1
.limit stack 2
.end method
