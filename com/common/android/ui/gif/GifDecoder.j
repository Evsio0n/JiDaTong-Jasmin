.bytecode 50.0
.class public synchronized com/common/android/ui/gif/GifDecoder
.super java/lang/Object
.inner class public static abstract interface BitmapDecodeCallback inner com/common/android/ui/gif/GifDecoder$BitmapDecodeCallback outer com/common/android/ui/gif/GifDecoder

.field protected static final 'MAX_STACK_SIZE' I = 4096


.field public static final 'STATUS_FORMAT_ERROR' I = 1


.field public static final 'STATUS_OK' I = 0


.field public static final 'STATUS_OPEN_ERROR' I = 2


.field protected 'act' [I

.field protected 'bgColor' I

.field protected 'bgIndex' I

.field protected 'block' [B

.field protected 'blockSize' I

.field protected 'delay' I

.field protected 'dispose' I

.field protected 'frameCount' I

.field protected 'frames' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;"

.field protected 'gct' [I

.field protected 'gctFlag' Z

.field protected 'gctSize' I

.field protected 'height' I

.field protected 'ih' I

.field protected 'image' Landroid/graphics/Bitmap;

.field protected 'in' Ljava/io/InputStream;

.field protected 'interlace' Z

.field protected 'iw' I

.field protected 'ix' I

.field protected 'iy' I

.field protected 'lastBgColor' I

.field protected 'lastBitmap' Landroid/graphics/Bitmap;

.field protected 'lastDispose' I

.field protected 'lct' [I

.field protected 'lctFlag' Z

.field protected 'lctSize' I

.field protected 'loopCount' I

.field protected 'lrh' I

.field protected 'lrw' I

.field protected 'lrx' I

.field protected 'lry' I

.field private 'mBitmapDecodeCallback' Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;

.field private 'mIsQuit' Z

.field protected 'pixelAspect' I

.field protected 'pixelStack' [B

.field protected 'pixels' [B

.field protected 'prefix' [S

.field protected 'status' I

.field protected 'suffix' [B

.field protected 'transIndex' I

.field protected 'transparency' Z

.field protected 'width' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/loopCount I
aload 0
sipush 256
newarray byte
putfield com/common/android/ui/gif/GifDecoder/block [B
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/blockSize I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/dispose I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/lastDispose I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/transparency Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/delay I
aload 0
aconst_null
putfield com/common/android/ui/gif/GifDecoder/mBitmapDecodeCallback Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/mIsQuit Z
return
.limit locals 1
.limit stack 2
.end method

.method protected decodeBitmapData()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/iw I
aload 0
getfield com/common/android/ui/gif/GifDecoder/ih I
imul
istore 16
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixels [B
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixels [B
arraylength
iload 16
if_icmpge L1
L0:
aload 0
iload 16
newarray byte
putfield com/common/android/ui/gif/GifDecoder/pixels [B
L1:
aload 0
getfield com/common/android/ui/gif/GifDecoder/prefix [S
ifnonnull L2
aload 0
sipush 4096
newarray short
putfield com/common/android/ui/gif/GifDecoder/prefix [S
L2:
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
ifnonnull L3
aload 0
sipush 4096
newarray byte
putfield com/common/android/ui/gif/GifDecoder/suffix [B
L3:
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
ifnonnull L4
aload 0
sipush 4097
newarray byte
putfield com/common/android/ui/gif/GifDecoder/pixelStack [B
L4:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
istore 17
iconst_1
iload 17
ishl
istore 18
iload 18
iconst_2
iadd
istore 11
iconst_m1
istore 6
iload 17
iconst_1
iadd
istore 4
iconst_1
iload 4
ishl
iconst_1
isub
istore 3
iconst_0
istore 1
L5:
iload 1
iload 18
if_icmpge L6
aload 0
getfield com/common/android/ui/gif/GifDecoder/prefix [S
iload 1
iconst_0
sastore
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
iload 1
iload 1
i2b
bastore
iload 1
iconst_1
iadd
istore 1
goto L5
L6:
iconst_0
istore 10
iconst_0
istore 12
iconst_0
istore 9
iconst_0
istore 5
iconst_0
istore 7
iconst_0
istore 13
iconst_0
istore 8
iconst_0
istore 2
iload 6
istore 1
iload 7
istore 6
L7:
iload 13
iload 16
if_icmpge L8
iload 2
ifne L9
iload 5
iload 4
if_icmpge L10
iload 9
istore 7
iload 9
ifne L11
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readBlock()I
istore 7
iload 7
ifgt L12
L13:
iload 8
iload 16
if_icmpge L14
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixels [B
iload 8
iconst_0
bastore
iload 8
iconst_1
iadd
istore 8
goto L13
L12:
iconst_0
istore 10
L11:
iload 6
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iload 10
baload
sipush 255
iand
iload 5
ishl
iadd
istore 6
iload 5
bipush 8
iadd
istore 5
iload 10
iconst_1
iadd
istore 10
iload 7
iconst_1
isub
istore 9
goto L7
L10:
iload 6
iload 3
iand
istore 7
iload 6
iload 4
ishr
istore 15
iload 5
iload 4
isub
istore 14
iload 7
iload 11
if_icmpgt L8
iload 7
iload 18
iconst_1
iadd
if_icmpne L15
goto L13
L15:
iload 7
iload 18
if_icmpne L16
iload 17
iconst_1
iadd
istore 4
iconst_1
iload 4
ishl
iconst_1
isub
istore 3
iload 18
iconst_2
iadd
istore 11
iconst_m1
istore 1
iload 14
istore 5
iload 15
istore 6
goto L7
L16:
iload 1
iconst_m1
if_icmpne L17
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
iload 2
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
iload 7
baload
bastore
iload 7
istore 1
iload 2
iconst_1
iadd
istore 2
iload 14
istore 5
iload 15
istore 6
iload 7
istore 12
goto L7
L17:
iload 7
istore 5
iload 2
istore 6
iload 7
iload 11
if_icmpne L18
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
iload 2
iload 12
i2b
bastore
iload 1
istore 5
iload 2
iconst_1
iadd
istore 6
L18:
iload 5
iload 18
if_icmple L19
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
iload 6
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
iload 5
baload
bastore
aload 0
getfield com/common/android/ui/gif/GifDecoder/prefix [S
iload 5
saload
istore 5
iload 6
iconst_1
iadd
istore 6
goto L18
L19:
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
iload 5
baload
sipush 255
iand
istore 12
iload 11
sipush 4096
if_icmplt L20
goto L13
L20:
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
astore 19
iload 6
iconst_1
iadd
istore 5
aload 19
iload 6
iload 12
i2b
bastore
aload 0
getfield com/common/android/ui/gif/GifDecoder/prefix [S
iload 11
iload 1
i2s
sastore
aload 0
getfield com/common/android/ui/gif/GifDecoder/suffix [B
iload 11
iload 12
i2b
bastore
iload 11
iconst_1
iadd
istore 11
iload 3
istore 1
iload 4
istore 2
iload 11
iload 3
iand
ifne L21
iload 3
istore 1
iload 4
istore 2
iload 11
sipush 4096
if_icmpge L21
iload 4
iconst_1
iadd
istore 2
iload 3
iload 11
iadd
istore 1
L21:
iload 5
istore 4
iload 15
istore 6
iload 1
istore 3
iload 14
istore 5
L22:
iload 4
iconst_1
isub
istore 14
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixels [B
iload 8
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixelStack [B
iload 14
baload
bastore
iload 13
iconst_1
iadd
istore 13
iload 8
iconst_1
iadd
istore 8
iload 2
istore 4
iload 7
istore 1
iload 14
istore 2
goto L7
L14:
return
L8:
goto L13
L9:
iload 2
istore 14
iload 4
istore 2
iload 1
istore 7
iload 14
istore 4
goto L22
.limit locals 20
.limit stack 4
.end method

.method protected err()Z
aload 0
getfield com/common/android/ui/gif/GifDecoder/status I
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
aload 0
iconst_0
invokevirtual com/common/android/ui/gif/GifDecoder/getFrame(I)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDelay(I)I
aload 0
iconst_m1
putfield com/common/android/ui/gif/GifDecoder/delay I
iload 1
iflt L0
iload 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
if_icmpge L0
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/elementAt(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/delay I
putfield com/common/android/ui/gif/GifDecoder/delay I
L0:
aload 0
getfield com/common/android/ui/gif/GifDecoder/delay I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
ifgt L0
aconst_null
areturn
L0:
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
istore 2
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
iload 1
iload 2
irem
invokevirtual java/util/Vector/elementAt(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getFrameCount()I
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFrames()Ljava/util/Vector;
.signature "()Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;"
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLoopCount()I
aload 0
getfield com/common/android/ui/gif/GifDecoder/loopCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected init()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/status I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/frameCount I
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
aload 0
aconst_null
putfield com/common/android/ui/gif/GifDecoder/gct [I
aload 0
aconst_null
putfield com/common/android/ui/gif/GifDecoder/lct [I
return
.limit locals 1
.limit stack 3
.end method

.method public quit()V
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/mIsQuit Z
return
.limit locals 1
.limit stack 2
.end method

.method protected read()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/ui/gif/GifDecoder/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public read(Ljava/io/InputStream;)I
.throws java/lang/OutOfMemoryError
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/init()V
aload 1
ifnull L3
aload 0
aload 1
putfield com/common/android/ui/gif/GifDecoder/in Ljava/io/InputStream;
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readHeader()V
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifne L4
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readContents()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
ifge L4
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
L4:
ldc "GifSurfaceView"
ldc "after read"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ifnull L1
L0:
aload 1
invokevirtual java/io/InputStream/close()V
L1:
aload 0
getfield com/common/android/ui/gif/GifDecoder/status I
ireturn
L3:
aload 0
iconst_2
putfield com/common/android/ui/gif/GifDecoder/status I
goto L4
L2:
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected readBitmap()V
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/ix I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/iy I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/iw I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/ih I
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
istore 1
iload 1
sipush 128
iand
ifeq L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield com/common/android/ui/gif/GifDecoder/lctFlag Z
aload 0
ldc2_w 2.0D
iload 1
bipush 7
iand
iconst_1
iadd
i2d
invokestatic java/lang/Math/pow(DD)D
d2i
putfield com/common/android/ui/gif/GifDecoder/lctSize I
iload 1
bipush 64
iand
ifeq L2
iconst_1
istore 2
L3:
aload 0
iload 2
putfield com/common/android/ui/gif/GifDecoder/interlace Z
aload 0
getfield com/common/android/ui/gif/GifDecoder/lctFlag Z
ifeq L4
aload 0
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/lctSize I
invokevirtual com/common/android/ui/gif/GifDecoder/readColorTable(I)[I
putfield com/common/android/ui/gif/GifDecoder/lct [I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/lct [I
putfield com/common/android/ui/gif/GifDecoder/act [I
L5:
iconst_0
istore 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/transparency Z
ifeq L6
aload 0
getfield com/common/android/ui/gif/GifDecoder/act [I
aload 0
getfield com/common/android/ui/gif/GifDecoder/transIndex I
iaload
istore 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/act [I
aload 0
getfield com/common/android/ui/gif/GifDecoder/transIndex I
iconst_0
iastore
L6:
aload 0
getfield com/common/android/ui/gif/GifDecoder/act [I
ifnonnull L7
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
L7:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifeq L8
L9:
return
L0:
iconst_0
istore 2
goto L1
L2:
iconst_0
istore 2
goto L3
L4:
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/gct [I
putfield com/common/android/ui/gif/GifDecoder/act [I
aload 0
getfield com/common/android/ui/gif/GifDecoder/bgIndex I
aload 0
getfield com/common/android/ui/gif/GifDecoder/transIndex I
if_icmpne L5
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/bgColor I
goto L5
L8:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/decodeBitmapData()V
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/skip()V
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifne L9
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
iconst_1
iadd
putfield com/common/android/ui/gif/GifDecoder/frameCount I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
aload 0
getfield com/common/android/ui/gif/GifDecoder/height I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/common/android/ui/gif/GifDecoder/image Landroid/graphics/Bitmap;
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/setPixels()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
new com/common/android/ui/gif/GifFrame
dup
aload 0
getfield com/common/android/ui/gif/GifDecoder/image Landroid/graphics/Bitmap;
aload 0
getfield com/common/android/ui/gif/GifDecoder/delay I
invokespecial com/common/android/ui/gif/GifFrame/<init>(Landroid/graphics/Bitmap;I)V
invokevirtual java/util/Vector/addElement(Ljava/lang/Object;)V
aload 0
getfield com/common/android/ui/gif/GifDecoder/transparency Z
ifeq L10
aload 0
getfield com/common/android/ui/gif/GifDecoder/act [I
aload 0
getfield com/common/android/ui/gif/GifDecoder/transIndex I
iload 1
iastore
L10:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/resetFrame()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/mBitmapDecodeCallback Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;
ifnull L9
iconst_0
istore 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
iconst_1
if_icmple L11
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
iconst_2
isub
invokevirtual com/common/android/ui/gif/GifDecoder/getDelay(I)I
istore 1
L11:
aload 0
getfield com/common/android/ui/gif/GifDecoder/mBitmapDecodeCallback Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;
aload 0
getfield com/common/android/ui/gif/GifDecoder/image Landroid/graphics/Bitmap;
iload 1
invokeinterface com/common/android/ui/gif/GifDecoder$BitmapDecodeCallback/onDecoded(Landroid/graphics/Bitmap;I)V 2
return
.limit locals 3
.limit stack 5
.end method

.method protected readBlock()I
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
putfield com/common/android/ui/gif/GifDecoder/blockSize I
iconst_0
istore 2
iconst_0
istore 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
ifle L3
L0:
iload 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
if_icmpge L4
aload 0
getfield com/common/android/ui/gif/GifDecoder/in Ljava/io/InputStream;
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iload 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
iload 1
isub
invokevirtual java/io/InputStream/read([BII)I
istore 2
L1:
iload 2
iconst_m1
if_icmpne L5
L4:
iload 1
istore 2
iload 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
if_icmpge L3
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
iload 1
istore 2
L3:
iload 2
ireturn
L5:
iload 1
iload 2
iadd
istore 1
goto L0
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
.limit locals 4
.limit stack 5
.end method

.method protected readColorTable(I)[I
.catch java/lang/Exception from L0 to L1 using L2
iload 1
iconst_3
imul
istore 4
aconst_null
astore 6
iload 4
newarray byte
astore 8
iconst_0
istore 2
L0:
aload 0
getfield com/common/android/ui/gif/GifDecoder/in Ljava/io/InputStream;
aload 8
invokevirtual java/io/InputStream/read([B)I
istore 3
L1:
iload 3
istore 2
L3:
iload 2
iload 4
if_icmpge L4
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
L5:
aload 6
areturn
L2:
astore 7
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L4:
sipush 256
newarray int
astore 7
iconst_0
istore 3
iconst_0
istore 2
L6:
aload 7
astore 6
iload 2
iload 1
if_icmpge L5
iload 3
iconst_1
iadd
istore 4
aload 8
iload 3
baload
istore 3
iload 4
iconst_1
iadd
istore 5
aload 7
iload 2
ldc_w -16777216
iload 3
sipush 255
iand
bipush 16
ishl
ior
aload 8
iload 4
baload
sipush 255
iand
bipush 8
ishl
ior
aload 8
iload 5
baload
sipush 255
iand
ior
iastore
iload 5
iconst_1
iadd
istore 3
iload 2
iconst_1
iadd
istore 2
goto L6
.limit locals 9
.limit stack 5
.end method

.method protected readContents()V
iconst_0
istore 1
L0:
iload 1
ifne L1
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifne L1
aload 0
getfield com/common/android/ui/gif/GifDecoder/mIsQuit Z
ifne L1
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
lookupswitch
33 : L2
44 : L3
59 : L4
default : L5
L5:
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
goto L0
L3:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readBitmap()V
goto L0
L2:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
lookupswitch
1 : L6
249 : L7
254 : L8
255 : L9
default : L10
L10:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/skip()V
goto L0
L7:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readGraphicControlExt()V
goto L0
L9:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readBlock()I
pop
ldc ""
astore 3
iconst_0
istore 2
L11:
iload 2
bipush 11
if_icmpge L12
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iload 2
baload
i2c
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
iload 2
iconst_1
iadd
istore 2
goto L11
L12:
aload 3
ldc "NETSCAPE2.0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readNetscapeExt()V
goto L0
L13:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/skip()V
goto L0
L8:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/skip()V
goto L0
L6:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/skip()V
goto L0
L4:
iconst_1
istore 1
goto L0
L1:
return
.limit locals 4
.limit stack 3
.end method

.method protected readGraphicControlExt()V
iconst_1
istore 2
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
pop
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
istore 1
aload 0
iload 1
bipush 28
iand
iconst_2
ishr
putfield com/common/android/ui/gif/GifDecoder/dispose I
aload 0
getfield com/common/android/ui/gif/GifDecoder/dispose I
ifne L0
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/dispose I
L0:
iload 1
iconst_1
iand
ifeq L1
L2:
aload 0
iload 2
putfield com/common/android/ui/gif/GifDecoder/transparency Z
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
bipush 10
imul
putfield com/common/android/ui/gif/GifDecoder/delay I
aload 0
getfield com/common/android/ui/gif/GifDecoder/delay I
bipush 100
if_icmpge L3
aload 0
bipush 100
putfield com/common/android/ui/gif/GifDecoder/delay I
L3:
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
putfield com/common/android/ui/gif/GifDecoder/transIndex I
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
pop
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 3
.end method

.method protected readHeader()V
ldc ""
astore 2
iconst_0
istore 1
L0:
iload 1
bipush 6
if_icmpge L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
i2c
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 2
ldc "GIF"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L2
aload 0
iconst_1
putfield com/common/android/ui/gif/GifDecoder/status I
L3:
return
L2:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readLSD()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/gctFlag Z
ifeq L3
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifne L3
aload 0
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/gctSize I
invokevirtual com/common/android/ui/gif/GifDecoder/readColorTable(I)[I
putfield com/common/android/ui/gif/GifDecoder/gct [I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/gct [I
aload 0
getfield com/common/android/ui/gif/GifDecoder/bgIndex I
iaload
putfield com/common/android/ui/gif/GifDecoder/bgColor I
return
.limit locals 3
.limit stack 3
.end method

.method protected readLSD()V
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/width I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readShort()I
putfield com/common/android/ui/gif/GifDecoder/height I
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
istore 1
iload 1
sipush 128
iand
ifeq L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield com/common/android/ui/gif/GifDecoder/gctFlag Z
aload 0
iconst_2
iload 1
bipush 7
iand
ishl
putfield com/common/android/ui/gif/GifDecoder/gctSize I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
putfield com/common/android/ui/gif/GifDecoder/bgIndex I
aload 0
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
putfield com/common/android/ui/gif/GifDecoder/pixelAspect I
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method protected readNetscapeExt()V
L0:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readBlock()I
pop
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iconst_0
baload
iconst_1
if_icmpne L1
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iconst_1
baload
istore 1
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/block [B
iconst_2
baload
sipush 255
iand
bipush 8
ishl
iload 1
sipush 255
iand
ior
putfield com/common/android/ui/gif/GifDecoder/loopCount I
L1:
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
ifle L2
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifeq L0
L2:
return
.limit locals 2
.limit stack 4
.end method

.method protected readShort()I
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/read()I
bipush 8
ishl
ior
ireturn
.limit locals 1
.limit stack 3
.end method

.method public recycleFrames()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
if_icmpge L0
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L2
aload 0
getfield com/common/android/ui/gif/GifDecoder/frames Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public resetFrame()V
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/dispose I
putfield com/common/android/ui/gif/GifDecoder/lastDispose I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/ix I
putfield com/common/android/ui/gif/GifDecoder/lrx I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/iy I
putfield com/common/android/ui/gif/GifDecoder/lry I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/iw I
putfield com/common/android/ui/gif/GifDecoder/lrw I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/ih I
putfield com/common/android/ui/gif/GifDecoder/lrh I
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/image Landroid/graphics/Bitmap;
putfield com/common/android/ui/gif/GifDecoder/lastBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/common/android/ui/gif/GifDecoder/bgColor I
putfield com/common/android/ui/gif/GifDecoder/lastBgColor I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/dispose I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/transparency Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifDecoder/delay I
aload 0
aconst_null
putfield com/common/android/ui/gif/GifDecoder/lct [I
return
.limit locals 1
.limit stack 2
.end method

.method public setBitmapDecodeCallback(Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifDecoder/mBitmapDecodeCallback Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;
return
.limit locals 2
.limit stack 2
.end method

.method protected setPixels()V
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
aload 0
getfield com/common/android/ui/gif/GifDecoder/height I
imul
newarray int
astore 9
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastDispose I
ifle L0
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastDispose I
iconst_3
if_icmpne L1
aload 0
getfield com/common/android/ui/gif/GifDecoder/frameCount I
iconst_2
isub
istore 1
iload 1
ifle L2
aload 0
aload 0
iload 1
iconst_1
isub
invokevirtual com/common/android/ui/gif/GifDecoder/getFrame(I)Landroid/graphics/Bitmap;
putfield com/common/android/ui/gif/GifDecoder/lastBitmap Landroid/graphics/Bitmap;
L1:
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastBitmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastBitmap Landroid/graphics/Bitmap;
aload 9
iconst_0
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
iconst_0
iconst_0
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
aload 0
getfield com/common/android/ui/gif/GifDecoder/height I
invokevirtual android/graphics/Bitmap/getPixels([IIIIIII)V
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastDispose I
iconst_2
if_icmpne L0
iconst_0
istore 1
aload 0
getfield com/common/android/ui/gif/GifDecoder/transparency Z
ifne L3
aload 0
getfield com/common/android/ui/gif/GifDecoder/lastBgColor I
istore 1
L3:
iconst_0
istore 2
L4:
iload 2
aload 0
getfield com/common/android/ui/gif/GifDecoder/lrh I
if_icmpge L0
aload 0
getfield com/common/android/ui/gif/GifDecoder/lry I
iload 2
iadd
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
imul
aload 0
getfield com/common/android/ui/gif/GifDecoder/lrx I
iadd
istore 4
aload 0
getfield com/common/android/ui/gif/GifDecoder/lrw I
istore 5
iload 4
istore 3
L5:
iload 3
iload 4
iload 5
iadd
if_icmpge L6
aload 9
iload 3
iload 1
iastore
iload 3
iconst_1
iadd
istore 3
goto L5
L2:
aload 0
aconst_null
putfield com/common/android/ui/gif/GifDecoder/lastBitmap Landroid/graphics/Bitmap;
goto L1
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L0:
iconst_1
istore 5
bipush 8
istore 4
iconst_0
istore 6
iconst_0
istore 3
L7:
iload 3
aload 0
getfield com/common/android/ui/gif/GifDecoder/ih I
if_icmpge L8
iload 3
istore 8
iload 6
istore 1
iload 4
istore 2
iload 5
istore 7
aload 0
getfield com/common/android/ui/gif/GifDecoder/interlace Z
ifeq L9
iload 6
istore 1
iload 4
istore 2
iload 5
istore 7
iload 6
aload 0
getfield com/common/android/ui/gif/GifDecoder/ih I
if_icmplt L10
iload 5
iconst_1
iadd
istore 7
iload 7
tableswitch 2
L11
L12
L13
default : L14
L14:
iload 4
istore 2
iload 6
istore 1
L10:
iload 1
istore 8
iload 1
iload 2
iadd
istore 1
L9:
iload 8
aload 0
getfield com/common/android/ui/gif/GifDecoder/iy I
iadd
istore 4
iload 4
aload 0
getfield com/common/android/ui/gif/GifDecoder/height I
if_icmpge L15
iload 4
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
imul
istore 8
iload 8
aload 0
getfield com/common/android/ui/gif/GifDecoder/ix I
iadd
istore 6
iload 6
aload 0
getfield com/common/android/ui/gif/GifDecoder/iw I
iadd
istore 5
iload 5
istore 4
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
iload 8
iadd
iload 5
if_icmpge L16
iload 8
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
iadd
istore 4
L16:
iload 3
aload 0
getfield com/common/android/ui/gif/GifDecoder/iw I
imul
istore 5
L17:
iload 6
iload 4
if_icmpge L15
aload 0
getfield com/common/android/ui/gif/GifDecoder/pixels [B
iload 5
baload
istore 8
aload 0
getfield com/common/android/ui/gif/GifDecoder/act [I
iload 8
sipush 255
iand
iaload
istore 8
iload 8
ifeq L18
aload 9
iload 6
iload 8
iastore
L18:
iload 6
iconst_1
iadd
istore 6
iload 5
iconst_1
iadd
istore 5
goto L17
L11:
iconst_4
istore 1
iload 4
istore 2
goto L10
L12:
iconst_2
istore 1
iconst_4
istore 2
goto L10
L13:
iconst_1
istore 1
iconst_2
istore 2
goto L10
L15:
iload 3
iconst_1
iadd
istore 3
iload 1
istore 6
iload 2
istore 4
iload 7
istore 5
goto L7
L8:
aload 0
aload 9
aload 0
getfield com/common/android/ui/gif/GifDecoder/width I
aload 0
getfield com/common/android/ui/gif/GifDecoder/height I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/common/android/ui/gif/GifDecoder/image Landroid/graphics/Bitmap;
return
.limit locals 10
.limit stack 8
.end method

.method protected skip()V
L0:
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/readBlock()I
pop
aload 0
getfield com/common/android/ui/gif/GifDecoder/blockSize I
ifle L1
aload 0
invokevirtual com/common/android/ui/gif/GifDecoder/err()Z
ifeq L0
L1:
return
.limit locals 1
.limit stack 1
.end method
