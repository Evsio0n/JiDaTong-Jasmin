.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/business/backgroundRable/UpdateAppMenuRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
ldc "UpdateAppMenuRable"
areturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
lconst_0
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenu(J)Lcom/product/android/commonInterface/main/AppMenu;
pop
return
.limit locals 1
.limit stack 2
.end method
