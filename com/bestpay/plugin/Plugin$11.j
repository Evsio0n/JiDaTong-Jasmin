.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$11
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/plugin/Plugin/alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
.inner class inner com/bestpay/plugin/Plugin$11

.field final synthetic 'this$0' Lcom/bestpay/plugin/Plugin;

.method <init>(Lcom/bestpay/plugin/Plugin;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$11/this$0 Lcom/bestpay/plugin/Plugin;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
getstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
ifnull L0
getstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.chinatelecom.bestpayplugin"
invokestatic com/bestpay/util/PackageUtils/getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
astore 1
aload 1
ifnull L0
aload 1
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
ldc "3.1.0"
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifle L0
getstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
invokeinterface java/lang/Runnable/run()V 0
L0:
return
.limit locals 3
.limit stack 2
.end method
