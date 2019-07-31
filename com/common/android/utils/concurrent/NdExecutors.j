.bytecode 50.0
.class public synchronized com/common/android/utils/concurrent/NdExecutors
.super java/lang/Object
.inner class static final inner com/common/android/utils/concurrent/NdExecutors$1

.field private static 'mLastNdExecutorService' Lcom/common/android/utils/concurrent/NdExecutorService;

.field private static final 'mLock' Ljava/util/concurrent/locks/ReadWriteLock;

.field private static 'mNdExecutorService' Lcom/common/android/utils/concurrent/NdExecutorService;

.field private static final 'quitNotifier' Ljava/lang/Object;

.method static <clinit>()V
new java/util/concurrent/locks/ReentrantReadWriteLock
dup
invokespecial java/util/concurrent/locks/ReentrantReadWriteLock/<init>()V
putstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
new com/common/android/utils/concurrent/NdExecutorService
dup
invokespecial com/common/android/utils/concurrent/NdExecutorService/<init>()V
putstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static awaitQuit(J)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L5
.catch all from L6 to L7 using L5
.catch all from L8 to L9 using L10
.catch all from L11 to L12 using L10
L0:
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
putstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
new com/common/android/utils/concurrent/NdExecutorService
dup
invokespecial com/common/android/utils/concurrent/NdExecutorService/<init>()V
putstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
getstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
lload 0
invokevirtual com/common/android/utils/concurrent/NdExecutorService/awaitQuit(J)Z
istore 2
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
astore 3
aload 3
monitorenter
L3:
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
invokevirtual java/lang/Object/notifyAll()V
aload 3
monitorexit
L4:
aconst_null
putstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
iload 2
ireturn
L5:
astore 4
L6:
aload 3
monitorexit
L7:
aload 4
athrow
L2:
astore 4
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
astore 3
aload 3
monitorenter
L8:
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
invokevirtual java/lang/Object/notifyAll()V
aload 3
monitorexit
L9:
aconst_null
putstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
aload 4
athrow
L10:
astore 4
L11:
aload 3
monitorexit
L12:
aload 4
athrow
.limit locals 5
.limit stack 3
.end method

.method public static getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
.catch all from L0 to L1 using L2
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
L0:
ldc "NdExecutors"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getBackgroundThreadPool mNdExecutorService:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
invokevirtual com/common/android/utils/concurrent/NdExecutorService/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
astore 0
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
areturn
L2:
astore 0
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public static getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
.catch all from L0 to L1 using L2
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
L0:
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
invokevirtual com/common/android/utils/concurrent/NdExecutorService/getCacheThreadPool()Ljava/util/concurrent/ExecutorService;
astore 0
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
areturn
L2:
astore 0
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public static getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
.catch all from L0 to L1 using L2
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
L0:
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
invokevirtual com/common/android/utils/concurrent/NdExecutorService/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
astore 0
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
areturn
L2:
astore 0
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public static isQuit()Z
getstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
ifnonnull L0
iconst_1
ireturn
L0:
getstatic com/common/android/utils/concurrent/NdExecutors/mLastNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
invokevirtual com/common/android/utils/concurrent/NdExecutorService/isQuit()Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static quit()V
.catch all from L0 to L1 using L2
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
L0:
new com/common/android/utils/concurrent/NdExecutors$1
dup
invokespecial com/common/android/utils/concurrent/NdExecutors$1/<init>()V
astore 0
aload 0
bipush 10
invokevirtual java/lang/Thread/setPriority(I)V
aload 0
invokevirtual java/lang/Thread/start()V
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
return
L2:
astore 0
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/readLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public static wait4Quit(J)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch java/lang/InterruptedException from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch all from L5 to L8 using L7
.catch all from L9 to L10 using L7
.catch all from L10 to L2 using L2
.catch all from L11 to L12 using L7
ldc com/common/android/utils/concurrent/NdExecutors
monitorenter
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/isQuit()Z
istore 2
L1:
iload 2
ifeq L3
iconst_1
istore 2
L13:
ldc com/common/android/utils/concurrent/NdExecutors
monitorexit
iload 2
ireturn
L3:
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
astore 3
aload 3
monitorenter
L4:
getstatic com/common/android/utils/concurrent/NdExecutors/quitNotifier Ljava/lang/Object;
lload 0
invokevirtual java/lang/Object/wait(J)V
L5:
invokestatic com/common/android/utils/concurrent/NdExecutors/isQuit()Z
istore 2
aload 3
monitorexit
L8:
goto L13
L7:
astore 4
L9:
aload 3
monitorexit
L10:
aload 4
athrow
L2:
astore 3
ldc com/common/android/utils/concurrent/NdExecutors
monitorexit
aload 3
athrow
L6:
astore 4
L11:
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
L12:
goto L5
.limit locals 5
.limit stack 3
.end method

.method public init()V
.catch all from L0 to L1 using L2
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/writeLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
L0:
getstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
ifnonnull L1
new com/common/android/utils/concurrent/NdExecutorService
dup
invokespecial com/common/android/utils/concurrent/NdExecutorService/<init>()V
putstatic com/common/android/utils/concurrent/NdExecutors/mNdExecutorService Lcom/common/android/utils/concurrent/NdExecutorService;
L1:
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/writeLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
return
L2:
astore 1
getstatic com/common/android/utils/concurrent/NdExecutors/mLock Ljava/util/concurrent/locks/ReadWriteLock;
invokeinterface java/util/concurrent/locks/ReadWriteLock/writeLock()Ljava/util/concurrent/locks/Lock; 0
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
