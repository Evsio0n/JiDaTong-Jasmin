.bytecode 50.0
.class synchronized com/google/gson/internal/LinkedHashTreeMap$AvlIterator
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static AvlIterator inner com/google/gson/internal/LinkedHashTreeMap$AvlIterator outer com/google/gson/internal/LinkedHashTreeMap

.field private 'stackTop' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "()Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$AvlIterator/stackTop Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 2
aload 3
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
L1:
aload 1
ifnull L2
aload 1
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
astore 2
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
goto L1
L2:
aload 0
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$AvlIterator/stackTop Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
aconst_null
astore 2
L0:
aload 1
ifnull L1
aload 1
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
astore 2
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
goto L0
L1:
aload 0
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$AvlIterator/stackTop Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
.limit locals 3
.limit stack 2
.end method
