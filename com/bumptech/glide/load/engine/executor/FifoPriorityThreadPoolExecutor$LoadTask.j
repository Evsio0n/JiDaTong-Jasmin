.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask
.super java/util/concurrent/FutureTask
.implements java/lang/Comparable
.signature "<T:Ljava/lang/Object;>Ljava/util/concurrent/FutureTask<TT;>;Ljava/lang/Comparable<Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<*>;>;"
.inner class static LoadTask inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor

.field private final 'order' I

.field private final 'priority' I

.method public <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
.signature "(Ljava/lang/Runnable;TT;I)V"
aload 0
aload 1
aload 2
invokespecial java/util/concurrent/FutureTask/<init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
aload 1
instanceof com/bumptech/glide/load/engine/executor/Prioritized
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/executor/Prioritized
invokeinterface com/bumptech/glide/load/engine/executor/Prioritized/getPriority()I 0
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
aload 0
iload 3
putfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
return
.limit locals 4
.limit stack 3
.end method

.method public compareTo(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;)I
.signature "(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<*>;)I"
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
aload 1
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
isub
istore 3
iload 3
istore 2
iload 3
ifne L0
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
aload 1
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
isub
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask
invokevirtual com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/compareTo(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
aload 1
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
aload 1
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
if_icmpne L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/priority I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask/order I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method
