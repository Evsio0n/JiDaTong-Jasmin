.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable<TParams;TResult;>;"
.enclosing method com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
.inner class inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2

.field final synthetic 'this$0' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;

.method <init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
aload 0
aconst_null
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$1;)V
return
.limit locals 2
.limit stack 2
.end method

.method public call()Ljava/lang/Object;
.signature "()TResult;"
.throws java/lang/Exception
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
invokestatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/access$300(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/mParams [Ljava/lang/Object;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/access$400(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 3
.end method
