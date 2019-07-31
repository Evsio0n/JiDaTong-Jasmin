.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/ExifOrientationStream
.super java/io/FilterInputStream

.field private static final 'EXIF_SEGMENT' [B

.field private static final 'ORIENTATION_POSITION' I

.field private static final 'SEGMENT_LENGTH' I

.field private static final 'SEGMENT_START_POSITION' I = 2


.field private final 'orientation' B

.field private 'position' I

.method static <clinit>()V
bipush 29
newarray byte
dup
iconst_0
ldc_w -1
bastore
dup
iconst_1
ldc_w -31
bastore
dup
iconst_2
ldc_w 0
bastore
dup
iconst_3
ldc_w 28
bastore
dup
iconst_4
ldc_w 69
bastore
dup
iconst_5
ldc_w 120
bastore
dup
bipush 6
ldc_w 105
bastore
dup
bipush 7
ldc_w 102
bastore
dup
bipush 8
ldc_w 0
bastore
dup
bipush 9
ldc_w 0
bastore
dup
bipush 10
ldc_w 77
bastore
dup
bipush 11
ldc_w 77
bastore
dup
bipush 12
ldc_w 0
bastore
dup
bipush 13
ldc_w 0
bastore
dup
bipush 14
ldc_w 0
bastore
dup
bipush 15
ldc_w 0
bastore
dup
bipush 16
ldc_w 0
bastore
dup
bipush 17
ldc_w 8
bastore
dup
bipush 18
ldc_w 0
bastore
dup
bipush 19
ldc_w 1
bastore
dup
bipush 20
ldc_w 1
bastore
dup
bipush 21
ldc_w 18
bastore
dup
bipush 22
ldc_w 0
bastore
dup
bipush 23
ldc_w 2
bastore
dup
bipush 24
ldc_w 0
bastore
dup
bipush 25
ldc_w 0
bastore
dup
bipush 26
ldc_w 0
bastore
dup
bipush 27
ldc_w 1
bastore
dup
bipush 28
ldc_w 0
bastore
putstatic com/bumptech/glide/load/data/ExifOrientationStream/EXIF_SEGMENT [B
getstatic com/bumptech/glide/load/data/ExifOrientationStream/EXIF_SEGMENT [B
arraylength
putstatic com/bumptech/glide/load/data/ExifOrientationStream/SEGMENT_LENGTH I
getstatic com/bumptech/glide/load/data/ExifOrientationStream/SEGMENT_LENGTH I
iconst_2
iadd
putstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Ljava/io/InputStream;I)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
iload 2
iconst_m1
if_icmplt L0
iload 2
bipush 8
if_icmple L1
L0:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot add invalid orientation: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iload 2
i2b
putfield com/bumptech/glide/load/data/ExifOrientationStream/orientation B
return
.limit locals 3
.limit stack 4
.end method

.method public mark(I)V
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public markSupported()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iconst_2
if_icmplt L0
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
getstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
if_icmple L1
L0:
aload 0
invokespecial java/io/FilterInputStream/read()I
istore 1
L2:
iload 1
iconst_m1
if_icmpeq L3
aload 0
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iconst_1
iadd
putfield com/bumptech/glide/load/data/ExifOrientationStream/position I
L3:
iload 1
ireturn
L1:
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
getstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
if_icmpne L4
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/orientation B
istore 1
goto L2
L4:
getstatic com/bumptech/glide/load/data/ExifOrientationStream/EXIF_SEGMENT [B
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iconst_2
isub
baload
sipush 255
iand
istore 1
goto L2
.limit locals 2
.limit stack 3
.end method

.method public read([BII)I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
getstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
if_icmple L0
aload 0
aload 1
iload 2
iload 3
invokespecial java/io/FilterInputStream/read([BII)I
istore 2
L1:
iload 2
ifle L2
aload 0
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iload 2
iadd
putfield com/bumptech/glide/load/data/ExifOrientationStream/position I
L2:
iload 2
ireturn
L0:
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
getstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
if_icmpne L3
aload 1
iload 2
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/orientation B
bastore
iconst_1
istore 2
goto L1
L3:
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iconst_2
if_icmpge L4
aload 0
aload 1
iload 2
iconst_2
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
isub
invokespecial java/io/FilterInputStream/read([BII)I
istore 2
goto L1
L4:
getstatic com/bumptech/glide/load/data/ExifOrientationStream/ORIENTATION_POSITION I
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
isub
iload 3
invokestatic java/lang/Math/min(II)I
istore 3
getstatic com/bumptech/glide/load/data/ExifOrientationStream/EXIF_SEGMENT [B
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
iconst_2
isub
aload 1
iload 2
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iload 3
istore 2
goto L1
.limit locals 4
.limit stack 5
.end method

.method public reset()V
.throws java/io/IOException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public skip(J)J
.throws java/io/IOException
aload 0
lload 1
invokespecial java/io/FilterInputStream/skip(J)J
lstore 1
lload 1
lconst_0
lcmp
ifle L0
aload 0
aload 0
getfield com/bumptech/glide/load/data/ExifOrientationStream/position I
i2l
lload 1
ladd
l2i
putfield com/bumptech/glide/load/data/ExifOrientationStream/position I
L0:
lload 1
lreturn
.limit locals 3
.limit stack 5
.end method
