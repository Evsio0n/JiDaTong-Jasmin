.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory
.super java/lang/Object
.implements java/util/concurrent/ThreadFactory
.inner class private static DefaultThreadFactory inner com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory outer com/nostra13/universalimageloader/core/DefaultConfigurationFactory

.field private static final 'poolNumber' Ljava/util/concurrent/atomic/AtomicInteger;

.field private final 'group' Ljava/lang/ThreadGroup;

.field private final 'namePrefix' Ljava/lang/String;

.field private final 'threadNumber' Ljava/util/concurrent/atomic/AtomicInteger;

.field private final 'threadPriority' I

.method static <clinit>()V
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putstatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/poolNumber Ljava/util/concurrent/atomic/AtomicInteger;
return
.limit locals 0
.limit stack 3
.end method

.method <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/threadNumber Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/threadPriority I
aload 0
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getThreadGroup()Ljava/lang/ThreadGroup;
putfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/group Ljava/lang/ThreadGroup;
aload 0
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/poolNumber Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/getAndIncrement()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-thread-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/namePrefix Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
new java/lang/Thread
dup
aload 0
getfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/group Ljava/lang/ThreadGroup;
aload 1
new java/lang/StringBuilder
dup
aload 0
getfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/namePrefix Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/threadNumber Ljava/util/concurrent/atomic/AtomicInteger;
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
getfield com/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory/threadPriority I
invokevirtual java/lang/Thread/setPriority(I)V
aload 1
areturn
.limit locals 2
.limit stack 7
.end method
