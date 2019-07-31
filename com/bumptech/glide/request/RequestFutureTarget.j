.bytecode 50.0
.class public synchronized com/bumptech/glide/request/RequestFutureTarget
.super java/lang/Object
.implements com/bumptech/glide/request/FutureTarget
.implements java/lang/Runnable
.signature "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/FutureTarget<TR;>;Ljava/lang/Runnable;"
.inner class static Waiter inner com/bumptech/glide/request/RequestFutureTarget$Waiter outer com/bumptech/glide/request/RequestFutureTarget

.field private static final 'DEFAULT_WAITER' Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final 'assertBackgroundThread' Z

.field private 'exception' Ljava/lang/Exception;

.field private 'exceptionReceived' Z

.field private final 'height' I

.field private 'isCancelled' Z

.field private final 'mainHandler' Landroid/os/Handler;

.field private 'request' Lcom/bumptech/glide/request/Request;

.field private 'resource' Ljava/lang/Object; signature "TR;"

.field private 'resultReceived' Z

.field private final 'waiter' Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final 'width' I

.method static <clinit>()V
new com/bumptech/glide/request/RequestFutureTarget$Waiter
dup
invokespecial com/bumptech/glide/request/RequestFutureTarget$Waiter/<init>()V
putstatic com/bumptech/glide/request/RequestFutureTarget/DEFAULT_WAITER Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/os/Handler;II)V
aload 0
aload 1
iload 2
iload 3
iconst_1
getstatic com/bumptech/glide/request/RequestFutureTarget/DEFAULT_WAITER Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
invokespecial com/bumptech/glide/request/RequestFutureTarget/<init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
return
.limit locals 4
.limit stack 6
.end method

.method <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/RequestFutureTarget/mainHandler Landroid/os/Handler;
aload 0
iload 2
putfield com/bumptech/glide/request/RequestFutureTarget/width I
aload 0
iload 3
putfield com/bumptech/glide/request/RequestFutureTarget/height I
aload 0
iload 4
putfield com/bumptech/glide/request/RequestFutureTarget/assertBackgroundThread Z
aload 0
aload 5
putfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
return
.limit locals 6
.limit stack 2
.end method

.method private doGet(Ljava/lang/Long;)Ljava/lang/Object;
.signature "(Ljava/lang/Long;)TR;"
.throws java/util/concurrent/ExecutionException
.throws java/lang/InterruptedException
.throws java/util/concurrent/TimeoutException
.catch all from L0 to L1 using L2
.catch all from L1 to L2 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/assertBackgroundThread Z
ifeq L1
invokestatic com/bumptech/glide/util/Util/assertBackgroundThread()V
L1:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
ifeq L3
new java/util/concurrent/CancellationException
dup
invokespecial java/util/concurrent/CancellationException/<init>()V
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L3:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/exceptionReceived Z
ifeq L4
new java/util/concurrent/ExecutionException
dup
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/exception Ljava/lang/Exception;
invokespecial java/util/concurrent/ExecutionException/<init>(Ljava/lang/Throwable;)V
athrow
L4:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/resultReceived Z
ifeq L15
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/resource Ljava/lang/Object;
astore 1
L5:
aload 0
monitorexit
aload 1
areturn
L15:
aload 1
ifnonnull L8
L6:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
aload 0
lconst_0
invokevirtual com/bumptech/glide/request/RequestFutureTarget$Waiter/waitForTimeout(Ljava/lang/Object;J)V
L7:
invokestatic java/lang/Thread/interrupted()Z
ifeq L10
new java/lang/InterruptedException
dup
invokespecial java/lang/InterruptedException/<init>()V
athrow
L8:
aload 1
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifle L7
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
aload 0
aload 1
invokevirtual java/lang/Long/longValue()J
invokevirtual com/bumptech/glide/request/RequestFutureTarget$Waiter/waitForTimeout(Ljava/lang/Object;J)V
L9:
goto L7
L10:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/exceptionReceived Z
ifeq L11
new java/util/concurrent/ExecutionException
dup
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/exception Ljava/lang/Exception;
invokespecial java/util/concurrent/ExecutionException/<init>(Ljava/lang/Throwable;)V
athrow
L11:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
ifeq L12
new java/util/concurrent/CancellationException
dup
invokespecial java/util/concurrent/CancellationException/<init>()V
athrow
L12:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/resultReceived Z
ifne L13
new java/util/concurrent/TimeoutException
dup
invokespecial java/util/concurrent/TimeoutException/<init>()V
athrow
L13:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/resource Ljava/lang/Object;
astore 1
L14:
goto L5
.limit locals 2
.limit stack 4
.end method

