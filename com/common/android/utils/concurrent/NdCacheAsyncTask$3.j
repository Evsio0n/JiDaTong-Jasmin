.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdCacheAsyncTask$3
.super com/common/android/utils/concurrent/FutureTask
.signature "Lcom/common/android/utils/concurrent/FutureTask<TResult;>;"
.enclosing method com/common/android/utils/concurrent/NdCacheAsyncTask/<init>()V
.inner class inner com/common/android/utils/concurrent/NdCacheAsyncTask$3

.field final synthetic 'this$0' Lcom/common/android/utils/concurrent/NdCacheAsyncTask;

.method <init>(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;Ljava/util/concurrent/Callable;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdCacheAsyncTask$3/this$0 Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aload 0
aload 2
invokespecial com/common/android/utils/concurrent/FutureTask/<init>(Ljava/util/concurrent/Callable;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected done()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/util/concurrent/ExecutionException from L0 to L1 using L3
.catch java/util/concurrent/CancellationException from L0 to L1 using L4
L0:
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$3/this$0 Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aload 0
invokevirtual com/common/android/utils/concurrent/NdCacheAsyncTask$3/get()Ljava/lang/Object;
invokestatic com/common/android/utils/concurrent/NdCacheAsyncTask/access$500(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;Ljava/lang/Object;)V
L1:
return
L2:
astore 1
ldc "NdTinyHttpAsyncTask"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
L3:
astore 1
new java/lang/RuntimeException
dup
ldc "An error occured while executing doInBackground()"
aload 1
invokevirtual java/util/concurrent/ExecutionException/getCause()Ljava/lang/Throwable;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 1
aload 0
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$3/this$0 Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aconst_null
invokestatic com/common/android/utils/concurrent/NdCacheAsyncTask/access$500(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 4
.end method
