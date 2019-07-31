.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/StreamEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/Encoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"

.field private static final 'TAG' Ljava/lang/String; = "StreamEncoder"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
invokevirtual com/bumptech/glide/util/ByteArrayPool/getBytes()[B
astore 4
L0:
aload 1
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 3
L1:
iload 3
iconst_m1
if_icmpeq L8
L4:
aload 2
aload 4
iconst_0
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L5:
goto L0
L2:
astore 1
L6:
ldc "StreamEncoder"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "StreamEncoder"
ldc "Failed to encode data onto the OutputStream"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L7:
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
aload 4
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
iconst_0
ireturn
L8:
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
aload 4
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
iconst_1
ireturn
L3:
astore 1
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
aload 4
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast java/io/InputStream
aload 2
invokevirtual com/bumptech/glide/load/model/StreamEncoder/encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
