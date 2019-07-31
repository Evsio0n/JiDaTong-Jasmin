.bytecode 50.0
.class synchronized android/support/v4/content/ModernAsyncTask$3
.super java/util/concurrent/FutureTask
.signature "Ljava/util/concurrent/FutureTask<TResult;>;"
.enclosing method android/support/v4/content/ModernAsyncTask/<init>()V
.inner class inner android/support/v4/content/ModernAsyncTask$3

.field final synthetic 'this$0' Landroid/support/v4/content/ModernAsyncTask;

.method <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
aload 0
aload 1
putfield android/support/v4/content/ModernAsyncTask$3/this$0 Landroid/support/v4/content/ModernAsyncTask;
aload 0
aload 2
invokespecial java/util/concurrent/FutureTask/<init>(Ljava/util/concurrent/Callable;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected done()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/util/concurrent/ExecutionException from L0 to L1 using L3
.catch java/util/concurrent/CancellationException from L0 to L1 using L4
.catch java/lang/Throwable from L0 to L1 using L5
L0:
aload 0
invokevirtual android/support/v4/content/ModernAsyncTask$3/get()Ljava/lang/Object;
astore 1
aload 0
getfield android/support/v4/content/ModernAsyncTask$3/this$0 Landroid/support/v4/content/ModernAsyncTask;
aload 1
invokestatic android/support/v4/content/ModernAsyncTask/access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
L1:
return
L2:
astore 1
ldc "AsyncTask"
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
getfield android/support/v4/content/ModernAsyncTask$3/this$0 Landroid/support/v4/content/ModernAsyncTask;
aconst_null
invokestatic android/support/v4/content/ModernAsyncTask/access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
return
L5:
astore 1
new java/lang/RuntimeException
dup
ldc "An error occured while executing doInBackground()"
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 4
.end method
