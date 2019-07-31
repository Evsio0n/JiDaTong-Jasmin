.bytecode 50.0
.class synchronized com/bumptech/glide/request/RequestFutureTarget$Waiter
.super java/lang/Object
.inner class static Waiter inner com/bumptech/glide/request/RequestFutureTarget$Waiter outer com/bumptech/glide/request/RequestFutureTarget

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public notifyAll(Ljava/lang/Object;)V
aload 1
invokevirtual java/lang/Object/notifyAll()V
return
.limit locals 2
.limit stack 1
.end method

.method public waitForTimeout(Ljava/lang/Object;J)V
.throws java/lang/InterruptedException
aload 1
lload 2
invokevirtual java/lang/Object/wait(J)V
return
.limit locals 4
.limit stack 3
.end method
