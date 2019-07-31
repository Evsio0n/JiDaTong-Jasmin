.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/u
.super java/lang/Object
.implements java/util/concurrent/ThreadFactory

.field private final 'a' Ljava/util/concurrent/atomic/AtomicInteger;

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putfield com/alipay/android/phone/mrpc/core/u/a Ljava/util/concurrent/atomic/AtomicInteger;
return
.limit locals 1
.limit stack 4
.end method

.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
new java/lang/Thread
dup
aload 1
new java/lang/StringBuilder
dup
ldc "com.alipay.mobile.common.transport.http.HttpManager.HttpWorker #"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/u/a Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/getAndIncrement()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;Ljava/lang/String;)V
astore 1
aload 1
iconst_4
invokevirtual java/lang/Thread/setPriority(I)V
aload 1
areturn
.limit locals 2
.limit stack 6
.end method
