.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap
.super java/util/TreeMap
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/util/TreeMap<TK;TV;>;"

.method <init>()V
aload 0
invokespecial java/util/TreeMap/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
bipush 123
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "}, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L1:
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap/isEmpty()Z
ifne L2
aload 1
aload 1
invokevirtual java/lang/StringBuilder/length()I
iconst_2
isub
aload 1
invokevirtual java/lang/StringBuilder/length()I
ldc ""
invokevirtual java/lang/StringBuilder/replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 1
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method
