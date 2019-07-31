.bytecode 50.0
.class public synchronized com/bumptech/glide/manager/ConnectivityMonitorFactory
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
aload 1
ldc "android.permission.ACCESS_NETWORK_STATE"
invokevirtual android/content/Context/checkCallingOrSelfPermission(Ljava/lang/String;)I
ifne L0
iconst_1
istore 3
L1:
iload 3
ifeq L2
new com/bumptech/glide/manager/DefaultConnectivityMonitor
dup
aload 1
aload 2
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
areturn
L0:
iconst_0
istore 3
goto L1
L2:
new com/bumptech/glide/manager/NullConnectivityMonitor
dup
invokespecial com/bumptech/glide/manager/NullConnectivityMonitor/<init>()V
areturn
.limit locals 4
.limit stack 4
.end method