.method public cancel(Z)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
iconst_1
istore 2
iconst_1
istore 3
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
istore 4
L1:
iload 4
ifeq L3
L10:
aload 0
monitorexit
iload 3
ireturn
L3:
aload 0
invokevirtual com/bumptech/glide/request/RequestFutureTarget/isDone()Z
ifne L11
L4:
iload 2
istore 3
iload 2
ifeq L10
L5:
aload 0
iconst_1
putfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
L6:
iload 1
ifeq L8
L7:
aload 0
invokevirtual com/bumptech/glide/request/RequestFutureTarget/clear()V
L8:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
aload 0
invokevirtual com/bumptech/glide/request/RequestFutureTarget$Waiter/notifyAll(Ljava/lang/Object;)V
L9:
iload 2
istore 3
goto L10
L2:
astore 5
aload 0
monitorexit
aload 5
athrow
L11:
iconst_0
istore 2
goto L4
.limit locals 6
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/mainHandler Landroid/os/Handler;
aload 0
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public get()Ljava/lang/Object;
.signature "()TR;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.catch java/util/concurrent/TimeoutException from L0 to L1 using L2
L0:
aload 0
aconst_null
invokespecial com/bumptech/glide/request/RequestFutureTarget/doGet(Ljava/lang/Long;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/AssertionError
dup
aload 1
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TR;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.throws java/util/concurrent/TimeoutException
aload 0
aload 3
lload 1
invokevirtual java/util/concurrent/TimeUnit/toMillis(J)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokespecial com/bumptech/glide/request/RequestFutureTarget/doGet(Ljava/lang/Long;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/request Lcom/bumptech/glide/request/Request;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 1
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/width I
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/height I
invokeinterface com/bumptech/glide/request/target/SizeReadyCallback/onSizeReady(II)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public isCancelled()Z
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public isDone()Z
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/isCancelled Z
ifne L3
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/resultReceived Z
istore 1
L1:
iload 1
ifeq L4
L3:
iconst_1
istore 1
L5:
aload 0
monitorexit
iload 1
ireturn
L4:
iconst_0
istore 1
goto L5
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public onDestroy()V
return
.limit locals 1
.limit stack 0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iconst_1
putfield com/bumptech/glide/request/RequestFutureTarget/exceptionReceived Z
aload 0
aload 1
putfield com/bumptech/glide/request/RequestFutureTarget/exception Ljava/lang/Exception;
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
aload 0
invokevirtual com/bumptech/glide/request/RequestFutureTarget$Waiter/notifyAll(Ljava/lang/Object;)V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(TR;Lcom/bumptech/glide/request/animation/GlideAnimation<-TR;>;)V"
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iconst_1
putfield com/bumptech/glide/request/RequestFutureTarget/resultReceived Z
aload 0
aload 1
putfield com/bumptech/glide/request/RequestFutureTarget/resource Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/waiter Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
aload 0
invokevirtual com/bumptech/glide/request/RequestFutureTarget$Waiter/notifyAll(Ljava/lang/Object;)V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public onStart()V
return
.limit locals 1
.limit stack 0
.end method

.method public onStop()V
return
.limit locals 1
.limit stack 0
.end method

.method public run()V
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/request Lcom/bumptech/glide/request/Request;
ifnull L0
aload 0
getfield com/bumptech/glide/request/RequestFutureTarget/request Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/clear()V 0
aload 0
iconst_0
invokevirtual com/bumptech/glide/request/RequestFutureTarget/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
aload 1
putfield com/bumptech/glide/request/RequestFutureTarget/request Lcom/bumptech/glide/request/Request;
return
.limit locals 2
.limit stack 2
.end method
