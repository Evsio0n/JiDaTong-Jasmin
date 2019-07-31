.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupSubject

.field private static 'instance' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;

.field private 'listDataObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;>;"

.field private 'listLoadObserver' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl
dup
invokespecial com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/<init>()V
putstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
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
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
.catch all from L0 to L1 using L2
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/instance Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
astore 0
L1:
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public addFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public notifyFriendGroupDataChanged(JI)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver
astore 5
L0:
aload 5
lload 1
iload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver/onDataChanged(JI)V 3
L1:
goto L3
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
return
.limit locals 6
.limit stack 4
.end method

.method public notifyFriendGroupLoadState(JI)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver
astore 5
L0:
aload 5
lload 1
iload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver/onLoadStateChanged(JI)V 3
L1:
goto L3
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
return
.limit locals 6
.limit stack 4
.end method

.method public removeFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listDataObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public removeFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/listLoadObserver Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
