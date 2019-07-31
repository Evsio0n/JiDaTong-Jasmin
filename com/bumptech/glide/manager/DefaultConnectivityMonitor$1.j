.bytecode 50.0
.class synchronized com/bumptech/glide/manager/DefaultConnectivityMonitor$1
.super android/content/BroadcastReceiver
.enclosing method com/bumptech/glide/manager/DefaultConnectivityMonitor
.inner class inner com/bumptech/glide/manager/DefaultConnectivityMonitor$1

.field final synthetic 'this$0' Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

.method <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
aload 0
aload 1
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z
istore 3
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
aload 1
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z
pop
iload 3
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z
if_icmpeq L0
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor$1/this$0 Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
invokestatic com/bumptech/glide/manager/DefaultConnectivityMonitor/access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z
invokeinterface com/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener/onConnectivityChanged(Z)V 1
L0:
return
.limit locals 4
.limit stack 3
.end method
