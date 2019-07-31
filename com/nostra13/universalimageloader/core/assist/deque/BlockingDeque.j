.bytecode 50.0
.class public abstract interface com/nostra13/universalimageloader/core/assist/deque/BlockingDeque
.super java/lang/Object
.implements java/util/concurrent/BlockingQueue
.implements com/nostra13/universalimageloader/core/assist/deque/Deque
.signature "<E:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue<TE;>;Lcom/nostra13/universalimageloader/core/assist/deque/Deque<TE;>;"

.method public abstract add(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.end method

.method public abstract addFirst(Ljava/lang/Object;)V
.signature "(TE;)V"
.end method

.method public abstract addLast(Ljava/lang/Object;)V
.signature "(TE;)V"
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract element()Ljava/lang/Object;
.signature "()TE;"
.end method

.method public abstract iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<TE;>;"
.end method

.method public abstract offer(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.end method

.method public abstract offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
.end method

.method public abstract offerFirst(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.end method

.method public abstract offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
.end method

.method public abstract offerLast(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.end method

.method public abstract offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
.end method

.method public abstract peek()Ljava/lang/Object;
.signature "()TE;"
.end method

.method public abstract poll()Ljava/lang/Object;
.signature "()TE;"
.end method

.method public abstract poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
.end method

.method public abstract pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
.end method

.method public abstract pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
.end method

.method public abstract push(Ljava/lang/Object;)V
.signature "(TE;)V"
.end method

.method public abstract put(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
.end method

.method public abstract putFirst(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
.end method

.method public abstract putLast(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
.end method

.method public abstract remove()Ljava/lang/Object;
.signature "()TE;"
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeFirstOccurrence(Ljava/lang/Object;)Z
.end method

.method public abstract removeLastOccurrence(Ljava/lang/Object;)Z
.end method

.method public abstract size()I
.end method

.method public abstract take()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
.end method

.method public abstract takeFirst()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
.end method

.method public abstract takeLast()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
.end method
