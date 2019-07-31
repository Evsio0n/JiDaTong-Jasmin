.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$12$1$1
.super java/lang/Object
.implements com/bestpay/plugin/CallBack
.enclosing method com/bestpay/plugin/Plugin$12$1/execute()Z
.inner class inner com/bestpay/plugin/Plugin$12
.inner class inner com/bestpay/plugin/Plugin$12$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1$1

.field final synthetic 'this$2' Lcom/bestpay/plugin/Plugin$12$1;

.field private final synthetic 'val$cau' Lcom/bestpay/plugin/CheckApkUpdater;

.method <init>(Lcom/bestpay/plugin/Plugin$12$1;Lcom/bestpay/plugin/CheckApkUpdater;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$12$1$1/this$2 Lcom/bestpay/plugin/Plugin$12$1;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$12$1$1/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public execute()Z
new java/lang/Thread
dup
new com/bestpay/plugin/Plugin$12$1$1$1
dup
aload 0
aload 0
getfield com/bestpay/plugin/Plugin$12$1$1/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
invokespecial com/bestpay/plugin/Plugin$12$1$1$1/<init>(Lcom/bestpay/plugin/Plugin$12$1$1;Lcom/bestpay/plugin/CheckApkUpdater;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
iconst_0
ireturn
.limit locals 1
.limit stack 6
.end method
