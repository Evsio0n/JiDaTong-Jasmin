.bytecode 50.0
.class public synchronized com/bumptech/glide/util/MarkEnforcingInputStream
.super java/io/FilterInputStream

.field private static final 'END_OF_STREAM' I = -1


.field private static final 'UNSET' I = -2147483648


.field private 'availableBytes' I

.method public <init>(Ljava/io/InputStream;)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
aload 0
ldc_w -2147483648
putfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
return
.limit locals 2
.limit stack 2
.end method

.method private getBytesToRead(J)J
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
ifne L0
ldc2_w -1L
lstore 3
L1:
lload 3
lreturn
L0:
lload 1
lstore 3
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
ldc_w -2147483648
if_icmpeq L1
lload 1
lstore 3
lload 1
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
i2l
lcmp
ifle L1
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
i2l
lreturn
.limit locals 5
.limit stack 4
.end method

.method private updateAvailableBytesAfterRead(J)V
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
ldc_w -2147483648
if_icmpeq L0
lload 1
ldc2_w -1L
lcmp
ifeq L0
aload 0
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
i2l
lload 1
lsub
l2i
putfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
L0:
return
.limit locals 3
.limit stack 5
.end method

.method public available()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
ldc_w -2147483648
if_icmpne L0
aload 0
invokespecial java/io/FilterInputStream/available()I
ireturn
L0:
aload 0
getfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
aload 0
invokespecial java/io/FilterInputStream/available()I
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public mark(I)V
aload 0
iload 1
invokespecial java/io/FilterInputStream/mark(I)V
aload 0
iload 1
putfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
return
.limit locals 2
.limit stack 2
.end method

.method public read()I
.throws java/io/IOException
aload 0
lconst_1
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/getBytesToRead(J)J
ldc2_w -1L
lcmp
ifne L0
iconst_m1
ireturn
L0:
aload 0
invokespecial java/io/FilterInputStream/read()I
istore 1
aload 0
lconst_1
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/updateAvailableBytesAfterRead(J)V
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public read([BII)I
.throws java/io/IOException
aload 0
iload 3
i2l
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/getBytesToRead(J)J
l2i
istore 3
iload 3
iconst_m1
if_icmpne L0
iconst_m1
ireturn
L0:
aload 0
aload 1
iload 2
iload 3
invokespecial java/io/FilterInputStream/read([BII)I
istore 2
aload 0
iload 2
i2l
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/updateAvailableBytesAfterRead(J)V
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public reset()V
.throws java/io/IOException
aload 0
invokespecial java/io/FilterInputStream/reset()V
aload 0
ldc_w -2147483648
putfield com/bumptech/glide/util/MarkEnforcingInputStream/availableBytes I
return
.limit locals 1
.limit stack 2
.end method

.method public skip(J)J
.throws java/io/IOException
aload 0
lload 1
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/getBytesToRead(J)J
lstore 1
lload 1
ldc2_w -1L
lcmp
ifne L0
ldc2_w -1L
lreturn
L0:
aload 0
lload 1
invokespecial java/io/FilterInputStream/skip(J)J
lstore 1
aload 0
lload 1
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/updateAvailableBytesAfterRead(J)V
lload 1
lreturn
.limit locals 3
.limit stack 4
.end method
