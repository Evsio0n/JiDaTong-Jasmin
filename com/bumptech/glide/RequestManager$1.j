.bytecode 50.0
.class synchronized com/bumptech/glide/RequestManager$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bumptech/glide/RequestManager/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
.inner class inner com/bumptech/glide/RequestManager$1

.field final synthetic 'this$0' Lcom/bumptech/glide/RequestManager;

.field final synthetic 'val$lifecycle' Lcom/bumptech/glide/manager/Lifecycle;

.method <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$1/this$0 Lcom/bumptech/glide/RequestManager;
aload 0
aload 2
putfield com/bumptech/glide/RequestManager$1/val$lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/bumptech/glide/RequestManager$1/val$lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager$1/this$0 Lcom/bumptech/glide/RequestManager;
invokeinterface com/bumptech/glide/manager/Lifecycle/addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V 1
return
.limit locals 1
.limit stack 2
.end method
