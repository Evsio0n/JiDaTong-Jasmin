.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque
.super java/util/AbstractQueue
.implements com/nostra13/universalimageloader/core/assist/deque/BlockingDeque
.implements java/io/Serializable
.signature "<E:Ljava/lang/Object;>Ljava/util/AbstractQueue<TE;>;Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque<TE;>;Ljava/io/Serializable;"
.inner class private abstract AbstractItr inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque
.inner class private DescendingItr inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque
.inner class private Itr inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque
.inner class static final Node inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque

.field private static final 'serialVersionUID' J = -387911632671998426L


.field private final 'capacity' I

.field private transient 'count' I

.field transient 'first' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.field transient 'last' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node; signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"

.field final 'lock' Ljava/util/concurrent/locks/ReentrantLock;

.field private final 'notEmpty' Ljava/util/concurrent/locks/Condition;

.field private final 'notFull' Ljava/util/concurrent/locks/Condition;

.method public <init>()V
aload 0
ldc_w 2147483647
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/util/AbstractQueue/<init>()V
aload 0
new java/util/concurrent/locks/ReentrantLock
dup
invokespecial java/util/concurrent/locks/ReentrantLock/<init>()V
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
invokevirtual java/util/concurrent/locks/ReentrantLock/newCondition()Ljava/util/concurrent/locks/Condition;
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
invokevirtual java/util/concurrent/locks/ReentrantLock/newCondition()Ljava/util/concurrent/locks/Condition;
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L0:
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/capacity I
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/util/Collection;)V
.signature "(Ljava/util/Collection<+TE;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L2 using L2
.catch all from L7 to L8 using L2
aload 0
ldc_w 2147483647
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/<init>(I)V
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 1
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
istore 2
L3:
iload 2
ifne L4
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L4:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Object
astore 4
L5:
aload 4
ifnonnull L7
L6:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L2:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
L7:
aload 0
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 4
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
ifne L1
new java/lang/IllegalStateException
dup
ldc "Deque full"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L8:
.limit locals 5
.limit stack 4
.end method

.method private linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)Z"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/capacity I
if_icmplt L0
iconst_0
ireturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
aload 2
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnonnull L1
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L2:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
iconst_1
iadd
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signal()V 0
iconst_1
ireturn
L1:
aload 2
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto L2
.limit locals 3
.limit stack 3
.end method

.method private linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)Z"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/capacity I
if_icmplt L0
iconst_0
ireturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
aload 2
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
ifnonnull L1
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L2:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
iconst_1
iadd
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signal()V 0
iconst_1
ireturn
L1:
aload 2
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto L2
.limit locals 3
.limit stack 3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
.throws java/io/IOException
.throws java/lang/ClassNotFoundException
aload 1
invokevirtual java/io/ObjectInputStream/defaultReadObject()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L0:
aload 1
invokevirtual java/io/ObjectInputStream/readObject()Ljava/lang/Object;
astore 2
aload 2
ifnonnull L1
return
L1:
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/add(Ljava/lang/Object;)Z
pop
goto L0
.limit locals 3
.limit stack 2
.end method

.method private unlinkFirst()Ljava/lang/Object;
.signature "()TE;"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 3
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aload 1
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 2
ifnonnull L1
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L2:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
iconst_1
isub
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signal()V 0
aload 3
areturn
L1:
aload 2
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto L2
.limit locals 4
.limit stack 3
.end method

