.bytecode 50.0
.class public synchronized com/bumptech/glide/load/MultiTransformation
.super java/lang/Object
.implements com/bumptech/glide/load/Transformation
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/Transformation<TT;>;"

.field private 'id' Ljava/lang/String;

.field private final 'transformations' Ljava/util/Collection; signature "Ljava/util/Collection<+Lcom/bumptech/glide/load/Transformation<TT;>;>;"

.method public <init>(Ljava/util/Collection;)V
.signature "(Ljava/util/Collection<+Lcom/bumptech/glide/load/Transformation<TT;>;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
invokeinterface java/util/Collection/size()I 0
iconst_1
if_icmpge L0
new java/lang/IllegalArgumentException
dup
ldc "MultiTransformation must contain at least one Transformation"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/MultiTransformation/transformations Ljava/util/Collection;
return
.limit locals 2
.limit stack 3
.end method

.method public transient <init>([Lcom/bumptech/glide/load/Transformation;)V
.signature "([Lcom/bumptech/glide/load/Transformation<TT;>;)V"
.annotation visible Ljava/lang/SafeVarargs;
.end annotation
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
arraylength
iconst_1
if_icmpge L0
new java/lang/IllegalArgumentException
dup
ldc "MultiTransformation must contain at least one Transformation"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
putfield com/bumptech/glide/load/MultiTransformation/transformations Ljava/util/Collection;
return
.limit locals 2
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/MultiTransformation/id Ljava/lang/String;
ifnonnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
getfield com/bumptech/glide/load/MultiTransformation/transformations Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/Transformation
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/MultiTransformation/id Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/MultiTransformation/id Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;II)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
aload 1
astore 4
aload 0
getfield com/bumptech/glide/load/MultiTransformation/transformations Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 6
L0:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/Transformation
aload 4
iload 2
iload 3
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
aload 4
ifnull L2
aload 4
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L2
aload 4
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L2
aload 4
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
L2:
aload 5
astore 4
goto L0
L1:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method
