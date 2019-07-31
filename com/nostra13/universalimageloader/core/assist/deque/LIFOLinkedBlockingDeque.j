.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque
.super com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque
.signature "<T:Ljava/lang/Object;>Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TT;>;"

.field private static final 'serialVersionUID' J = -4114786347960826192L


.method public <init>()V
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public offer(Ljava/lang/Object;)Z
.signature "(TT;)Z"
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/offerFirst(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public remove()Ljava/lang/Object;
.signature "()TT;"
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/removeFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method
