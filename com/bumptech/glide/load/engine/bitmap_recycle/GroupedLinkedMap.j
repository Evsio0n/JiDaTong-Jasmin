.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap
.super java/lang/Object
.signature "<K::Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class private static LinkedEntry inner com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry outer com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap

.field private final 'head' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"

.field private final 'keyToEntry' Ljava/util/Map; signature "Ljava/util/Map<TK;Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method private makeHead(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
.signature "(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;)V"
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
aload 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
return
.limit locals 2
.limit stack 2
.end method

.method private makeTail(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
.signature "(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;)V"
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
aload 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
return
.limit locals 2
.limit stack 2
.end method

.method private static removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;)V"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
return
.limit locals 1
.limit stack 2
.end method

.method private static updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;)V"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
return
.limit locals 1
.limit stack 2
.end method

.method public get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
.signature "(TK;)TV;"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
astore 2
aload 2
ifnonnull L0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
dup
aload 1
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/<init>(Ljava/lang/Object;)V
astore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
astore 1
L1:
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/makeHead(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/removeLast()Ljava/lang/Object;
areturn
L0:
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/Poolable/offer()V 0
aload 2
astore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method public put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
.signature "(TK;TV;)V"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
astore 3
aload 3
ifnonnull L0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
dup
aload 1
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/<init>(Ljava/lang/Object;)V
astore 3
aload 0
aload 3
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/makeTail(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
aload 1
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
astore 1
L1:
aload 1
aload 2
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/add(Ljava/lang/Object;)V
return
L0:
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/Poolable/offer()V 0
aload 3
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method public removeLast()Ljava/lang/Object;
.signature "()TV;"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
astore 1
L0:
aload 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/removeLast()Ljava/lang/Object;
astore 2
aload 2
ifnull L2
aload 2
areturn
L2:
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/keyToEntry Ljava/util/Map;
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/bitmap_recycle/Poolable
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/Poolable/offer()V 0
aload 1
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
astore 1
goto L0
L1:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "GroupedLinkedMap( "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
astore 2
iconst_0
istore 1
L0:
aload 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/head Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
iconst_1
istore 1
aload 3
bipush 123
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 2
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "}, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
astore 2
goto L0
L1:
iload 1
ifeq L2
aload 3
aload 3
invokevirtual java/lang/StringBuilder/length()I
iconst_2
isub
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L2:
aload 3
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method
