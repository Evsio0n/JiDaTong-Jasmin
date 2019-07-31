.bytecode 50.0
.class final synchronized enum com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1
.super com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
.enclosing method com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
.inner class public static enum UncaughtThrowableStrategy inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1

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
ldc "PriorityExecutor"
bipush 6
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "PriorityExecutor"
ldc "Request threw uncaught throwable"
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 2
.limit stack 3
.end method
