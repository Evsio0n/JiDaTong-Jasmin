.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/rable/newObtainGroupRable
.super com/common/android/utils/concurrent/NdAbstractTask

.field private 'bManual' Z

.field private 'uid' J

.method public <init>(ZJ)V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/uid J
aload 0
iconst_0
putfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/bManual Z
ldc "winnyang"
new java/lang/Throwable
dup
invokespecial java/lang/Throwable/<init>()V
invokestatic android/util/Log/getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "winnyang"
ldc "newObtainGroupRable create"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/bManual Z
aload 0
lload 2
putfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/uid J
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_3
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public final run()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
iconst_1
if_icmpne L0
return
L0:
getstatic com/product/android/business/config/Configuration/ISEXITPSP Z
ifeq L1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/getNewPspGroup()V
L1:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/uid J
aload 0
getfield com/nd/android/u/contact/business_new/rable/newObtainGroupRable/bManual Z
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/refresh(JZ)Z 3
pop
return
.limit locals 1
.limit stack 4
.end method
