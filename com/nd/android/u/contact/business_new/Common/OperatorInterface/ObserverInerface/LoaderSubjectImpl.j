.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/ILoaderSubject

.field private static 'instance' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;

.field private 'listGroupObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;>;"

.field private 'listOrgObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl
dup
invokespecial com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listGroupObserver Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listOrgObserver Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
.catch all from L0 to L1 using L2
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
astore 0
L1:
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public addGroupLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
L3:
aload 0
monitorexit
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listGroupObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listGroupObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
goto L3
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public addOrgLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
L3:
aload 0
monitorexit
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listOrgObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listOrgObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
goto L3
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public notifyGroupChanged(JI)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listGroupObserver Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver
astore 6
L3:
aload 6
lload 1
iload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver/onGroupChanged(JI)V 3
L4:
goto L1
L5:
astore 6
L6:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L7:
goto L1
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
L8:
aload 4
invokeinterface java/util/List/clear()V 0
L9:
aload 0
monitorexit
return
.limit locals 7
.limit stack 4
.end method

.method public notifyOrgChanged(JI)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listOrgObserver Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver
astore 6
L3:
aload 6
lload 1
iload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver/onOrgChanged(JI)V 3
L4:
goto L1
L5:
astore 6
L6:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L7:
goto L1
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
L8:
aload 4
invokeinterface java/util/List/clear()V 0
L9:
aload 0
monitorexit
return
.limit locals 7
.limit stack 4
.end method

.method public removeGroupLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoaderObserver;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
L3:
aload 0
monitorexit
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listGroupObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L1:
goto L3
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public removeOrgLoaderObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgLoaderObserver;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
L3:
aload 0
monitorexit
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/listOrgObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L1:
goto L3
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
