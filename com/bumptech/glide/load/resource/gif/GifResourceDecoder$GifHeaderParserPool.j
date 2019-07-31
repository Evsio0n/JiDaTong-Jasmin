.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool
.super java/lang/Object
.inner class static GifHeaderParserPool inner com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool outer com/bumptech/glide/load/resource/gif/GifResourceDecoder

.field private final 'pool' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/gifdecoder/GifHeaderParser;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/pool Ljava/util/Queue;
return
.limit locals 1
.limit stack 2
.end method

.method public obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/pool Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/gifdecoder/GifHeaderParser
astore 3
L1:
aload 3
astore 2
aload 3
ifnonnull L4
L3:
new com/bumptech/glide/gifdecoder/GifHeaderParser
dup
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/<init>()V
astore 2
L4:
aload 2
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
astore 1
L5:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/clear()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/pool Ljava/util/Queue;
aload 1
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
