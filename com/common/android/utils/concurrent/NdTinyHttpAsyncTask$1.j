.bytecode 50.0
.class final synchronized com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1
.super java/lang/Object
.implements java/util/concurrent/ThreadFactory
.enclosing method com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class static final inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1

.field private final 'mCount' Ljava/util/concurrent/atomic/AtomicInteger;

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1/mCount Ljava/util/concurrent/atomic/AtomicInteger;
return
.limit locals 1
.limit stack 4
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
new java/lang/Thread
dup
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "NdTinyHttpAsyncTask #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1/mCount Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/getAndIncrement()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 5
.end method
