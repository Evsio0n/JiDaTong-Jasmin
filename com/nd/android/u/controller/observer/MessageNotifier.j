.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/observer/MessageNotifier
.super java/lang/Object

.field private 'mObserverMap' Ljava/util/HashMap;
.signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/Vector<Lcom/nd/android/u/controller/innerInterface/IMessageObserver;>;>;"
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.end field

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method protected notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 3
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 4
aload 4
ifnull L8
aload 4
monitorenter
L0:
aload 4
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 4
monitorexit
L3:
return
L4:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageObserver
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageObserver/onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V 2
L5:
goto L1
L2:
astore 1
L6:
aload 4
monitorexit
L7:
aload 1
athrow
L8:
return
.limit locals 6
.limit stack 3
.end method

.method public notifyOtherMessage(ILandroid/os/Message;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 2
ifnonnull L8
L9:
return
L8:
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L9
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 3
aload 3
ifnull L9
aload 3
monitorenter
L0:
aload 3
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L6
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
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageObserver
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageObserver/onOtherMessageNotify(Landroid/os/Message;)V 1
L7:
goto L1
.limit locals 5
.limit stack 2
.end method

.method protected notifyReceiveMessage(ILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
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
ifne L2
L0:
return
L2:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageObserver
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageObserver/onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
goto L1
.limit locals 4
.limit stack 2
.end method

.method protected notifySendNewMessage(ILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Vector
astore 3
aload 3
ifnull L8
aload 3
monitorenter
L0:
aload 3
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 3
monitorexit
L3:
return
L4:
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageObserver
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageObserver/onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
L5:
goto L1
L2:
astore 2
L6:
aload 3
monitorexit
L7:
aload 2
athrow
L8:
return
.limit locals 5
.limit stack 2
.end method

.method public registAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
.signature "(Ljava/lang/Class<*>;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokestatic com/nd/android/u/chatUtil/ReflectUtil/getValuesFromClass(Ljava/lang/Class;)[I
astore 1
aload 1
ifnull L1
aload 1
arraylength
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L1
aload 0
aload 1
iload 3
iaload
aload 2
invokevirtual com/nd/android/u/controller/observer/MessageNotifier/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
iload 3
iconst_1
iadd
istore 3
goto L2
.limit locals 5
.limit stack 3
.end method

.method public registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
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
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
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

.method public unregistAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
.signature "(Ljava/lang/Class<*>;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokestatic com/nd/android/u/chatUtil/ReflectUtil/getValuesFromClass(Ljava/lang/Class;)[I
astore 1
aload 1
ifnull L1
aload 1
arraylength
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L1
aload 0
aload 1
iload 3
iaload
aload 2
invokevirtual com/nd/android/u/controller/observer/MessageNotifier/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
iload 3
iconst_1
iadd
istore 3
goto L2
.limit locals 5
.limit stack 3
.end method

.method public unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/controller/observer/MessageNotifier/mObserverMap Ljava/util/HashMap;
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
