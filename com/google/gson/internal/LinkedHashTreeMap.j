.bytecode 50.0
.class public final synchronized com/google/gson/internal/LinkedHashTreeMap
.super java/util/AbstractMap
.implements java/io/Serializable
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/util/AbstractMap<TK;TV;>;Ljava/io/Serializable;"
.inner class static final inner com/google/gson/internal/LinkedHashTreeMap$1
.inner class static final AvlBuilder inner com/google/gson/internal/LinkedHashTreeMap$AvlBuilder outer com/google/gson/internal/LinkedHashTreeMap
.inner class static AvlIterator inner com/google/gson/internal/LinkedHashTreeMap$AvlIterator outer com/google/gson/internal/LinkedHashTreeMap
.inner class EntrySet inner com/google/gson/internal/LinkedHashTreeMap$EntrySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$EntrySet$1
.inner class KeySet inner com/google/gson/internal/LinkedHashTreeMap$KeySet outer com/google/gson/internal/LinkedHashTreeMap
.inner class inner com/google/gson/internal/LinkedHashTreeMap$KeySet$1
.inner class private abstract LinkedTreeMapIterator inner com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator outer com/google/gson/internal/LinkedHashTreeMap
.inner class static final Node inner com/google/gson/internal/LinkedHashTreeMap$Node outer com/google/gson/internal/LinkedHashTreeMap

.field static final synthetic '$assertionsDisabled' Z

.field private static final 'NATURAL_ORDER' Ljava/util/Comparator; signature "Ljava/util/Comparator<Ljava/lang/Comparable;>;"

.field 'comparator' Ljava/util/Comparator; signature "Ljava/util/Comparator<-TK;>;"

.field private 'entrySet' Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet; signature "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"

.field final 'header' Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field private 'keySet' Lcom/google/gson/internal/LinkedHashTreeMap$KeySet; signature "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"

.field 'modCount' I

.field 'size' I

