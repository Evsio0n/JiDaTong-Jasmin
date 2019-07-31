.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class private static LinkedEntry inner com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry outer com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap

.field private final 'key' Ljava/lang/Object; signature "TK;"

.field 'next' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"

.field 'prev' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"

.field private 'values' Ljava/util/List; signature "Ljava/util/List<TV;>;"

.method public <init>()V
aload 0
aconst_null
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/<init>(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/lang/Object;)V
.signature "(TK;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 0
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/prev Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
aload 0
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/next Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
aload 0
aload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/key Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/key Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public add(Ljava/lang/Object;)V
.signature "(TV;)V"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public removeLast()Ljava/lang/Object;
.signature "()TV;"
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/size()I
istore 1
iload 1
ifle L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public size()I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry/values Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
