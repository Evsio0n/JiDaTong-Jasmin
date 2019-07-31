.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/FlushedInputStream
.super java/io/FilterInputStream

.method public <init>(Ljava/io/InputStream;)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method public skip(J)J
.throws java/io/IOException
lconst_0
lstore 3
L0:
lload 3
lload 1
lcmp
iflt L1
L2:
lload 3
lreturn
L1:
aload 0
getfield com/nostra13/universalimageloader/core/assist/FlushedInputStream/in Ljava/io/InputStream;
lload 1
lload 3
lsub
invokevirtual java/io/InputStream/skip(J)J
lstore 7
lload 7
lstore 5
lload 7
lconst_0
lcmp
ifne L3
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/FlushedInputStream/read()I
iflt L2
lconst_1
lstore 5
L3:
lload 3
lload 5
ladd
lstore 3
goto L0
.limit locals 9
.limit stack 5
.end method
