.bytecode 50.0
.class public synchronized com/bumptech/glide/util/ExceptionCatchingInputStream
.super java/io/InputStream

.field private static final 'QUEUE' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/util/ExceptionCatchingInputStream;>;"

.field private 'exception' Ljava/io/IOException;

.field private 'wrapped' Ljava/io/InputStream;

.method static <clinit>()V
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
return
.limit locals 0
.limit stack 1
.end method

.method <init>()V
aload 0
invokespecial java/io/InputStream/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static clearQueue()V
L0:
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
invokeinterface java/util/Queue/isEmpty()Z 0
ifne L1
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
invokeinterface java/util/Queue/remove()Ljava/lang/Object; 0
pop
goto L0
L1:
return
.limit locals 0
.limit stack 1
.end method

.method public static obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/util/ExceptionCatchingInputStream
astore 2
aload 1
monitorexit
L1:
aload 2
astore 1
aload 2
ifnonnull L5
new com/bumptech/glide/util/ExceptionCatchingInputStream
dup
invokespecial com/bumptech/glide/util/ExceptionCatchingInputStream/<init>()V
astore 1
L5:
aload 1
aload 0
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/setInputStream(Ljava/io/InputStream;)V
aload 1
areturn
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 3
.limit stack 2
.end method

.method public available()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
invokevirtual java/io/InputStream/available()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
return
.limit locals 1
.limit stack 1
.end method

.method public getException()Ljava/io/IOException;
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
areturn
.limit locals 1
.limit stack 1
.end method

.method public mark(I)V
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
iload 1
invokevirtual java/io/InputStream/mark(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public markSupported()Z
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
invokevirtual java/io/InputStream/markSupported()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read()I
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 0
aload 2
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public read([B)I
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
aload 1
invokevirtual java/io/InputStream/read([B)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 0
aload 1
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public read([BII)I
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
aload 1
iload 2
iload 3
invokevirtual java/io/InputStream/read([BII)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 0
aload 1
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public release()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
aconst_null
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
aload 0
aconst_null
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
getstatic com/bumptech/glide/util/ExceptionCatchingInputStream/QUEUE Ljava/util/Queue;
aload 0
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
aload 1
monitorexit
L1:
return
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public reset()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
invokevirtual java/io/InputStream/reset()V
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
.limit stack 1
.end method

.method setInputStream(Ljava/io/InputStream;)V
aload 0
aload 1
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
return
.limit locals 2
.limit stack 2
.end method

.method public skip(J)J
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/util/ExceptionCatchingInputStream/wrapped Ljava/io/InputStream;
lload 1
invokevirtual java/io/InputStream/skip(J)J
lstore 1
L1:
lload 1
lreturn
L2:
astore 3
aload 0
aload 3
putfield com/bumptech/glide/util/ExceptionCatchingInputStream/exception Ljava/io/IOException;
lconst_0
lreturn
.limit locals 4
.limit stack 3
.end method
