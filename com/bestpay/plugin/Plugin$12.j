.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$12
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bestpay/plugin/Plugin/checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
.inner class inner com/bestpay/plugin/Plugin$12
.inner class inner com/bestpay/plugin/Plugin$12$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1$1

.field final synthetic 'this$0' Lcom/bestpay/plugin/Plugin;

.field private final synthetic 'val$callback' Lcom/bestpay/plugin/CallBack;

.field private final synthetic 'val$cau' Lcom/bestpay/plugin/CheckApkUpdater;

.field private final synthetic 'val$context' Landroid/content/Context;

.method <init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CheckApkUpdater;Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$12/this$0 Lcom/bestpay/plugin/Plugin;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$12/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
aload 3
putfield com/bestpay/plugin/Plugin$12/val$context Landroid/content/Context;
aload 0
aload 4
putfield com/bestpay/plugin/Plugin$12/val$callback Lcom/bestpay/plugin/CallBack;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method static synthetic access$0(Lcom/bestpay/plugin/Plugin$12;)Lcom/bestpay/plugin/Plugin;
aload 0
getfield com/bestpay/plugin/Plugin$12/this$0 Lcom/bestpay/plugin/Plugin;
areturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
invokestatic android/os/Looper/prepare()V
aload 0
getfield com/bestpay/plugin/Plugin$12/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
aload 0
getfield com/bestpay/plugin/Plugin$12/val$context Landroid/content/Context;
new com/bestpay/plugin/Plugin$12$1
dup
aload 0
aload 0
getfield com/bestpay/plugin/Plugin$12/val$cau Lcom/bestpay/plugin/CheckApkUpdater;
invokespecial com/bestpay/plugin/Plugin$12$1/<init>(Lcom/bestpay/plugin/Plugin$12;Lcom/bestpay/plugin/CheckApkUpdater;)V
invokevirtual com/bestpay/plugin/CheckApkUpdater/apkUpdater(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)Z
putstatic com/bestpay/plugin/Plugin/isUpdate Z
getstatic com/bestpay/plugin/Plugin/isUpdate Z
ifne L0
ldc "geek2"
new java/lang/StringBuilder
dup
ldc "bool2:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/bestpay/plugin/Plugin/isUpdate Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/bestpay/util/LoggerHelper/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$12/val$callback Lcom/bestpay/plugin/CallBack;
invokeinterface com/bestpay/plugin/CallBack/execute()Z 0
pop
L0:
invokestatic android/os/Looper/loop()V
return
.limit locals 1
.limit stack 6
.end method
