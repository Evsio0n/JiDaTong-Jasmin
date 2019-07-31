.bytecode 50.0
.class public synchronized com/nd/android/u/contact/listener/ContactDispatcher
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/listener/ContactDispatcher;

.field private 'mObserverMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/Vector<Lcom/nd/android/u/contact/listener/ContactObserver;>;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/android/u/contact/listener/ContactDispatcher/instance Lcom/nd/android/u/contact/listener/ContactDispatcher;
ifnonnull L3
ldc com/nd/android/u/contact/listener/ContactDispatcher
monitorenter
L0:
getstatic com/nd/android/u/contact/listener/ContactDispatcher/instance Lcom/nd/android/u/contact/listener/ContactDispatcher;
ifnonnull L1
new com/nd/android/u/contact/listener/ContactDispatcher
dup
invokespecial com/nd/android/u/contact/listener/ContactDispatcher/<init>()V
putstatic com/nd/android/u/contact/listener/ContactDispatcher/instance Lcom/nd/android/u/contact/listener/ContactDispatcher;
L1:
ldc com/nd/android/u/contact/listener/ContactDispatcher
monitorexit
L3:
getstatic com/nd/android/u/contact/listener/ContactDispatcher/instance Lcom/nd/android/u/contact/listener/ContactDispatcher;
areturn
L2:
astore 0
L4:
ldc com/nd/android/u/contact/listener/ContactDispatcher
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public notifyContactStateChange(IZ)V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
iconst_0
istore 3
iload 2
ifne L1
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
iconst_1
isub
istore 3
L1:
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
iload 3
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/setCount(I)V
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 4
aload 4
ifnull L0
aload 4
invokevirtual java/util/Vector/clone()Ljava/lang/Object;
checkcast java/util/Vector
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/listener/ContactObserver
invokeinterface com/nd/android/u/contact/listener/ContactObserver/onContactStateChange()V 0
goto L2
L0:
return
.limit locals 5
.limit stack 2
.end method

.method public notifyReceiveNewContact(II)V
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
iload 2
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/setCount(I)V
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 3
aload 3
ifnull L0
aload 3
invokevirtual java/util/Vector/clone()Ljava/lang/Object;
checkcast java/util/Vector
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/listener/ContactObserver
iload 2
invokeinterface com/nd/android/u/contact/listener/ContactObserver/onReceiverNewContact(I)V 1
goto L1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public registerObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 3
aload 3
ifnull L7
aload 3
monitorenter
L0:
aload 3
aload 2
invokevirtual java/util/Vector/contains(Ljava/lang/Object;)Z
ifne L1
aload 3
aload 2
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L1:
aload 3
monitorexit
L3:
return
L2:
astore 2
L4:
aload 3
monitorexit
L5:
aload 2
athrow
L6:
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 3
aload 3
aload 2
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L7:
return
.limit locals 4
.limit stack 3
.end method

.method public unregisterObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/listener/ContactDispatcher/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 3
aload 3
ifnull L5
aload 3
monitorenter
L0:
aload 3
aload 2
invokevirtual java/util/Vector/remove(Ljava/lang/Object;)Z
pop
aload 3
monitorexit
L1:
return
L2:
astore 2
L3:
aload 3
monitorexit
L4:
aload 2
athrow
L5:
return
.limit locals 4
.limit stack 2
.end method
