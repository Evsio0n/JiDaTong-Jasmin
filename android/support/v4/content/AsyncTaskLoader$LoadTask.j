.bytecode 50.0
.class final synchronized android/support/v4/content/AsyncTaskLoader$LoadTask
.super android/support/v4/content/ModernAsyncTask
.implements java/lang/Runnable
.signature "Landroid/support/v4/content/ModernAsyncTask<Ljava/lang/Void;Ljava/lang/Void;TD;>;Ljava/lang/Runnable;"
.inner class final LoadTask inner android/support/v4/content/AsyncTaskLoader$LoadTask outer android/support/v4/content/AsyncTaskLoader

.field private 'done' Ljava/util/concurrent/CountDownLatch;

.field 'result' Ljava/lang/Object; signature "TD;"

.field final synthetic 'this$0' Landroid/support/v4/content/AsyncTaskLoader;

.field 'waiting' Z

.method <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
aload 0
aload 1
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/this$0 Landroid/support/v4/content/AsyncTaskLoader;
aload 0
invokespecial android/support/v4/content/ModernAsyncTask/<init>()V
aload 0
new java/util/concurrent/CountDownLatch
dup
iconst_1
invokespecial java/util/concurrent/CountDownLatch/<init>(I)V
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual android/support/v4/content/AsyncTaskLoader$LoadTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
.signature "([Ljava/lang/Void;)TD;"
aload 0
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/this$0 Landroid/support/v4/content/AsyncTaskLoader;
invokevirtual android/support/v4/content/AsyncTaskLoader/onLoadInBackground()Ljava/lang/Object;
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/result Ljava/lang/Object;
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/result Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onCancelled()V
.catch all from L0 to L1 using L2
L0:
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/this$0 Landroid/support/v4/content/AsyncTaskLoader;
aload 0
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/result Ljava/lang/Object;
invokevirtual android/support/v4/content/AsyncTaskLoader/dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
L1:
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
invokevirtual java/util/concurrent/CountDownLatch/countDown()V
return
L2:
astore 1
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
invokevirtual java/util/concurrent/CountDownLatch/countDown()V
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.signature "(TD;)V"
.catch all from L0 to L1 using L2
L0:
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/this$0 Landroid/support/v4/content/AsyncTaskLoader;
aload 0
aload 1
invokevirtual android/support/v4/content/AsyncTaskLoader/dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
L1:
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
invokevirtual java/util/concurrent/CountDownLatch/countDown()V
return
L2:
astore 1
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/done Ljava/util/concurrent/CountDownLatch;
invokevirtual java/util/concurrent/CountDownLatch/countDown()V
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public run()V
aload 0
iconst_0
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/this$0 Landroid/support/v4/content/AsyncTaskLoader;
invokevirtual android/support/v4/content/AsyncTaskLoader/executePendingTask()V
return
.limit locals 1
.limit stack 2
.end method
