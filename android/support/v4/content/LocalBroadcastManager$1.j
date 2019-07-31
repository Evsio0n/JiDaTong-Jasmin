.bytecode 50.0
.class synchronized android/support/v4/content/LocalBroadcastManager$1
.super android/os/Handler
.enclosing method android/support/v4/content/LocalBroadcastManager/<init>(Landroid/content/Context;)V
.inner class inner android/support/v4/content/LocalBroadcastManager$1

.field final synthetic 'this$0' Landroid/support/v4/content/LocalBroadcastManager;

.method <init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V
aload 0
aload 1
putfield android/support/v4/content/LocalBroadcastManager$1/this$0 Landroid/support/v4/content/LocalBroadcastManager;
aload 0
aload 2
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
default : L1
L1:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield android/support/v4/content/LocalBroadcastManager$1/this$0 Landroid/support/v4/content/LocalBroadcastManager;
invokestatic android/support/v4/content/LocalBroadcastManager/access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
return
.limit locals 2
.limit stack 2
.end method
