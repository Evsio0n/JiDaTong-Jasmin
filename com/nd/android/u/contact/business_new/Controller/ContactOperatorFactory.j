.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory
.super java/lang/Object
.inner class inner com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1
.inner class inner com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$2

.field private static 'instance' Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;

.field private static 'mFriendGroup' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;

.field private static 'mGroup' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private static 'mOrg' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;

.field private 'obsGroup' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;

.field private 'obsOrg' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aconst_null
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aconst_null
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mFriendGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
new com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory
dup
invokespecial com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/<init>()V
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/instance Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
ifnonnull L0
aload 0
new com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$1/<init>(Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;)V
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
ifnonnull L1
aload 0
new com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$2
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory$2/<init>(Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;)V
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
L1:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/addGroupLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/addOrgLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;)V
return
.limit locals 1
.limit stack 4
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
.catch all from L0 to L1 using L2
ldc com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/instance Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
astore 0
L1:
ldc com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial java/lang/Object/finalize()V
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
ifnull L0
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/removeGroupLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
ifnull L1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/removeOrgLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/obsOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mFriendGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendGroupOperatorImpl
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendGroupOperatorImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mFriendGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
L1:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mFriendGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
astore 1
L3:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/setGroupLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)V 1
L1:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
astore 1
L3:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/setOrgLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Z 1
pop
L1:
getstatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/mOrg Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
astore 1
L3:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
