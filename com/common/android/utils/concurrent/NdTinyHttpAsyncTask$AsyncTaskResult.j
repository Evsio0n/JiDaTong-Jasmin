.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult
.super java/lang/Object
.signature "<Data:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class private static AsyncTaskResult inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask

.field final 'mData' [Ljava/lang/Object; signature "[TData;"

.field final 'mTask' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;

.method transient <init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;[Ljava/lang/Object;)V
.signature "(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;[TData;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult/mTask Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
aload 0
aload 2
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method
