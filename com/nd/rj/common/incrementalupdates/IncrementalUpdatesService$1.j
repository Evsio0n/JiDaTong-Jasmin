.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1
.super com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub
.enclosing method com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
.inner class inner com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1

.field final synthetic 'this$0' Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;

.method <init>(Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1/this$0 Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;
aload 0
invokespecial com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public isForceUpdate()Z
.throws android/os/RemoteException
aload 0
getfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1/this$0 Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;
invokestatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/access$0(Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;)Z
ireturn
.limit locals 1
.limit stack 1
.end method
