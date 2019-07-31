.bytecode 50.0
.class final synchronized com/bumptech/glide/ListPreloader$PreloadTargetQueue
.super java/lang/Object
.inner class private static final PreloadTargetQueue inner com/bumptech/glide/ListPreloader$PreloadTargetQueue outer com/bumptech/glide/ListPreloader

.field private final 'queue' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/ListPreloader$PreloadTarget;>;"

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putfield com/bumptech/glide/ListPreloader$PreloadTargetQueue/queue Ljava/util/Queue;
iconst_0
istore 2
L0:
iload 2
iload 1
if_icmpge L1
aload 0
getfield com/bumptech/glide/ListPreloader$PreloadTargetQueue/queue Ljava/util/Queue;
new com/bumptech/glide/ListPreloader$PreloadTarget
dup
aconst_null
invokespecial com/bumptech/glide/ListPreloader$PreloadTarget/<init>(Lcom/bumptech/glide/ListPreloader$1;)V
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 3
.limit stack 4
.end method

.method public next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
aload 0
getfield com/bumptech/glide/ListPreloader$PreloadTargetQueue/queue Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/ListPreloader$PreloadTarget
astore 3
aload 0
getfield com/bumptech/glide/ListPreloader$PreloadTargetQueue/queue Ljava/util/Queue;
aload 3
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
aload 3
iload 1
invokestatic com/bumptech/glide/ListPreloader$PreloadTarget/access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
pop
aload 3
iload 2
invokestatic com/bumptech/glide/ListPreloader$PreloadTarget/access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
pop
aload 3
areturn
.limit locals 4
.limit stack 2
.end method
