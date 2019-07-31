.bytecode 50.0
.class public synchronized com/nd/android/u/controller/observer/MessageDispatcher
.super com/nd/android/u/controller/observer/MessageNotifier
.inner class inner com/nd/android/u/controller/observer/MessageDispatcher$1

.field private static final 'MAX_THREAD_COUNT' I = 1


.field private static 'sInstance' Lcom/nd/android/u/controller/observer/MessageDispatcher;

.field private 'mExecutorService' Ljava/util/concurrent/ExecutorService;

.method private <init>()V
aload 0
invokespecial com/nd/android/u/controller/observer/MessageNotifier/<init>()V
aload 0
iconst_1
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putfield com/nd/android/u/controller/observer/MessageDispatcher/mExecutorService Ljava/util/concurrent/ExecutorService;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/android/u/controller/observer/MessageDispatcher/sInstance Lcom/nd/android/u/controller/observer/MessageDispatcher;
ifnonnull L3
ldc com/nd/android/u/controller/observer/MessageDispatcher
monitorenter
L0:
getstatic com/nd/android/u/controller/observer/MessageDispatcher/sInstance Lcom/nd/android/u/controller/observer/MessageDispatcher;
ifnonnull L1
new com/nd/android/u/controller/observer/MessageDispatcher
dup
invokespecial com/nd/android/u/controller/observer/MessageDispatcher/<init>()V
putstatic com/nd/android/u/controller/observer/MessageDispatcher/sInstance Lcom/nd/android/u/controller/observer/MessageDispatcher;
L1:
ldc com/nd/android/u/controller/observer/MessageDispatcher
monitorexit
L3:
getstatic com/nd/android/u/controller/observer/MessageDispatcher/sInstance Lcom/nd/android/u/controller/observer/MessageDispatcher;
areturn
L2:
astore 0
L4:
ldc com/nd/android/u/controller/observer/MessageDispatcher
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher/mExecutorService Ljava/util/concurrent/ExecutorService;
ifnonnull L0
aload 0
iconst_1
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putfield com/nd/android/u/controller/observer/MessageDispatcher/mExecutorService Ljava/util/concurrent/ExecutorService;
L0:
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher/mExecutorService Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/controller/observer/MessageDispatcher$1
dup
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/controller/observer/MessageDispatcher$1/<init>(Lcom/nd/android/u/controller/observer/MessageDispatcher;Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 3
.limit stack 6
.end method

.method public notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/controller/observer/MessageNotifier/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public notifySendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
aload 1
invokespecial com/nd/android/u/controller/observer/MessageNotifier/notifySendNewMessage(ILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 3
.end method

.method public shutdownNow()V
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher/mExecutorService Ljava/util/concurrent/ExecutorService;
invokeinterface java/util/concurrent/ExecutorService/shutdownNow()Ljava/util/List; 0
pop
return
.limit locals 1
.limit stack 1
.end method
