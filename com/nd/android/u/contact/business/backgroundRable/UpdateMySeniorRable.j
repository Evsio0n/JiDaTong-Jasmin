.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/UpdateMySeniorRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final run()V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getNewJuniorApplyCount(J)I
pop
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L3
ldc "DYF"
ldc "UpdateMySeniorRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
return
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 3
.end method
