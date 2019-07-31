.bytecode 50.0
.class final synchronized com/bumptech/glide/load/engine/prefill/PreFillQueue
.super java/lang/Object

.field private final 'bitmapsPerType' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"

.field private 'bitmapsRemaining' I

.field private 'keyIndex' I

.field private final 'keyList' Ljava/util/List; signature "Ljava/util/List<Lcom/bumptech/glide/load/engine/prefill/PreFillType;>;"

.method public <init>(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsPerType Ljava/util/Map;
aload 0
new java/util/ArrayList
dup
aload 1
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyList Ljava/util/List;
aload 1
invokeinterface java/util/Map/values()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 2
aload 0
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
aload 2
invokevirtual java/lang/Integer/intValue()I
iadd
putfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
goto L0
L1:
return
.limit locals 3
.limit stack 4
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEmpty()Z
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyList Ljava/util/List;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/prefill/PreFillType
astore 2
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsPerType Ljava/util/Map;
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 3
aload 3
invokevirtual java/lang/Integer/intValue()I
iconst_1
if_icmpne L0
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsPerType Ljava/util/Map;
aload 2
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyList Ljava/util/List;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyIndex I
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L1:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
iconst_1
isub
putfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsRemaining I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
iconst_0
istore 1
L3:
aload 0
iload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyIndex I
aload 2
areturn
L0:
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/bitmapsPerType Ljava/util/Map;
aload 2
aload 3
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L1
L2:
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyIndex I
iconst_1
iadd
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillQueue/keyList Ljava/util/List;
invokeinterface java/util/List/size()I 0
irem
istore 1
goto L3
.limit locals 4
.limit stack 4
.end method
