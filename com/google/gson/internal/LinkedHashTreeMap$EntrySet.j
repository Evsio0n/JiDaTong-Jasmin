.bytecode 50.0
.class synchronized com/google/gson/internal/LinkedHashTreeMap$EntrySet
.super java/util/AbstractSet
.signature "Ljava/util/AbstractSet<Ljava/util/Map$Entry<TK;TV;>;>;"
.inner class EntrySet inner com/google/gson/internal/LinkedHashTreeMap$EntrySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$EntrySet$1

.field final synthetic 'this$0' Lcom/google/gson/internal/LinkedHashTreeMap;

.method <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 0
invokespecial java/util/AbstractSet/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public contains(Ljava/lang/Object;)Z
aload 1
instanceof java/util/Map$Entry
ifeq L0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
checkcast java/util/Map$Entry
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
new com/google/gson/internal/LinkedHashTreeMap$EntrySet$1
dup
aload 0
invokespecial com/google/gson/internal/LinkedHashTreeMap$EntrySet$1/<init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public remove(Ljava/lang/Object;)Z
aload 1
instanceof java/util/Map$Entry
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
checkcast java/util/Map$Entry
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
ifnull L1
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
iconst_1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public size()I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$EntrySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/size I
ireturn
.limit locals 1
.limit stack 1
.end method
