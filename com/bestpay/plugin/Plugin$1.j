.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$1
.super android/os/Handler
.enclosing method com/bestpay/plugin/Plugin
.inner class inner com/bestpay/plugin/Plugin$1

.field final synthetic 'this$0' Lcom/bestpay/plugin/Plugin;

.method <init>(Lcom/bestpay/plugin/Plugin;Landroid/os/Looper;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$1/this$0 Lcom/bestpay/plugin/Plugin;
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
tableswitch 1
L0
default : L1
L1:
return
L0:
aload 0
getfield com/bestpay/plugin/Plugin$1/this$0 Lcom/bestpay/plugin/Plugin;
getfield com/bestpay/plugin/Plugin/dialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
