.bytecode 50.0
.class synchronized abstract com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr
.super java/lang/Object
.implements java/util/Iterator
.signature "Ljava/lang/Object;Ljava/util/Iterator<TE;>;"
.inner class private abstract AbstractItr inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque

.field private 'lastRet' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.field 'next' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.field 'nextItem' Ljava/lang/Object; signature "TE;"

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

.method <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 2
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnonnull L5
L1:
aconst_null
astore 1
L3:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/nextItem Ljava/lang/Object;
L4:
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L5:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 1
L6:
goto L3
L2:
astore 1
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method private succ(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
L0:
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 2
ifnonnull L1
aconst_null
astore 3
L2:
aload 3
areturn
L1:
aload 2
astore 3
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
ifnonnull L2
aload 2
aload 1
if_acmpne L3
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
areturn
L3:
aload 2
astore 1
goto L0
.limit locals 4
.limit stack 2
.end method

.method advance()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 2
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/succ(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnonnull L5
L1:
aconst_null
astore 1
L3:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/nextItem Ljava/lang/Object;
L4:
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L5:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 1
L6:
goto L3
L2:
astore 1
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method abstract firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.signature "()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
.end method

.method public hasNext()Z
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public next()Ljava/lang/Object;
.signature "()TE;"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnonnull L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/lastRet Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/nextItem Ljava/lang/Object;
astore 1
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/advance()V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method abstract nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
.end method

.method public remove()V
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/lastRet Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 2
ifnonnull L3
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L3:
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/lastRet Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
ifnull L1
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
L1:
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L2:
astore 2
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 3
.limit stack 2
.end method
