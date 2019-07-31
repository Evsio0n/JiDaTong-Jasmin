.bytecode 50.0
.class synchronized com/google/gson/internal/LinkedHashTreeMap$KeySet
.super java/util/AbstractSet
.signature "Ljava/util/AbstractSet<TK;>;"
.inner class KeySet inner com/google/gson/internal/LinkedHashTreeMap$KeySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$KeySet$1

.field final synthetic 'this$0' Lcom/google/gson/internal/LinkedHashTreeMap;

.method <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 0
invokespecial java/util/AbstractSet/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public contains(Ljava/lang/Object;)Z
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<TK;>;"
new com/google/gson/internal/LinkedHashTreeMap$KeySet$1
dup
aload 0
invokespecial com/google/gson/internal/LinkedHashTreeMap$KeySet$1/<init>(Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public remove(Ljava/lang/Object;)Z
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public size()I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$KeySet/this$0 Lcom/google/gson/internal/LinkedHashTreeMap;
getfield com/google/gson/internal/LinkedHashTreeMap/size I
ireturn
.limit locals 1
.limit stack 1
.end method
