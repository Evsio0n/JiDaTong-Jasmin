.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/ui/transfer/OrgDataTransfer
.super java/lang/Object
.inner class inner com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1

.field public static final 'FLAG_FIRST' I = -1


.field private static 'isSearchDept' Z

.field private static 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;

.field private static 'mTransfer' Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;

.field private 'mCallBack' Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;

.method static <clinit>()V
iconst_0
putstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/isSearchDept Z
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$100()Z
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/isSearchDept Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
ifnonnull L0
new com/nd/android/u/contact/ui/transfer/OrgDataTransfer
dup
invokespecial com/nd/android/u/contact/ui/transfer/OrgDataTransfer/<init>()V
putstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
L0:
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
ifnonnull L1
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
putstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
L1:
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static setSearchDept(Z)V
iload 0
putstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/isSearchDept Z
return
.limit locals 1
.limit stack 1
.end method

.method private startExecute(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
new com/nd/android/u/contact/ui/task/OrgAsyncTask
dup
aload 1
aload 2
invokespecial com/nd/android/u/contact/ui/task/OrgAsyncTask/<init>(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public clearData(Ljava/util/List;II)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/ui/bean/OrgNode;>;II)V"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
aload 1
iload 3
iconst_1
iadd
aload 1
invokeinterface java/util/List/size()I 0
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 5
invokeinterface java/util/List/size()I 0
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 5
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/ui/bean/OrgNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getLevel()I
iload 2
if_icmple L1
aload 1
aload 5
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
return
.limit locals 6
.limit stack 4
.end method

.method public getDirectChildren(IJLjava/lang/Integer;I)V
aload 0
new com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1
dup
aload 0
lload 2
iload 5
aload 4
iload 1
invokespecial com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/<init>(Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;JILjava/lang/Integer;I)V
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mCallBack Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;
invokespecial com/nd/android/u/contact/ui/transfer/OrgDataTransfer/startExecute(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
return
.limit locals 6
.limit stack 9
.end method

.method public getSearchDept()Z
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/isSearchDept Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public removeEventListener(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)V
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
ifnull L0
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/removeOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setEventListener(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)V
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
ifnonnull L0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
putstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
L0:
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/addOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setReqCallBack(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mCallBack Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public update(Z)V
getstatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
ifnull L0
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 2
.limit stack 6
.end method
