.bytecode 50.0
.class final synchronized enum com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2
.super com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
.enclosing method com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
.inner class public static enum UncaughtThrowableStrategy inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2

.method <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
aconst_null
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/<init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$1;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected handle(Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/handle(Ljava/lang/Throwable;)V
new java/lang/RuntimeException
dup
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 3
.end method
