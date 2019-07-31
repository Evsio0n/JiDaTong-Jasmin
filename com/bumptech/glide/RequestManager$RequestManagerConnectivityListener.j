.bytecode 50.0
.class synchronized com/bumptech/glide/RequestManager$RequestManagerConnectivityListener
.super java/lang/Object
.implements com/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener
.inner class private static RequestManagerConnectivityListener inner com/bumptech/glide/RequestManager$RequestManagerConnectivityListener outer com/bumptech/glide/RequestManager

.field private final 'requestTracker' Lcom/bumptech/glide/manager/RequestTracker;

.method public <init>(Lcom/bumptech/glide/manager/RequestTracker;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$RequestManagerConnectivityListener/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
return
.limit locals 2
.limit stack 2
.end method

.method public onConnectivityChanged(Z)V
iload 1
ifeq L0
aload 0
getfield com/bumptech/glide/RequestManager$RequestManagerConnectivityListener/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
invokevirtual com/bumptech/glide/manager/RequestTracker/restartRequests()V
L0:
return
.limit locals 2
.limit stack 1
.end method