.field 'table' [Lcom/google/gson/internal/LinkedHashTreeMap$Node; signature "[Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"

.field 'threshold' I

.method static <clinit>()V
ldc com/google/gson/internal/LinkedHashTreeMap
invokevirtual java/lang/Class/desiredAssertionStatus()Z
ifne L0
iconst_1
istore 0
L1:
iload 0
putstatic com/google/gson/internal/LinkedHashTreeMap/$assertionsDisabled Z
new com/google/gson/internal/LinkedHashTreeMap$1
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap$1/<init>()V
putstatic com/google/gson/internal/LinkedHashTreeMap/NATURAL_ORDER Ljava/util/Comparator;
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 2
.end method

.method public <init>()V
aload 0
getstatic com/google/gson/internal/LinkedHashTreeMap/NATURAL_ORDER Ljava/util/Comparator;
invokespecial com/google/gson/internal/LinkedHashTreeMap/<init>(Ljava/util/Comparator;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/util/Comparator;)V
.signature "(Ljava/util/Comparator<-TK;>;)V"
aload 0
invokespecial java/util/AbstractMap/<init>()V
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap/size I
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap/modCount I
aload 1
ifnull L0
L1:
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap/comparator Ljava/util/Comparator;
aload 0
new com/google/gson/internal/LinkedHashTreeMap$Node
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap$Node/<init>()V
putfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
bipush 16
anewarray com/google/gson/internal/LinkedHashTreeMap$Node
putfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
arraylength
iconst_2
idiv
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
arraylength
iconst_4
idiv
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/threshold I
return
L0:
getstatic com/google/gson/internal/LinkedHashTreeMap/NATURAL_ORDER Ljava/util/Comparator;
astore 1
goto L1
.limit locals 2
.limit stack 4
.end method

.method private doubleCapacity()V
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
invokestatic com/google/gson/internal/LinkedHashTreeMap/doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
arraylength
iconst_2
idiv
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
arraylength
iconst_4
idiv
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/threshold I
return
.limit locals 1
.limit stack 4
.end method

.method static doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>([Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
arraylength
istore 4
iload 4
iconst_2
imul
anewarray com/google/gson/internal/LinkedHashTreeMap$Node
astore 8
new com/google/gson/internal/LinkedHashTreeMap$AvlIterator
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap$AvlIterator/<init>()V
astore 9
new com/google/gson/internal/LinkedHashTreeMap$AvlBuilder
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/<init>()V
astore 10
new com/google/gson/internal/LinkedHashTreeMap$AvlBuilder
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/<init>()V
astore 11
iconst_0
istore 1
L0:
iload 1
iload 4
if_icmpge L1
aload 0
iload 1
aaload
astore 5
aload 5
ifnonnull L2
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 9
aload 5
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlIterator/reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
iconst_0
istore 3
iconst_0
istore 2
L4:
aload 9
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlIterator/next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 6
ifnull L5
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/hash I
iload 4
iand
ifne L6
iload 3
iconst_1
iadd
istore 3
goto L4
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aconst_null
astore 7
aconst_null
astore 6
iload 3
ifle L7
iload 2
ifle L7
aload 10
iload 3
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/reset(I)V
aload 11
iload 2
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/reset(I)V
aload 9
aload 5
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlIterator/reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
L8:
aload 9
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlIterator/next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 5
ifnull L9
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/hash I
iload 4
iand
ifne L10
aload 10
aload 5
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
goto L8
L10:
aload 11
aload 5
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
goto L8
L9:
aload 10
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 11
invokevirtual com/google/gson/internal/LinkedHashTreeMap$AvlBuilder/root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
L11:
aload 8
iload 1
aload 5
aastore
aload 8
iload 1
iload 4
iadd
aload 6
aastore
goto L3
L7:
iload 3
ifle L12
goto L11
L12:
aload 5
astore 6
aload 7
astore 5
goto L11
L1:
aload 8
areturn
.limit locals 12
.limit stack 3
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpeq L0
aload 1
ifnull L1
aload 1
aload 2
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;Z)V"
L0:
aload 1
ifnull L1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
aload 6
ifnull L2
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
L3:
aload 7
ifnull L4
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 4
L5:
iload 3
iload 4
isub
istore 5
iload 5
bipush -2
if_icmpne L6
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 8
aload 8
ifnull L7
aload 8
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
L8:
aload 6
ifnull L9
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 4
L10:
iload 4
iload 3
isub
istore 3
iload 3
iconst_m1
if_icmpeq L11
iload 3
ifne L12
iload 2
ifne L12
L11:
aload 0
aload 1
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
L13:
iload 2
ifeq L14
L1:
return
L2:
iconst_0
istore 3
goto L3
L4:
iconst_0
istore 4
goto L5
L7:
iconst_0
istore 3
goto L8
L9:
iconst_0
istore 4
goto L10
L12:
getstatic com/google/gson/internal/LinkedHashTreeMap/$assertionsDisabled Z
ifne L15
iload 3
iconst_1
if_icmpeq L15
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L15:
aload 0
aload 7
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 0
aload 1
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
goto L13
L6:
iload 5
iconst_2
if_icmpne L16
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 8
aload 8
ifnull L17
aload 8
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
L18:
aload 7
ifnull L19
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 4
L20:
iload 4
iload 3
isub
istore 3
iload 3
iconst_1
if_icmpeq L21
iload 3
ifne L22
iload 2
ifne L22
L21:
aload 0
aload 1
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
L23:
iload 2
ifne L1
L14:
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
goto L0
L17:
iconst_0
istore 3
goto L18
L19:
iconst_0
istore 4
goto L20
L22:
getstatic com/google/gson/internal/LinkedHashTreeMap/$assertionsDisabled Z
ifne L24
iload 3
iconst_m1
if_icmpeq L24
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L24:
aload 0
aload 6
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 0
aload 1
invokespecial com/google/gson/internal/LinkedHashTreeMap/rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
goto L23
L16:
iload 5
ifne L25
aload 1
iload 3
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
iload 2
ifeq L14
return
L25:
getstatic com/google/gson/internal/LinkedHashTreeMap/$assertionsDisabled Z
ifne L26
iload 5
iconst_m1
if_icmpeq L26
iload 5
iconst_1
if_icmpeq L26
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L26:
aload 1
iload 3
iload 4
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
iload 2
ifne L14
return
.limit locals 9
.limit stack 3
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 2
ifnull L0
aload 2
aload 5
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L0:
aload 5
ifnull L1
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
if_acmpne L2
aload 5
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
L2:
getstatic com/google/gson/internal/LinkedHashTreeMap/$assertionsDisabled Z
ifne L3
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
if_acmpeq L3
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L3:
aload 5
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
L1:
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/hash I
istore 3
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
arraylength
istore 4
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
iload 3
iload 4
iconst_1
isub
iand
aload 2
aastore
return
.limit locals 6
.limit stack 4
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
iconst_0
istore 4
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 8
aload 1
aload 7
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 7
ifnull L0
aload 7
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L0:
aload 0
aload 1
aload 6
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 6
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aload 6
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 5
ifnull L1
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 2
L2:
aload 7
ifnull L3
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
L4:
aload 1
iload 2
iload 3
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
iload 4
istore 2
aload 8
ifnull L5
aload 8
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 2
L5:
aload 6
iload 3
iload 2
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
return
L1:
iconst_0
istore 2
goto L2
L3:
iconst_0
istore 3
goto L4
.limit locals 9
.limit stack 3
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;)V"
iconst_0
istore 4
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 8
aload 1
aload 8
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 8
ifnull L0
aload 8
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L0:
aload 0
aload 1
aload 5
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 5
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aload 5
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 6
ifnull L1
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 2
L2:
aload 8
ifnull L3
aload 8
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
L4:
aload 1
iload 2
iload 3
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
iload 4
istore 2
aload 7
ifnull L5
aload 7
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 2
L5:
aload 5
iload 3
iload 2
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
return
L1:
iconst_0
istore 2
goto L2
L3:
iconst_0
istore 3
goto L4
.limit locals 9
.limit stack 3
.end method

.method private static secondaryHash(I)I
iload 0
iload 0
bipush 20
iushr
iload 0
bipush 12
iushr
ixor
ixor
istore 0
iload 0
bipush 7
iushr
iload 0
ixor
iload 0
iconst_4
iushr
ixor
ireturn
.limit locals 1
.limit stack 4
.end method

.method private writeReplace()Ljava/lang/Object;
.throws java/io/ObjectStreamException
new java/util/LinkedHashMap
dup
aload 0
invokespecial java/util/LinkedHashMap/<init>(Ljava/util/Map;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aconst_null
invokestatic java/util/Arrays/fill([Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
iconst_0
putfield com/google/gson/internal/LinkedHashTreeMap/size I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/modCount I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 3
aload 3
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
L0:
aload 1
aload 3
if_acmpeq L1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 2
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 2
astore 1
goto L0
L1:
aload 3
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 3
aload 3
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
return
.limit locals 4
.limit stack 3
.end method

.method public containsKey(Ljava/lang/Object;)Z
aload 0
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public entrySet()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/entrySet Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
new com/google/gson/internal/LinkedHashTreeMap$EntrySet
dup
aload 0
invokespecial com/google/gson/internal/LinkedHashTreeMap$EntrySet/<init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
astore 1
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap/entrySet Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "(TK;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aconst_null
astore 9
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/comparator Ljava/util/Comparator;
astore 11
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/table [Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 10
aload 1
invokevirtual java/lang/Object/hashCode()I
invokestatic com/google/gson/internal/LinkedHashTreeMap/secondaryHash(I)I
istore 4
iload 4
aload 10
arraylength
iconst_1
isub
iand
istore 5
aload 10
iload 5
aaload
astore 6
iconst_0
istore 3
aload 6
astore 7
aload 6
ifnull L0
aload 11
getstatic com/google/gson/internal/LinkedHashTreeMap/NATURAL_ORDER Ljava/util/Comparator;
if_acmpne L1
aload 1
checkcast java/lang/Comparable
astore 8
L2:
aload 8
ifnull L3
aload 8
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
invokeinterface java/lang/Comparable/compareTo(Ljava/lang/Object;)I 1
istore 3
L4:
iload 3
ifne L5
L6:
aload 6
areturn
L1:
aconst_null
astore 8
goto L2
L3:
aload 11
aload 1
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/key Ljava/lang/Object;
invokeinterface java/util/Comparator/compare(Ljava/lang/Object;Ljava/lang/Object;)I 2
istore 3
goto L4
L5:
iload 3
ifge L7
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
L8:
aload 7
ifnonnull L9
aload 6
astore 7
L0:
aload 9
astore 6
iload 2
ifeq L6
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/header Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 7
ifnonnull L10
aload 11
getstatic com/google/gson/internal/LinkedHashTreeMap/NATURAL_ORDER Ljava/util/Comparator;
if_acmpne L11
aload 1
instanceof java/lang/Comparable
ifne L11
new java/lang/ClassCastException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not Comparable"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
L7:
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
goto L8
L9:
aload 7
astore 6
goto L2
L11:
new com/google/gson/internal/LinkedHashTreeMap$Node
dup
aload 7
aload 1
iload 4
aload 6
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
invokespecial com/google/gson/internal/LinkedHashTreeMap$Node/<init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
astore 1
aload 10
iload 5
aload 1
aastore
L12:
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/size I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/size I
iload 3
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/threshold I
if_icmple L13
aload 0
invokespecial com/google/gson/internal/LinkedHashTreeMap/doubleCapacity()V
L13:
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/modCount I
aload 1
areturn
L10:
new com/google/gson/internal/LinkedHashTreeMap$Node
dup
aload 7
aload 1
iload 4
aload 6
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
invokespecial com/google/gson/internal/LinkedHashTreeMap$Node/<init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
astore 1
iload 3
ifge L14
aload 7
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L15:
aload 0
aload 7
iconst_1
invokespecial com/google/gson/internal/LinkedHashTreeMap/rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
goto L12
L14:
aload 7
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
goto L15
.limit locals 12
.limit stack 7
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "(Ljava/util/Map$Entry<**>;)Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 3
aload 3
ifnull L0
aload 0
aload 3
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokespecial com/google/gson/internal/LinkedHashTreeMap/equal(Ljava/lang/Object;Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 2
L1:
iload 2
ifeq L2
aload 3
areturn
L0:
iconst_0
istore 2
goto L1
L2:
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
.catch java/lang/ClassCastException from L0 to L1 using L2
aconst_null
astore 2
aload 1
ifnull L1
L0:
aload 0
aload 1
iconst_0
invokevirtual com/google/gson/internal/LinkedHashTreeMap/find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 2
L1:
aload 2
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(Ljava/lang/Object;)TV;"
aload 0
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
ifnull L0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public keySet()Ljava/util/Set;
.signature "()Ljava/util/Set<TK;>;"
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/keySet Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
new com/google/gson/internal/LinkedHashTreeMap$KeySet
dup
aload 0
invokespecial com/google/gson/internal/LinkedHashTreeMap$KeySet/<init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
astore 1
aload 0
aload 1
putfield com/google/gson/internal/LinkedHashTreeMap/keySet Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;TV;)TV;"
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "key == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
iconst_1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
astore 3
aload 1
aload 2
putfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(Ljava/lang/Object;)TV;"
aload 0
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
ifnull L0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/value Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
.signature "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;Z)V"
iload 2
ifeq L0
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/prev Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/next Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L0:
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 7
aload 5
ifnull L1
aload 6
ifnull L1
aload 5
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
if_icmple L2
aload 5
invokevirtual com/google/gson/internal/LinkedHashTreeMap$Node/last()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
L3:
aload 0
aload 5
iconst_0
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
iconst_0
istore 3
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 6
ifnull L4
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 3
aload 5
aload 6
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 6
aload 5
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L4:
iconst_0
istore 4
aload 1
getfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 6
aload 6
ifnull L5
aload 6
getfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
istore 4
aload 5
aload 6
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 6
aload 5
putfield com/google/gson/internal/LinkedHashTreeMap$Node/parent Lcom/google/gson/internal/LinkedHashTreeMap$Node;
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L5:
aload 5
iload 3
iload 4
invokestatic java/lang/Math/max(II)I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap$Node/height I
aload 0
aload 1
aload 5
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
return
L2:
aload 6
invokevirtual com/google/gson/internal/LinkedHashTreeMap$Node/first()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 5
goto L3
L1:
aload 5
ifnull L6
aload 0
aload 1
aload 5
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/left Lcom/google/gson/internal/LinkedHashTreeMap$Node;
L7:
aload 0
aload 7
iconst_0
invokespecial com/google/gson/internal/LinkedHashTreeMap/rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/size I
iconst_1
isub
putfield com/google/gson/internal/LinkedHashTreeMap/size I
aload 0
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/modCount I
iconst_1
iadd
putfield com/google/gson/internal/LinkedHashTreeMap/modCount I
return
L6:
aload 6
ifnull L8
aload 0
aload 1
aload 6
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
aload 1
aconst_null
putfield com/google/gson/internal/LinkedHashTreeMap$Node/right Lcom/google/gson/internal/LinkedHashTreeMap$Node;
goto L7
L8:
aload 0
aload 1
aconst_null
invokespecial com/google/gson/internal/LinkedHashTreeMap/replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
goto L7
.limit locals 8
.limit stack 3
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.signature "(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
aload 0
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
astore 1
aload 1
ifnull L0
aload 0
aload 1
iconst_1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public size()I
aload 0
getfield com/google/gson/internal/LinkedHashTreeMap/size I
ireturn
.limit locals 1
.limit stack 1
.end method
