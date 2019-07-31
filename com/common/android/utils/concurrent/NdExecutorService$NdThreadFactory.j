.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory
.super java/lang/Object
.implements java/util/concurrent/ThreadFactory
.inner class static NdThreadFactory inner com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory outer com/common/android/utils/concurrent/NdExecutorService

.field private final 'group' Ljava/lang/ThreadGroup;

.field private final 'namePrefix' Ljava/lang/String;

.field private 'priority' I

.field private final 'threadNumber' Ljava/util/concurrent/atomic/AtomicInteger;

.method private <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/threadNumber Ljava/util/concurrent/atomic/AtomicInteger;
invokestatic java/lang/System/getSecurityManager()Ljava/lang/SecurityManager;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual java/lang/SecurityManager/getThreadGroup()Ljava/lang/ThreadGroup;
astore 3
L1:
aload 0
aload 3
putfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/group Ljava/lang/ThreadGroup;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pool-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-thread-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/namePrefix Ljava/lang/String;
aload 0
iload 1
putfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/priority I
return
L0:
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getThreadGroup()Ljava/lang/ThreadGroup;
astore 3
goto L1
.limit locals 4
.limit stack 4
.end method

.method public static newBackgroundThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
new com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory
dup
iconst_1
ldc "backround"
invokespecial com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/<init>(ILjava/lang/String;)V
areturn
.limit locals 0
.limit stack 4
.end method

.method public static newCachedThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
new com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory
dup
bipush 10
ldc "cached"
invokespecial com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/<init>(ILjava/lang/String;)V
areturn
.limit locals 0
.limit stack 4
.end method

.method public static newTinyHttpThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
new com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory
dup
iconst_5
ldc "tiny_http"
invokespecial com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/<init>(ILjava/lang/String;)V
areturn
.limit locals 0
.limit stack 4
.end method

.method public static newUploadDownloadThreadFactory()Lcom/common/android/utils/concurrent/NdExecutorService$NdThreadFactory;
new com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory
dup
iconst_5
ldc "file_upload_download"
invokespecial com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/<init>(ILjava/lang/String;)V
areturn
.limit locals 0
.limit stack 4
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
new java/lang/Thread
dup
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/group Ljava/lang/ThreadGroup;
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/namePrefix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/threadNumber Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/getAndIncrement()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokespecial java/lang/Thread/<init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
astore 1
aload 1
invokevirtual java/lang/Thread/isDaemon()Z
ifeq L0
aload 1
iconst_0
invokevirtual java/lang/Thread/setDaemon(Z)V
L0:
aload 1
aload 0
getfield com/common/android/utils/concurrent/NdExecutorService$NdThreadFactory/priority I
invokevirtual java/lang/Thread/setPriority(I)V
aload 1
areturn
.limit locals 2
.limit stack 7
.end method
