.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/InitGroupDataRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final run()V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLoginAllGroups()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainGroupLogin(I)V
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
ldc "DYF"
ldc "InitGroupDataRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
