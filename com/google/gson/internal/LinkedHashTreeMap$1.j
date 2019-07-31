.bytecode 50.0
.class final synchronized com/google/gson/internal/LinkedHashTreeMap$1
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Ljava/lang/Comparable;>;"
.enclosing method com/google/gson/internal/LinkedHashTreeMap
.inner class static final inner com/google/gson/internal/LinkedHashTreeMap$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
aload 1
aload 2
invokeinterface java/lang/Comparable/compareTo(Ljava/lang/Object;)I 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast java/lang/Comparable
aload 2
checkcast java/lang/Comparable
invokevirtual com/google/gson/internal/LinkedHashTreeMap$1/compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
ireturn
.limit locals 3
.limit stack 3
.end method
