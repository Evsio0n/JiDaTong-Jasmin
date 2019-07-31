.bytecode 50.0
.class final synchronized com/google/gson/internal/LinkedHashTreeMap$AvlBuilder
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final AvlBuilder inner com/google/gson/internal/LinkedHashTreeMap$AvlBuilder outer com/google/gson/internal/LinkedHashTreeMap

.field private 'leavesSkipped' I

.field private 'leavesToSkip' I

.field private 'size' I

.field private 'stack' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
iconst_1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
ifle L0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iconst_1
iand
ifne L0
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
iconst_1
isub
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
L0:
aload 1
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
ifle L1
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iconst_1
iand
ifne L1
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
iconst_1
isub
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
L1:
iconst_4
istore 2
L2:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
iload 2
iconst_1
isub
iand
iload 2
iconst_1
isub
if_icmpne L3
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
ifne L4
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 3
aload 3
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 4
aload 3
aload 4
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 4
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 4
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L5:
iload 2
iconst_2
imul
istore 2
goto L2
L4:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
iconst_1
if_icmpne L6
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 3
aload 0
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 1
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
goto L5
L6:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
iconst_2
if_icmpne L5
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
goto L5
L3:
return
.limit locals 5
.limit stack 3
.end method

.method reset(I)V
aload 0
iload 1
invokestatic java/lang/Integer/highestOneBit(I)I
iconst_2
imul
iconst_1
isub
iload 1
isub
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesToSkip I
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/size I
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/leavesSkipped I
aload 0
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
.limit locals 2
.limit stack 3
.end method

.method root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "()Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/stack Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
ifnull L0
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
