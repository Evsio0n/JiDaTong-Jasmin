.bytecode 50.0
.class synchronized com/google/gson/internal/LinkedHashTreeMap$EntrySet$1
.super com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator
.signature "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
.enclosing method com/google/gson/internal/LinkedHashTreeMap$EntrySet/iterator()Ljava/util/Iterator;
.inner class EntrySet inner com/google/gson/internal/LinkedHashTreeMap$EntrySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$EntrySet$1

.field final synthetic 'this$1' Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

.method <init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$EntrySet$1/this$1 Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
aload 0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aconst_null
invokespecial com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator/<init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/LinkedHashTreeMap$1;)V
return
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic next()Ljava/lang/Object;
aload 0
invokevirtual com/google/gson/internal/LinkedHashTreeMap$EntrySet$1/next()Ljava/util/Map$Entry;
areturn
.limit locals 1
.limit stack 1
.end method

.method public next()Ljava/util/Map$Entry;
.signature "()Ljava/util/Map$Entry<TK;TV;>;"
aload 0
invokevirtual com/google/gson/internal/LinkedHashTreeMap$EntrySet$1/nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
areturn
.limit locals 1
.limit stack 1
.end method
