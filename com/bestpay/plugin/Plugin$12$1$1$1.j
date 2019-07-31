.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$12$1$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bestpay/plugin/Plugin$12$1$1/execute()Z
.inner class inner com/bestpay/plugin/Plugin$12
.inner class inner com/bestpay/plugin/Plugin$12$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1$1

.field final synthetic 'this$3' Lcom/bestpay/plugin/Plugin$12$1$1;

.field private final synthetic 'val$cau' Lcom/bestpay/plugin/CheckApkUpdater;

.method <init>(Lcom/bestpay/plugin/Plugin$12$1$1;Lcom/bestpay/plugin/CheckApkUpdater;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$12$1$1$1/this$3 Lcom/bestpay/plugin/Plugin$12$1$1;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$12$1$1$1/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/bestpay/plugin/Plugin$12$1$1$1/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
invokevirtual com/bestpay/plugin/CheckApkUpdater/downloadApk()V
return
.limit locals 1
.limit stack 1
.end method
