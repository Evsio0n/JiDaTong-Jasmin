.bytecode 50.0
.class public synchronized abstract android/support/v4/content/AsyncTaskLoader
.super android/support/v4/content/Loader
.signature "<D:Ljava/lang/Object;>Landroid/support/v4/content/Loader<TD;>;"
.inner class final LoadTask inner android/support/v4/content/AsyncTaskLoader$LoadTask outer android/support/v4/content/AsyncTaskLoader

.field static final 'DEBUG' Z = 0


.field static final 'TAG' Ljava/lang/String; = "AsyncTaskLoader"

.field volatile 'mCancellingTask' Landroid/support/v4/content/AsyncTaskLoader$LoadTask; signature "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"

.field 'mHandler' Landroid/os/Handler;

.field 'mLastLoadCompleteTime' J

.field volatile 'mTask' Landroid/support/v4/content/AsyncTaskLoader$LoadTask; signature "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"

.field 'mUpdateThrottle' J

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/support/v4/content/Loader/<init>(Landroid/content/Context;)V
aload 0
ldc2_w -10000L
putfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
return
.limit locals 2
.limit stack 3
.end method

.method public cancelLoad()Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnull L0
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnull L1
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
ifeq L2
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_0
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
L2:
aload 0
aconst_null
putfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
L0:
iconst_0
ireturn
L1:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
ifeq L3
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_0
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
aconst_null
putfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_0
ireturn
L3:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_0
invokevirtual android/support/v4/content/AsyncTaskLoader$LoadTask/cancel(Z)Z
istore 1
iload 1
ifeq L4
aload 0
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
putfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
L4:
aload 0
aconst_null
putfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
.signature "(Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;TD;)V"
aload 0
aload 2
invokevirtual android/support/v4/content/AsyncTaskLoader/onCanceled(Ljava/lang/Object;)V
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 1
if_acmpne L0
aload 0
invokestatic android/os/SystemClock/uptimeMillis()J
putfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
aload 0
aconst_null
putfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 0
invokevirtual android/support/v4/content/AsyncTaskLoader/executePendingTask()V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
.signature "(Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;TD;)V"
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 1
if_acmpeq L0
aload 0
aload 1
aload 2
invokevirtual android/support/v4/content/AsyncTaskLoader/dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
return
L0:
aload 0
invokevirtual android/support/v4/content/AsyncTaskLoader/isAbandoned()Z
ifeq L1
aload 0
aload 2
invokevirtual android/support/v4/content/AsyncTaskLoader/onCanceled(Ljava/lang/Object;)V
return
L1:
aload 0
invokestatic android/os/SystemClock/uptimeMillis()J
putfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
aload 0
aconst_null
putfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 0
aload 2
invokevirtual android/support/v4/content/AsyncTaskLoader/deliverResult(Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial android/support/v4/content/Loader/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnull L0
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mTask="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invokevirtual java/io/PrintWriter/print(Ljava/lang/Object;)V
aload 3
ldc " waiting="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
invokevirtual java/io/PrintWriter/println(Z)V
L0:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnull L1
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mCancellingTask="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invokevirtual java/io/PrintWriter/print(Ljava/lang/Object;)V
aload 3
ldc " waiting="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
invokevirtual java/io/PrintWriter/println(Z)V
L1:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
lconst_0
lcmp
ifeq L2
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mUpdateThrottle="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
aload 3
invokestatic android/support/v4/util/TimeUtils/formatDuration(JLjava/io/PrintWriter;)V
aload 3
ldc " mLastLoadCompleteTime="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
invokestatic android/os/SystemClock/uptimeMillis()J
aload 3
invokestatic android/support/v4/util/TimeUtils/formatDuration(JJLjava/io/PrintWriter;)V
aload 3
invokevirtual java/io/PrintWriter/println()V
L2:
return
.limit locals 5
.limit stack 5
.end method

.method executePendingTask()V
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mCancellingTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnonnull L0
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
ifnull L0
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
ifeq L1
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_0
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
L1:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
lconst_0
lcmp
ifle L2
invokestatic android/os/SystemClock/uptimeMillis()J
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
ladd
lcmp
ifge L2
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iconst_1
putfield android/support/v4/content/AsyncTaskLoader$LoadTask/waiting Z
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mLastLoadCompleteTime J
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
ladd
invokevirtual android/os/Handler/postAtTime(Ljava/lang/Runnable;J)Z
pop
L0:
return
L2:
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
getstatic android/support/v4/content/ModernAsyncTask/THREAD_POOL_EXECUTOR Ljava/util/concurrent/Executor;
aconst_null
checkcast [Ljava/lang/Void;
invokevirtual android/support/v4/content/AsyncTaskLoader$LoadTask/executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
.signature "()TD;"
.end method

.method public onCanceled(Ljava/lang/Object;)V
.signature "(TD;)V"
return
.limit locals 2
.limit stack 0
.end method

.method protected onForceLoad()V
aload 0
invokespecial android/support/v4/content/Loader/onForceLoad()V
aload 0
invokevirtual android/support/v4/content/AsyncTaskLoader/cancelLoad()Z
pop
aload 0
new android/support/v4/content/AsyncTaskLoader$LoadTask
dup
aload 0
invokespecial android/support/v4/content/AsyncTaskLoader$LoadTask/<init>(Landroid/support/v4/content/AsyncTaskLoader;)V
putfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
aload 0
invokevirtual android/support/v4/content/AsyncTaskLoader/executePendingTask()V
return
.limit locals 1
.limit stack 4
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
.signature "()TD;"
aload 0
invokevirtual android/support/v4/content/AsyncTaskLoader/loadInBackground()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setUpdateThrottle(J)V
aload 0
lload 1
putfield android/support/v4/content/AsyncTaskLoader/mUpdateThrottle J
lload 1
lconst_0
lcmp
ifeq L0
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield android/support/v4/content/AsyncTaskLoader/mHandler Landroid/os/Handler;
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public waitForLoader()V
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
getfield android/support/v4/content/AsyncTaskLoader/mTask Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
astore 1
aload 1
ifnull L1
L0:
aload 1
invokestatic android/support/v4/content/AsyncTaskLoader$LoadTask/access$000(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;
invokevirtual java/util/concurrent/CountDownLatch/await()V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 1
.end method
