.bytecode 50.0
.class synchronized com/google/gson/internal/LinkedHashTreeMap$KeySet$1
.super com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator
.signature "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TK;>;"
.enclosing method com/google/gson/internal/LinkedHashTreeMap$KeySet/iterator()Ljava/util/Iterator;
.inner class KeySet inner com/google/gson/internal/LinkedHashTreeMap$KeySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$KeySet$1

.field final synthetic 'this$1' Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

.method <init>(Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;)V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$KeySet$1/this$1 Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;
aload 0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aconst_null
invokespecial com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/<init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/LinkedHashTreeMap$1;)V
return
.limit locals 2
.limit stack 3
.end method

.method public next()Ljava/lang/Object;
.signature "()TK;"
aload 0
invokevirtual com/google/gson/internal/LinkedHashTreeMap$KeySet$1/nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method
