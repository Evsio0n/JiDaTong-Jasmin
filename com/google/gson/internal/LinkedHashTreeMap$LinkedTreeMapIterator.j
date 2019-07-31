.bytecode 50.0
.class synchronized abstract com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator
.super java/lang/Object
.implements java/util/Iterator
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TT;>;"
.inner class private abstract LinkedTreeMapIterator inner com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator outer com/google/gson/internal/LinkedHashTreeMap

.field 'expectedModCount' I

.field 'lastReturned' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'next' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field final synthetic 'this$0' Lcom/google/gson/internal/LinkedHashTreeMap;

.method private <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/lastReturned Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/expectedModCount I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/LinkedHashTreeMap$1;)V
aload 0
aload 1
invokespecial com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/<init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final hasNext()Z
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
if_acmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method final nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "()Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
if_acmpne L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/expectedModCount I
if_icmpeq L1
new java/util/ConcurrentModificationException
dup
invokespecial java/util/ConcurrentModificationException/<init>()V
athrow
L1:
aload 0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/lastReturned Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final remove()V
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/lastReturned Lcom/google/gson/internal/LinkedHashTreeMap$Node;
ifnonnull L0
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/lastReturned Lcom/google/gson/internal/LinkedHashTreeMap$Node;
iconst_1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
aload 0
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/lastReturned Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
putfield com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/expectedModCount I
return
.limit locals 1
.limit stack 3
.end method