.method private unlinkLast()Ljava/lang/Object;
.signature "()TE;"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 3
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aload 1
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 2
ifnonnull L1
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L2:
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
iconst_1
isub
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signal()V 0
aload 3
areturn
L1:
aload 2
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto L2
.limit locals 4
.limit stack 3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 1
invokevirtual java/io/ObjectOutputStream/defaultWriteObject()V
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L1:
aload 2
ifnonnull L5
L3:
aload 1
aconst_null
invokevirtual java/io/ObjectOutputStream/writeObject(Ljava/lang/Object;)V
L4:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L5:
aload 1
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
invokevirtual java/io/ObjectOutputStream/writeObject(Ljava/lang/Object;)V
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L6:
goto L1
L2:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public add(Ljava/lang/Object;)Z
.signature "(TE;)Z"
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/addLast(Ljava/lang/Object;)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public addFirst(Ljava/lang/Object;)V
.signature "(TE;)V"
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/offerFirst(Ljava/lang/Object;)Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "Deque full"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public addLast(Ljava/lang/Object;)V
.signature "(TE;)V"
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/offerLast(Ljava/lang/Object;)Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "Deque full"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public clear()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L1:
aload 1
ifnonnull L5
L3:
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signalAll()V 0
L4:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L5:
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
L6:
aload 2
astore 1
goto L1
L2:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public contains(Ljava/lang/Object;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 1
ifnonnull L7
iconst_0
ireturn
L7:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 3
L1:
aload 3
ifnonnull L3
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_0
ireturn
L3:
aload 1
aload 3
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
istore 2
L4:
iload 2
ifeq L5
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_1
ireturn
L5:
aload 3
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 3
L6:
goto L1
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 5
.limit stack 2
.end method

.method public descendingIterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<TE;>;"
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr
dup
aload 0
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr/<init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public drainTo(Ljava/util/Collection;)I
.signature "(Ljava/util/Collection<-TE;>;)I"
aload 0
aload 1
ldc_w 2147483647
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/drainTo(Ljava/util/Collection;I)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public drainTo(Ljava/util/Collection;I)I
.signature "(Ljava/util/Collection<-TE;>;I)I"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
aload 1
aload 0
if_acmpne L6
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L6:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
iload 2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
invokestatic java/lang/Math/min(II)I
istore 3
L1:
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmplt L3
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iload 3
ireturn
L3:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkFirst()Ljava/lang/Object;
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L7
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 5
.limit stack 2
.end method

.method public element()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/getFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirst()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/peekFirst()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLast()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/peekLast()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<TE;>;"
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr
dup
aload 0
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr/<init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public offer(Ljava/lang/Object;)Z
.signature "(TE;)Z"
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/offerLast(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
aload 0
aload 1
lload 2
aload 4
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
ireturn
.limit locals 5
.limit stack 5
.end method

.method public offerFirst(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.catch all from L0 to L1 using L2
aload 1
ifnonnull L3
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L3:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 3
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 3
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 2
L1:
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iload 2
ireturn
L2:
astore 3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 1
aload 4
lload 2
invokevirtual java/util/concurrent/TimeUnit/toNanos(J)J
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lockInterruptibly()V
L0:
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 5
L1:
iload 5
ifeq L6
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_1
ireturn
L6:
lload 2
lconst_0
lcmp
ifgt L3
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_0
ireturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
lload 2
invokeinterface java/util/concurrent/locks/Condition/awaitNanos(J)J 2
lstore 2
L4:
goto L0
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 6
.limit stack 4
.end method

.method public offerLast(Ljava/lang/Object;)Z
.signature "(TE;)Z"
.catch all from L0 to L1 using L2
aload 1
ifnonnull L3
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L3:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 3
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 3
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 2
L1:
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iload 2
ireturn
L2:
astore 3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.signature "(TE;JLjava/util/concurrent/TimeUnit;)Z"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 1
aload 4
lload 2
invokevirtual java/util/concurrent/TimeUnit/toNanos(J)J
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lockInterruptibly()V
L0:
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 5
L1:
iload 5
ifeq L6
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_1
ireturn
L6:
lload 2
lconst_0
lcmp
ifgt L3
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_0
ireturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
lload 2
invokeinterface java/util/concurrent/locks/Condition/awaitNanos(J)J 2
lstore 2
L4:
goto L0
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 6
.limit stack 4
.end method

.method public peek()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/peekFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public peekFirst()Ljava/lang/Object;
.signature "()TE;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 2
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L1:
aload 1
ifnonnull L3
aconst_null
astore 1
L5:
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 1
L4:
goto L5
L2:
astore 1
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 3
.limit stack 1
.end method

.method public peekLast()Ljava/lang/Object;
.signature "()TE;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 2
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L1:
aload 1
ifnonnull L3
aconst_null
astore 1
L5:
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 1
L4:
goto L5
L2:
astore 1
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 3
.limit stack 1
.end method

.method public poll()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/pollFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
aload 0
lload 1
aload 3
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public pollFirst()Ljava/lang/Object;
.signature "()TE;"
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkFirst()Ljava/lang/Object;
astore 2
L1:
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
areturn
L2:
astore 2
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 3
lload 1
invokevirtual java/util/concurrent/TimeUnit/toNanos(J)J
lstore 1
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lockInterruptibly()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkFirst()Ljava/lang/Object;
astore 4
L1:
aload 4
ifnull L5
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
areturn
L5:
lload 1
lconst_0
lcmp
ifgt L3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aconst_null
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
lload 1
invokeinterface java/util/concurrent/locks/Condition/awaitNanos(J)J 2
lstore 1
L4:
goto L0
L2:
astore 4
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
athrow
.limit locals 5
.limit stack 4
.end method

.method public pollLast()Ljava/lang/Object;
.signature "()TE;"
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkLast()Ljava/lang/Object;
astore 2
L1:
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
areturn
L2:
astore 2
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TE;"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 3
lload 1
invokevirtual java/util/concurrent/TimeUnit/toNanos(J)J
lstore 1
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lockInterruptibly()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkLast()Ljava/lang/Object;
astore 4
L1:
aload 4
ifnull L5
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
areturn
L5:
lload 1
lconst_0
lcmp
ifgt L3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aconst_null
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
lload 1
invokeinterface java/util/concurrent/locks/Condition/awaitNanos(J)J 2
lstore 1
L4:
goto L0
L2:
astore 4
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
athrow
.limit locals 5
.limit stack 4
.end method

.method public pop()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/removeFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public push(Ljava/lang/Object;)V
.signature "(TE;)V"
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/addFirst(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public put(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/putLast(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public putFirst(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 3
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 3
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 2
L1:
iload 2
ifeq L3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/await()V 0
L4:
goto L0
L2:
astore 3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public putLast(Ljava/lang/Object;)V
.signature "(TE;)V"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
new com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node
dup
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/<init>(Ljava/lang/Object;)V
astore 3
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
aload 3
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
istore 2
L1:
iload 2
ifeq L3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/await()V 0
L4:
goto L0
L2:
astore 3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public remainingCapacity()I
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/capacity I
istore 1
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
istore 2
L1:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iload 1
iload 2
isub
ireturn
L2:
astore 4
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
athrow
.limit locals 5
.limit stack 2
.end method

.method public remove()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/removeFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Ljava/lang/Object;)Z
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/removeFirstOccurrence(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeFirst()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/pollFirst()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 1
ifnonnull L7
iconst_0
ireturn
L7:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L1:
aload 2
ifnonnull L3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_0
ireturn
L3:
aload 1
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
L4:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_1
ireturn
L5:
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L6:
goto L1
L2:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public removeLast()Ljava/lang/Object;
.signature "()TE;"
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/pollLast()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 1
ifnonnull L7
iconst_0
ireturn
L7:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/last Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L1:
aload 2
ifnonnull L3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_0
ireturn
L3:
aload 1
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
L4:
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iconst_1
ireturn
L5:
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L6:
goto L1
L2:
astore 1
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public size()I
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 2
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
istore 1
L1:
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
iload 1
ireturn
L2:
astore 3
aload 2
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
athrow
.limit locals 4
.limit stack 1
.end method

.method public take()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/takeFirst()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public takeFirst()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkFirst()Ljava/lang/Object;
astore 2
L1:
aload 2
ifnull L3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/await()V 0
L4:
goto L0
L2:
astore 2
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public takeLast()Ljava/lang/Object;
.signature "()TE;"
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 1
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkLast()Ljava/lang/Object;
astore 2
L1:
aload 2
ifnull L3
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notEmpty Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/await()V 0
L4:
goto L0
L2:
astore 2
aload 1
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public toArray()[Ljava/lang/Object;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
anewarray java/lang/Object
astore 4
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L1:
iconst_0
istore 1
L5:
aload 2
ifnonnull L3
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 4
areturn
L3:
aload 4
iload 1
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aastore
aload 2
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
L4:
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
astore 2
aload 3
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 2
athrow
.limit locals 5
.limit stack 3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>([TT;)[TT;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
aload 1
astore 3
L0:
aload 1
arraylength
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
if_icmpge L1
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 3
L1:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L3:
iconst_0
istore 2
L8:
aload 1
ifnonnull L6
L4:
aload 3
arraylength
iload 2
if_icmple L9
L5:
aload 3
iload 2
aconst_null
aastore
L9:
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 3
areturn
L6:
aload 3
iload 2
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aastore
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L7:
iload 2
iconst_1
iadd
istore 2
goto L8
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 5
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/lock Ljava/util/concurrent/locks/ReentrantLock;
astore 4
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
L0:
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L1:
aload 1
ifnonnull L3
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
ldc "[]"
areturn
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
bipush 91
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L4:
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
astore 3
L5:
aload 3
astore 2
aload 3
aload 0
if_acmpne L6
ldc "(this Collection)"
astore 2
L6:
aload 5
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 1
L7:
aload 1
ifnonnull L10
L8:
aload 5
bipush 93
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L9:
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
areturn
L10:
aload 5
bipush 44
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L11:
goto L4
L2:
astore 1
aload 4
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
aload 1
athrow
.limit locals 6
.limit stack 2
.end method

.method unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)V"
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 2
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
astore 3
aload 2
ifnonnull L0
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkFirst()Ljava/lang/Object;
pop
return
L0:
aload 3
ifnonnull L1
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/unlinkLast()Ljava/lang/Object;
pop
return
L1:
aload 2
aload 3
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 3
aload 2
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/prev Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
aload 1
aconst_null
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/item Ljava/lang/Object;
aload 0
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
iconst_1
isub
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/count I
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/notFull Ljava/util/concurrent/locks/Condition;
invokeinterface java/util/concurrent/locks/Condition/signal()V 0
return
.limit locals 4
.limit stack 3
.end method
