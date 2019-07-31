.bytecode 50.0
.class synchronized abstract com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool
.super java/lang/Object
.signature "<T::Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;>Ljava/lang/Object;"

.field private static final 'MAX_SIZE' I = 20


.field private final 'keyPool' Ljava/util/Queue; signature "Ljava/util/Queue<TT;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 20
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putfield com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/keyPool Ljava/util/Queue;
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
.signature "()TT;"
.end method

.method protected get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
.signature "()TT;"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/keyPool Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/engine/bitmap_recycle/Poolable
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 1
.end method

.method public offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
.signature "(TT;)V"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/keyPool Ljava/util/Queue;
invokeinterface java/util/Queue/size()I 0
bipush 20
if_icmpge L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool/keyPool Ljava/util/Queue;
aload 1
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
