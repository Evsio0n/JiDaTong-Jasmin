.bytecode 50.0
.class synchronized com/common/android/utils/concurrent/NdCacheAsyncTask$InternalHandler
.super android/os/Handler
.inner class private static InternalHandler inner com/common/android/utils/concurrent/NdCacheAsyncTask$InternalHandler outer com/common/android/utils/concurrent/NdCacheAsyncTask

.method private <init>()V
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/common/android/utils/concurrent/NdCacheAsyncTask$1;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$InternalHandler/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult
astore 2
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
default : L2
L2:
return
L0:
aload 2
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mTask Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aload 2
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
iconst_0
aaload
invokestatic com/common/android/utils/concurrent/NdCacheAsyncTask/access$600(Lcom/common/android/utils/concurrent/NdCacheAsyncTask;Ljava/lang/Object;)V
return
L1:
aload 2
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mTask Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
aload 2
getfield com/common/android/utils/concurrent/NdCacheAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
invokevirtual com/common/android/utils/concurrent/NdCacheAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
