.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
.super java/io/FilterInputStream
.inner class public static InvalidMarkException inner com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException outer com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream

.field private static final 'TAG' Ljava/lang/String; = "BufferedIs"

.field private volatile 'buf' [B

.field private 'count' I

.field private 'marklimit' I

.field private 'markpos' I

.field private 'pos' I

.method public <init>(Ljava/io/InputStream;[B)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
aload 0
iconst_m1
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
aload 2
ifnull L0
aload 2
arraylength
ifne L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "buffer is null or empty"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
return
.limit locals 3
.limit stack 3
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
iconst_m1
if_icmpeq L0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
isub
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
if_icmplt L1
L0:
aload 1
aload 2
invokevirtual java/io/InputStream/read([B)I
istore 3
iload 3
ifle L2
aload 0
iconst_m1
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
iload 3
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
L2:
iload 3
ireturn
L1:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
ifne L3
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
aload 2
arraylength
if_icmple L3
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 2
arraylength
if_icmpne L3
aload 2
arraylength
iconst_2
imul
istore 4
iload 4
istore 3
iload 4
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
if_icmple L4
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
istore 3
L4:
ldc "BufferedIs"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "BufferedIs"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "allocate buffer of length: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
iload 3
newarray byte
astore 5
aload 2
iconst_0
aload 5
iconst_0
aload 2
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 5
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
L6:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
isub
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 1
aload 5
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 5
arraylength
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
invokevirtual java/io/InputStream/read([BII)I
istore 4
iload 4
ifgt L7
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
istore 3
L8:
aload 0
iload 3
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
iload 4
ireturn
L3:
aload 2
astore 5
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
ifle L6
aload 2
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
aload 2
iconst_0
aload 2
arraylength
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
astore 5
goto L6
L7:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
iload 4
iadd
istore 3
goto L8
.limit locals 6
.limit stack 6
.end method

.method private static streamClosed()Ljava/io/IOException;
.throws java/io/IOException
new java/io/IOException
dup
ldc "BufferedInputStream is closed"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 0
.limit stack 3
.end method

.method public available()I
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L2 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
astore 4
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
ifnull L3
L1:
aload 4
ifnonnull L4
L3:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
L4:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
istore 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
istore 2
aload 4
invokevirtual java/io/InputStream/available()I
istore 3
L5:
aload 0
monitorexit
iload 1
iload 2
isub
iload 3
iadd
ireturn
.limit locals 5
.limit stack 2
.end method

.method public close()V
.throws java/io/IOException
aload 0
aconst_null
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
astore 1
aload 0
aconst_null
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
aload 1
ifnull L0
aload 1
invokevirtual java/io/InputStream/close()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public fixMarkLimit()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
arraylength
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
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

.method public mark(I)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
iload 1
invokestatic java/lang/Math/max(II)I
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
L1:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public markSupported()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read()I
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L2 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
iconst_m1
istore 1
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
astore 4
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
astore 3
L1:
aload 4
ifnull L3
aload 3
ifnonnull L4
L3:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
L4:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
if_icmplt L11
aload 0
aload 3
aload 4
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/fillbuf(Ljava/io/InputStream;[B)I
istore 2
L5:
iload 2
iconst_m1
if_icmpne L11
L12:
aload 0
monitorexit
iload 1
ireturn
L11:
aload 4
astore 3
L6:
aload 4
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
if_acmpeq L9
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
astore 4
L7:
aload 4
astore 3
aload 4
ifnonnull L9
L8:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L9:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
ifle L12
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L10:
aload 3
iload 1
baload
istore 1
iload 1
sipush 255
iand
istore 1
goto L12
.limit locals 5
.limit stack 3
.end method

.method public read([BII)I
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L2 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
iconst_m1
istore 6
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
astore 9
L1:
aload 9
ifnonnull L30
L3:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L30:
iload 3
ifne L4
iconst_0
istore 2
L31:
aload 0
monitorexit
iload 2
ireturn
L4:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
astore 10
L5:
aload 10
ifnonnull L7
L6:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L7:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
if_icmpge L32
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
iload 3
if_icmplt L13
L8:
iload 3
istore 4
L9:
aload 9
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 1
iload 2
iload 4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
iload 4
iadd
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L10:
iload 4
iload 3
if_icmpeq L33
L11:
aload 10
invokevirtual java/io/InputStream/available()I
ifne L34
L12:
goto L33
L13:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
istore 4
L14:
goto L9
L15:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
iconst_m1
if_icmpne L17
iload 4
aload 9
arraylength
if_icmplt L17
aload 10
aload 1
iload 2
iload 4
invokevirtual java/io/InputStream/read([BII)I
istore 7
L16:
aload 9
astore 8
iload 7
istore 5
iload 7
iconst_m1
if_icmpne L35
iload 6
istore 2
iload 4
iload 3
if_icmpeq L31
iload 3
iload 4
isub
istore 2
goto L31
L17:
aload 0
aload 10
aload 9
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/fillbuf(Ljava/io/InputStream;[B)I
iconst_m1
if_icmpne L36
L18:
iload 6
istore 2
iload 4
iload 3
if_icmpeq L31
iload 3
iload 4
isub
istore 2
goto L31
L36:
aload 9
astore 8
L19:
aload 9
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
if_acmpeq L22
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
astore 9
L20:
aload 9
astore 8
aload 9
ifnonnull L22
L21:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L22:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
iload 4
if_icmplt L26
L23:
iload 4
istore 5
L24:
aload 8
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 1
iload 2
iload 5
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
iload 5
iadd
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L25:
goto L35
L26:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
istore 5
L27:
goto L24
L28:
aload 10
invokevirtual java/io/InputStream/available()I
istore 7
L29:
iload 7
ifne L37
iload 3
iload 4
isub
istore 2
goto L31
L37:
iload 2
iload 5
iadd
istore 2
aload 8
astore 9
goto L15
L33:
iload 4
istore 2
goto L31
L34:
iload 2
iload 4
iadd
istore 2
iload 3
iload 4
isub
istore 4
goto L15
L32:
iload 3
istore 4
goto L15
L35:
iload 4
iload 5
isub
istore 4
iload 4
ifne L28
iload 3
istore 2
goto L31
.limit locals 11
.limit stack 5
.end method

.method public reset()V
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
ifnonnull L2
new java/io/IOException
dup
ldc "Stream is closed"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 1
aload 0
monitorexit
aload 1
athrow
L2:
iconst_m1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
if_icmpne L3
new com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException
dup
ldc "Mark has been invalidated"
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L4:
aload 0
monitorexit
return
.limit locals 2
.limit stack 3
.end method

.method public skip(J)J
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L2 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/buf [B
astore 7
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/in Ljava/io/InputStream;
astore 8
L1:
aload 7
ifnonnull L15
L3:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L2:
astore 7
aload 0
monitorexit
aload 7
athrow
L15:
lload 1
lconst_1
lcmp
ifge L16
lconst_0
lstore 1
L17:
aload 0
monitorexit
lload 1
lreturn
L16:
aload 8
ifnonnull L5
L4:
invokestatic com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/streamClosed()Ljava/io/IOException;
athrow
L5:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
i2l
lload 1
lcmp
iflt L7
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
i2l
lload 1
ladd
l2i
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L6:
goto L17
L7:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
i2l
lstore 3
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/markpos I
iconst_m1
if_icmpeq L13
lload 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/marklimit I
i2l
lcmp
ifgt L13
aload 0
aload 8
aload 7
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/fillbuf(Ljava/io/InputStream;[B)I
iconst_m1
if_icmpne L9
L8:
lload 3
lstore 1
goto L17
L9:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
isub
i2l
lload 1
lload 3
lsub
lcmp
iflt L11
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
i2l
lload 1
lload 3
lsub
ladd
l2i
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L10:
goto L17
L11:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
i2l
lstore 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
i2l
lstore 5
aload 0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/count I
putfield com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/pos I
L12:
lload 1
lload 3
ladd
lload 5
lsub
lstore 1
goto L17
L13:
aload 8
lload 1
lload 3
lsub
invokevirtual java/io/InputStream/skip(J)J
lstore 1
L14:
lload 3
lload 1
ladd
lstore 1
goto L17
.limit locals 9
.limit stack 7
.end method
