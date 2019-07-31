.bytecode 50.0
.class synchronized android/support/v4/content/ModernAsyncTask$2
.super android/support/v4/content/ModernAsyncTask$WorkerRunnable
.signature "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable<TParams;TResult;>;"
.enclosing method android/support/v4/content/ModernAsyncTask/<init>()V
.inner class inner android/support/v4/content/ModernAsyncTask$2

.field final synthetic 'this$0' Landroid/support/v4/content/ModernAsyncTask;

.method <init>(Landroid/support/v4/content/ModernAsyncTask;)V
aload 0
aload 1
putfield android/support/v4/content/ModernAsyncTask$2/this$0 Landroid/support/v4/content/ModernAsyncTask;
aload 0
aconst_null
invokespecial android/support/v4/content/ModernAsyncTask$WorkerRunnable/<init>(Landroid/support/v4/content/ModernAsyncTask$1;)V
return
.limit locals 2
.limit stack 2
.end method

.method public call()Ljava/lang/Object;
.signature "()TResult;"
.throws java/lang/Exception
aload 0
getfield android/support/v4/content/ModernAsyncTask$2/this$0 Landroid/support/v4/content/ModernAsyncTask;
invokestatic android/support/v4/content/ModernAsyncTask/access$200(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
bipush 10
invokestatic android/os/Process/setThreadPriority(I)V
aload 0
getfield android/support/v4/content/ModernAsyncTask$2/this$0 Landroid/support/v4/content/ModernAsyncTask;
aload 0
getfield android/support/v4/content/ModernAsyncTask$2/this$0 Landroid/support/v4/content/ModernAsyncTask;
aload 0
getfield android/support/v4/content/ModernAsyncTask$2/mParams [Ljava/lang/Object;
invokevirtual android/support/v4/content/ModernAsyncTask/doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
invokestatic android/support/v4/content/ModernAsyncTask/access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 3
.end method
