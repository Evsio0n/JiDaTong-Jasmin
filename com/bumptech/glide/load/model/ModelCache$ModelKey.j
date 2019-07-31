.bytecode 50.0
.class final synchronized com/bumptech/glide/load/model/ModelCache$ModelKey
.super java/lang/Object
.signature "<A:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final ModelKey inner com/bumptech/glide/load/model/ModelCache$ModelKey outer com/bumptech/glide/load/model/ModelCache

.field private static final 'KEY_QUEUE' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/load/model/ModelCache$ModelKey<*>;>;"

.field private 'height' I

.field private 'model' Ljava/lang/Object; signature "TA;"

.field private 'width' I

.method static <clinit>()V
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putstatic com/bumptech/glide/load/model/ModelCache$ModelKey/KEY_QUEUE Ljava/util/Queue;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.signature "<A:Ljava/lang/Object;>(TA;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
getstatic com/bumptech/glide/load/model/ModelCache$ModelKey/KEY_QUEUE Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/model/ModelCache$ModelKey
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
new com/bumptech/glide/load/model/ModelCache$ModelKey
dup
invokespecial com/bumptech/glide/load/model/ModelCache$ModelKey/<init>()V
astore 3
L0:
aload 3
aload 0
iload 1
iload 2
invokespecial com/bumptech/glide/load/model/ModelCache$ModelKey/init(Ljava/lang/Object;II)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method private init(Ljava/lang/Object;II)V
.signature "(TA;II)V"
aload 0
aload 1
putfield com/bumptech/glide/load/model/ModelCache$ModelKey/model Ljava/lang/Object;
aload 0
iload 2
putfield com/bumptech/glide/load/model/ModelCache$ModelKey/width I
aload 0
iload 3
putfield com/bumptech/glide/load/model/ModelCache$ModelKey/height I
return
.limit locals 4
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/model/ModelCache$ModelKey
ifeq L0
aload 1
checkcast com/bumptech/glide/load/model/ModelCache$ModelKey
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/width I
aload 1
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/width I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/height I
aload 1
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/height I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/model Ljava/lang/Object;
aload 1
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/model Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/height I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/width I
iadd
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/model/ModelCache$ModelKey/model Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public release()V
getstatic com/bumptech/glide/load/model/ModelCache$ModelKey/KEY_QUEUE Ljava/util/Queue;
aload 0
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 2
.end method
