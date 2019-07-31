.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$5
.super java/lang/Object
.implements com/bestpay/plugin/CallBack
.enclosing method com/bestpay/plugin/Plugin/pay(Landroid/content/Context;Ljava/util/Hashtable;)V
.inner class inner com/bestpay/plugin/Plugin$5

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public execute()Z
getstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
ifnull L0
getstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
invokeinterface java/lang/Runnable/run()V 0
L0:
getstatic com/bestpay/plugin/Plugin/isUpdate Z
ireturn
.limit locals 1
.limit stack 1
.end method
