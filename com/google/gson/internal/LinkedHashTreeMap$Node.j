.bytecode 50.0
.class final synchronized com/google/gson/internal/LinkedHashTreeMap$Node
.super java/lang/Object
.implements java/util/Map$Entry
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Map$Entry<TK;TV;>;"
.inner class static final Node inner com/google/gson/internal/LinkedHashTreeMap$Node outer com/google/gson/internal/LinkedHashTreeMap

.field final 'hash' I

.field 'height' I

.field final 'key' Ljava/lang/Object; signature "TK;"

.field 'left' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'next' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'parent' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'prev' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'right' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'value' Ljava/lang/Object; signature "TV;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
aload 0
iconst_m1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/hash I
aload 0
aload 0
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
.limit locals 1
.limit stack 2
.end method

.method <init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;TK;ILcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
aload 0
iload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/hash I
aload 0
iconst_1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 0
aload 4
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 5
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 5
aload 0
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 4
aload 0
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
.limit locals 6
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof java/util/Map$Entry
ifeq L0
aload 1
checkcast java/util/Map$Entry
astore 1
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
ifnonnull L1
iload 3
istore 2
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
ifnonnull L0
L2:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
ifnonnull L3
iload 3
istore 2
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
ifnonnull L0
L4:
iconst_1
istore 2
L0:
iload 2
ireturn
L1:
iload 3
istore 2
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
goto L2
L3:
iload 3
istore 2
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
goto L4
.limit locals 4
.limit stack 2
.end method

.method public first()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "()Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
astore 2
aload 2
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
L0:
aload 1
ifnull L1
aload 1
astore 2
aload 2
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 1
.end method

.method public getKey()Ljava/lang/Object;
.signature "()TK;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getValue()Ljava/lang/Object;
.signature "()TV;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
iconst_0
istore 2
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
ifnonnull L0
iconst_0
istore 1
L1:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
ifnonnull L2
L3:
iload 1
iload 2
ixor
ireturn
L0:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
istore 1
goto L1
L2:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
istore 2
goto L3
.limit locals 3
.limit stack 2
.end method

.method public last()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "()Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
astore 2
aload 2
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
L0:
aload 1
ifnull L1
aload 1
astore 2
aload 2
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TV;)TV;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
astore 2
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
