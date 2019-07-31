.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/UpdateBlackListRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final run()V
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
invokevirtual com/nd/android/u/contact/business/OapUserManager/updateMyBlackListFromNet()V
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
ldc "DYF"
ldc "UpdateBlackListRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
