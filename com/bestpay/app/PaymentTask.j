.bytecode 50.0
.class public synchronized com/bestpay/app/PaymentTask
.super java/lang/Object

.field private 'mActivity' Landroid/app/Activity;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bestpay/app/PaymentTask/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public pay(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "&sdkVersion=%s&platform=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "3.0"
aastore
dup
iconst_1
ldc "android_3.0"
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/bestpay/app/PaymentTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.chinatelecom.bestpayplugin"
invokestatic com/bestpay/util/PackageUtils/getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
ifnonnull L0
new android/content/Intent
dup
aload 0
getfield com/bestpay/app/PaymentTask/mActivity Landroid/app/Activity;
ldc com/bestpay/app/H5PayActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc_w 67108864
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
ldc "arg_order_info"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/bestpay/app/PaymentTask/mActivity Landroid/app/Activity;
aload 2
sipush 1000
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L0:
aload 0
getfield com/bestpay/app/PaymentTask/mActivity Landroid/app/Activity;
aload 1
invokestatic com/bestpay/plugin/Plugin/pay(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 5
.end method
