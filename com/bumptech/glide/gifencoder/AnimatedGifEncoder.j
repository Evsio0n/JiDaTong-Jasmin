.bytecode 50.0
.class public synchronized com/bumptech/glide/gifencoder/AnimatedGifEncoder
.super java/lang/Object

.field private static final 'MIN_TRANSPARENT_PERCENTAGE' D = 4.0D


.field private static final 'TAG' Ljava/lang/String; = "AnimatedGifEncoder"

.field private 'closeStream' Z

.field private 'colorDepth' I

.field private 'colorTab' [B

.field private 'delay' I

.field private 'dispose' I

.field private 'firstFrame' Z

.field private 'hasTransparentPixels' Z

.field private 'height' I

.field private 'image' Landroid/graphics/Bitmap;

.field private 'indexedPixels' [B

.field private 'out' Ljava/io/OutputStream;

.field private 'palSize' I

.field private 'pixels' [B

.field private 'repeat' I

.field private 'sample' I

.field private 'sizeSet' Z

.field private 'started' Z

.field private 'transIndex' I

.field private 'transparent' Ljava/lang/Integer;

.field private 'usedEntry' [Z

.field private 'width' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transparent Ljava/lang/Integer;
aload 0
iconst_m1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/repeat I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/delay I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
aload 0
sipush 256
newarray boolean
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/usedEntry [Z
aload 0
bipush 7
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/palSize I
aload 0
iconst_m1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/dispose I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/closeStream Z
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sizeSet Z
aload 0
bipush 10
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sample I
return
.limit locals 1
.limit stack 2
.end method

.method private analyzePixels()V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
arraylength
istore 2
iload 2
iconst_3
idiv
istore 4
aload 0
iload 4
newarray byte
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/indexedPixels [B
new com/bumptech/glide/gifencoder/NeuQuant
dup
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
iload 2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sample I
invokespecial com/bumptech/glide/gifencoder/NeuQuant/<init>([BII)V
astore 7
aload 0
aload 7
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/process()[B
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
arraylength
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iload 2
baload
istore 1
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iload 2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iload 2
iconst_2
iadd
baload
bastore
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iload 2
iconst_2
iadd
iload 1
bastore
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/usedEntry [Z
iload 2
iconst_3
idiv
iconst_0
bastore
iload 2
iconst_3
iadd
istore 2
goto L0
L1:
iconst_0
istore 2
iconst_0
istore 3
L2:
iload 2
iload 4
if_icmpge L3
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
astore 8
iload 3
iconst_1
iadd
istore 5
aload 8
iload 3
baload
istore 6
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
astore 8
iload 5
iconst_1
iadd
istore 3
aload 7
iload 6
sipush 255
iand
aload 8
iload 5
baload
sipush 255
iand
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
iload 3
baload
sipush 255
iand
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/map(III)I
istore 5
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/usedEntry [Z
iload 5
iconst_1
bastore
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/indexedPixels [B
iload 2
iload 5
i2b
bastore
iload 2
iconst_1
iadd
istore 2
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
aload 0
bipush 8
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorDepth I
aload 0
bipush 7
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/palSize I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transparent Ljava/lang/Integer;
ifnull L4
aload 0
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transparent Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/findClosest(I)I
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transIndex I
L5:
return
L4:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/hasTransparentPixels Z
ifeq L5
aload 0
aload 0
iconst_0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/findClosest(I)I
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transIndex I
return
.limit locals 9
.limit stack 5
.end method

.method private findClosest(I)I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
ifnonnull L0
iconst_m1
istore 3
L1:
iload 3
ireturn
L0:
iload 1
invokestatic android/graphics/Color/red(I)I
istore 7
iload 1
invokestatic android/graphics/Color/green(I)I
istore 8
iload 1
invokestatic android/graphics/Color/blue(I)I
istore 9
iconst_0
istore 1
ldc_w 16777216
istore 2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
arraylength
istore 10
iconst_0
istore 4
L2:
iload 1
istore 3
iload 4
iload 10
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
astore 12
iload 4
iconst_1
iadd
istore 5
iload 7
aload 12
iload 4
baload
sipush 255
iand
isub
istore 3
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
astore 12
iload 5
iconst_1
iadd
istore 11
iload 8
aload 12
iload 5
baload
sipush 255
iand
isub
istore 4
iload 9
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iload 11
baload
sipush 255
iand
isub
istore 5
iload 3
iload 3
imul
iload 4
iload 4
imul
iadd
iload 5
iload 5
imul
iadd
istore 6
iload 11
iconst_3
idiv
istore 5
iload 2
istore 4
iload 1
istore 3
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/usedEntry [Z
iload 5
baload
ifeq L3
iload 2
istore 4
iload 1
istore 3
iload 6
iload 2
if_icmpge L3
iload 6
istore 4
iload 5
istore 3
L3:
iload 11
iconst_1
iadd
istore 1
iload 4
istore 2
iload 1
istore 4
iload 3
istore 1
goto L2
.limit locals 13
.limit stack 3
.end method

.method private getImagePixels()V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
istore 4
iload 3
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
if_icmpne L0
iload 4
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
if_icmpeq L1
L0:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 10
new android/graphics/Canvas
dup
aload 10
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
aload 10
fconst_0
fconst_0
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
aload 10
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
L1:
iload 3
iload 4
imul
newarray int
astore 10
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
aload 10
iconst_0
iload 3
iconst_0
iconst_0
iload 3
iload 4
invokevirtual android/graphics/Bitmap/getPixels([IIIIIII)V
aload 0
aload 10
arraylength
iconst_3
imul
newarray byte
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/hasTransparentPixels Z
iconst_0
istore 6
aload 10
arraylength
istore 7
iconst_0
istore 3
iconst_0
istore 5
L2:
iload 3
iload 7
if_icmpge L3
aload 10
iload 3
iaload
istore 8
iload 6
istore 4
iload 8
ifne L4
iload 6
iconst_1
iadd
istore 4
L4:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
astore 11
iload 5
iconst_1
iadd
istore 6
aload 11
iload 5
iload 8
sipush 255
iand
i2b
bastore
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
astore 11
iload 6
iconst_1
iadd
istore 5
aload 11
iload 6
iload 8
bipush 8
ishr
sipush 255
iand
i2b
bastore
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
iload 5
iload 8
bipush 16
ishr
sipush 255
iand
i2b
bastore
iload 3
iconst_1
iadd
istore 3
iload 5
iconst_1
iadd
istore 5
iload 4
istore 6
goto L2
L3:
iload 6
bipush 100
imul
i2d
aload 10
arraylength
i2d
ddiv
dstore 1
dload 1
ldc2_w 4.0D
dcmpl
ifle L5
iconst_1
istore 9
L6:
aload 0
iload 9
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/hasTransparentPixels Z
ldc "AnimatedGifEncoder"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "AnimatedGifEncoder"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "got pixels for frame with "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
dload 1
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc "% transparent pixels"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
return
L5:
iconst_0
istore 9
goto L6
.limit locals 12
.limit stack 8
.end method

.method private writeGraphicCtrlExt()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
bipush 33
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
sipush 249
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_4
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transparent Ljava/lang/Integer;
ifnonnull L0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/hasTransparentPixels Z
ifne L0
iconst_0
istore 2
iconst_0
istore 1
L1:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/dispose I
iflt L2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/dispose I
bipush 7
iand
istore 1
L2:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iload 1
iconst_2
ishl
iconst_0
ior
iconst_0
ior
iload 2
ior
invokevirtual java/io/OutputStream/write(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/delay I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transIndex I
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
return
L0:
iconst_1
istore 2
iconst_2
istore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method private writeImageDesc()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
bipush 44
invokevirtual java/io/OutputStream/write(I)V
aload 0
iconst_0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
iconst_0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
ifeq L0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
return
L0:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/palSize I
sipush 128
ior
invokevirtual java/io/OutputStream/write(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private writeLSD()V
.throws java/io/IOException
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/palSize I
sipush 240
ior
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private writeNetscapeExt()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
bipush 33
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
sipush 255
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
bipush 11
invokevirtual java/io/OutputStream/write(I)V
aload 0
ldc "NETSCAPE2.0"
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeString(Ljava/lang/String;)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_3
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_1
invokevirtual java/io/OutputStream/write(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/repeat I
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeShort(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private writePalette()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
iconst_0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
arraylength
invokevirtual java/io/OutputStream/write([BII)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
sipush 768
iload 2
isub
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iconst_0
invokevirtual java/io/OutputStream/write(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 4
.end method

.method private writePixels()V
.throws java/io/IOException
new com/bumptech/glide/gifencoder/LZWEncoder
dup
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/indexedPixels [B
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorDepth I
invokespecial com/bumptech/glide/gifencoder/LZWEncoder/<init>(II[BI)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/encode(Ljava/io/OutputStream;)V
return
.limit locals 1
.limit stack 6
.end method

.method private writeShort(I)V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iload 1
sipush 255
iand
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
iload 1
bipush 8
ishr
sipush 255
iand
invokevirtual java/io/OutputStream/write(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private writeString(Ljava/lang/String;)V
.throws java/io/IOException
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 1
iload 2
invokevirtual java/lang/String/charAt(I)C
i2b
invokevirtual java/io/OutputStream/write(I)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public addFrame(Landroid/graphics/Bitmap;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L4 to L5 using L2
aload 1
ifnull L6
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
ifne L0
L6:
iconst_0
ireturn
L0:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sizeSet Z
ifne L1
aload 0
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/setSize(II)V
L1:
aload 0
aload 1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/getImagePixels()V
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/analyzePixels()V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
ifeq L3
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeLSD()V
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writePalette()V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/repeat I
iflt L3
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeNetscapeExt()V
L3:
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeGraphicCtrlExt()V
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeImageDesc()V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
ifne L4
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writePalette()V
L4:
aload 0
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writePixels()V
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
L5:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public finish()Z
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
ifne L5
iconst_0
ireturn
L5:
iconst_1
istore 2
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
L0:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
bipush 59
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
invokevirtual java/io/OutputStream/flush()V
L1:
iload 2
istore 1
L3:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/closeStream Z
ifeq L6
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
invokevirtual java/io/OutputStream/close()V
L4:
iload 2
istore 1
L6:
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transIndex I
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/image Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/pixels [B
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/indexedPixels [B
aload 0
aconst_null
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/colorTab [B
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/closeStream Z
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
iload 1
ireturn
L2:
astore 3
iconst_0
istore 1
goto L6
.limit locals 4
.limit stack 2
.end method

.method public setDelay(I)V
aload 0
iload 1
i2f
ldc_w 10.0F
fdiv
invokestatic java/lang/Math/round(F)I
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/delay I
return
.limit locals 2
.limit stack 3
.end method

.method public setDispose(I)V
iload 1
iflt L0
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/dispose I
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setFrameRate(F)V
fload 1
fconst_0
fcmpl
ifeq L0
aload 0
ldc_w 100.0F
fload 1
fdiv
invokestatic java/lang/Math/round(F)I
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/delay I
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setQuality(I)V
iload 1
istore 2
iload 1
iconst_1
if_icmpge L0
iconst_1
istore 2
L0:
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sample I
return
.limit locals 3
.limit stack 2
.end method

.method public setRepeat(I)V
iload 1
iflt L0
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/repeat I
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setSize(II)V
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
ifeq L0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/firstFrame Z
ifne L0
return
L0:
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
iconst_1
if_icmpge L1
aload 0
sipush 320
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/width I
L1:
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
iconst_1
if_icmpge L2
aload 0
sipush 240
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/height I
L2:
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/sizeSet Z
return
.limit locals 3
.limit stack 2
.end method

.method public setTransparent(I)V
aload 0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/transparent Ljava/lang/Integer;
return
.limit locals 2
.limit stack 2
.end method

.method public start(Ljava/io/OutputStream;)Z
.catch java/io/IOException from L0 to L1 using L2
aload 1
ifnonnull L3
iconst_0
ireturn
L3:
iconst_1
istore 2
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/closeStream Z
aload 0
aload 1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
L0:
aload 0
ldc "GIF89a"
invokespecial com/bumptech/glide/gifencoder/AnimatedGifEncoder/writeString(Ljava/lang/String;)V
L1:
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
iload 2
ireturn
L2:
astore 1
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public start(Ljava/lang/String;)Z
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;)V
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/out Ljava/io/OutputStream;
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/start(Ljava/io/OutputStream;)Z
istore 2
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/closeStream Z
L1:
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/AnimatedGifEncoder/started Z
iload 2
ireturn
L2:
astore 1
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 6
.end method
