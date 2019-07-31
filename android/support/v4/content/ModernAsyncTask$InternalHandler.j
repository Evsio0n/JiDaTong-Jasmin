.bytecode 50.0
.class synchronized android/support/v4/content/ModernAsyncTask$InternalHandler
.super android/os/Handler
.inner class private static InternalHandler inner android/support/v4/content/ModernAsyncTask$InternalHandler outer android/support/v4/content/ModernAsyncTask

.method private <init>()V
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Landroid/support/v4/content/ModernAsyncTask$1;)V
aload 0
invokespecial android/support/v4/content/ModernAsyncTask$InternalHandler/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/support/v4/content/ModernAsyncTask$AsyncTaskResult
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
getfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mTask Landroid/support/v4/content/ModernAsyncTask;
aload 2
getfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
iconst_0
aaload
invokestatic android/support/v4/content/ModernAsyncTask/access$500(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
return
L1:
aload 2
getfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mTask Landroid/support/v4/content/ModernAsyncTask;
aload 2
getfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
invokevirtual android/support/v4/content/ModernAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
