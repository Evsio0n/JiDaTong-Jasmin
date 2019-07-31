.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/observer/RequestResultNotifier
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/observer/RequestResultNotifier;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/observer/RequestResultNotifier;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/observer/RequestResultNotifier;

.field private 'mObservers' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;>;"

.method static <clinit>()V
new com/nd/android/u/controller/observer/RequestResultNotifier
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/observer/RequestResultNotifier/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
iconst_1
anewarray com/nd/android/u/controller/observer/RequestResultNotifier
dup
iconst_0
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aastore
putstatic com/nd/android/u/controller/observer/RequestResultNotifier/ENUM$VALUES [Lcom/nd/android/u/controller/observer/RequestResultNotifier;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/observer/RequestResultNotifier;
ldc com/nd/android/u/controller/observer/RequestResultNotifier
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/observer/RequestResultNotifier
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/observer/RequestResultNotifier;
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/ENUM$VALUES [Lcom/nd/android/u/controller/observer/RequestResultNotifier;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/observer/RequestResultNotifier
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public notifyRequestResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
astore 5
aload 5
monitorenter
L0:
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 5
monitorexit
L3:
return
L4:
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IRequstResultObserver
iload 1
aload 2
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IRequstResultObserver/onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L5:
goto L1
L2:
astore 2
L6:
aload 5
monitorexit
L7:
aload 2
athrow
.limit locals 7
.limit stack 5
.end method

.method public registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
aload 2
monitorexit
L3:
return
L2:
astore 1
L4:
aload 2
monitorexit
L5:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/controller/observer/RequestResultNotifier/mObservers Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 2
monitorexit
L1:
return
L2:
astore 1
L3:
aload 2
monitorexit
L4:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method
