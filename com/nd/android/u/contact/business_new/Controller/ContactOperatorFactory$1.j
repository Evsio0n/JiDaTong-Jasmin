.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver
.enclosing method com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/<init>()V
.inner class inner com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;

.method <init>(Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1/this$0 Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGroupChanged(JI)V
iload 3
tableswitch 32001
L0
L0
default : L1
L1:
return
L0:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L1
invokestatic com/common/android/utils/concurrent/NdExecutors/getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 4
.limit stack 6
.end method
