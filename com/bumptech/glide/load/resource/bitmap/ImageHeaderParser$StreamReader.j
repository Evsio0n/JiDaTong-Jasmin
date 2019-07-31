.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader
.super java/lang/Object
.inner class private static StreamReader inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser

.field private final 'is' Ljava/io/InputStream;

.method public <init>(Ljava/io/InputStream;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
return
.limit locals 2
.limit stack 2
.end method

.method public getByte()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUInt16()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
bipush 8
ishl
ldc_w 65280
iand
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
sipush 255
iand
ior
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getUInt8()S
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
sipush 255
iand
i2s
ireturn
.limit locals 1
.limit stack 2
.end method

.method public read([B)I
.throws java/io/IOException
aload 1
arraylength
istore 2
L0:
iload 2
ifle L1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
aload 1
aload 1
arraylength
iload 2
isub
iload 2
invokevirtual java/io/InputStream/read([BII)I
istore 3
iload 3
iconst_m1
if_icmpeq L1
iload 2
iload 3
isub
istore 2
goto L0
L1:
aload 1
arraylength
iload 2
isub
ireturn
.limit locals 4
.limit stack 4
.end method

.method public skip(J)J
.throws java/io/IOException
lload 1
lconst_0
lcmp
ifge L0
lconst_0
lreturn
L0:
lload 1
lstore 3
L1:
lload 3
lconst_0
lcmp
ifle L2
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
lload 3
invokevirtual java/io/InputStream/skip(J)J
lstore 5
lload 5
lconst_0
lcmp
ifle L3
lload 3
lload 5
lsub
lstore 3
goto L1
L3:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/is Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
iconst_m1
if_icmpne L4
L2:
lload 1
lload 3
lsub
lreturn
L4:
lload 3
lconst_1
lsub
lstore 3
goto L1
.limit locals 7
.limit stack 4
.end method
