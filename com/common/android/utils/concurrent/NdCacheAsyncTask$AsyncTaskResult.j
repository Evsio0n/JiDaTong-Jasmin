.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult
.super java/lang/Object
.signature "<Data:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class private static AsyncTaskResult inner com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult outer com/common/android/utils/concurrent/NdCacheAsyncTask

.field final 'mData' [Ljava/lang/Object; signature "[TData;"

.field final 'mTask' Lcom/common/android/utils/concurrent/NdCacheAsyncTask;

.method transient <init>(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;[Ljava/lang/Object;)V
.signature "(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;[TData;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mTask Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aload 0
aload 2
putfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method
