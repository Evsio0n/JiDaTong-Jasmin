.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupSubject

.field private static 'instance' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;

.field private 'listDataObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;>;"

.field private 'listLoadObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;>;"

.field private 'listStateObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl
dup
invokespecial com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
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
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listStateObserver Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listDataObserver Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
.catch all from L0 to L1 using L2
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
astore 0
L1:
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listStateObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listStateObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public notifyGroupData(IJ)V
.catch java/lang/Exception from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listDataObserver Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L3:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
astore 6
L0:
aload 6
iload 1
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver/onDataChanged(IJ)V 3
L1:
goto L3
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
aload 4
invokeinterface java/util/List/clear()V 0
return
.limit locals 7
.limit stack 4
.end method

.method public notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
.catch java/lang/Exception from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listStateObserver Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L3:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
astore 7
L0:
aload 7
iload 1
lload 2
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver/onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V 4
L1:
goto L3
L2:
astore 7
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
aload 5
invokeinterface java/util/List/clear()V 0
return
.limit locals 8
.limit stack 5
.end method

.method public notifyLoadState(JI)V
.catch java/lang/Exception from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listLoadObserver Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L3:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver
astore 6
L0:
aload 6
lload 1
iload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver/onLoadStateChanged(JI)V 3
L1:
goto L3
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
aload 4
invokeinterface java/util/List/clear()V 0
return
.limit locals 7
.limit stack 4
.end method

.method public removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public removeGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/listStateObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
