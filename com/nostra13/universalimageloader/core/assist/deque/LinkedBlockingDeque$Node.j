.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
.super java/lang/Object
.signature "<E:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final Node inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque

.field 'item' Ljava/lang/Object; signature "TE;"

.field 'next' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.field 'prev' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.method <init>(Ljava/lang/Object;)V
.signature "(TE;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method
