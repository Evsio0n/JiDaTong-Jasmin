.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/UpgradeManager$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/rj/common/incrementalupdates/UpgradeManager/checkUpgradeWithOutTips(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$3

.field private final synthetic 'val$ctx' Landroid/content/Context;

.field private final synthetic 'val$param' Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;

.method <init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$3/val$ctx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$3/val$param Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$3/val$ctx Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/AUTO_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$3/val$param Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/checkUpgrade(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
return
.limit locals 1
.limit stack 3
.end method
