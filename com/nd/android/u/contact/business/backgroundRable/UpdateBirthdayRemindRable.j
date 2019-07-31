.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final run()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainupdatebirthdayremind()I
iconst_1
if_icmpne L0
L1:
return
L0:
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/processNewRemind()Z
istore 1
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_0
invokevirtual com/product/android/business/bean/SysParam/setObtainupdatebirthdayremind(I)V
iload 1
ifeq L1
invokestatic java/lang/Thread/interrupted()Z
ifeq L1
return
.limit locals 2
.limit stack 2
.end method
