.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor/execute(Ljava/lang/Runnable;)V
.inner class private static SerialExecutor inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1

.field final synthetic 'this$0' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor;

.field final synthetic 'val$r' Ljava/lang/Runnable;

.method <init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor;
aload 0
aload 2
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1/val$r Ljava/lang/Runnable;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch all from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1/val$r Ljava/lang/Runnable;
invokeinterface java/lang/Runnable/run()V 0
L1:
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor/scheduleNext()V
return
L2:
astore 1
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1/this$0 Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor/scheduleNext()V
aload 1
athrow
.limit locals 2
.limit stack 1
.end method
