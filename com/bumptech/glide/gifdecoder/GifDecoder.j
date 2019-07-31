.bytecode 50.0
.class public synchronized com/bumptech/glide/gifdecoder/GifDecoder
.super java/lang/Object
.inner class public static abstract interface BitmapProvider inner com/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider outer com/bumptech/glide/gifdecoder/GifDecoder

.field private static final 'BITMAP_CONFIG' Landroid/graphics/Bitmap$Config;

.field private static final 'DISPOSAL_BACKGROUND' I = 2


.field private static final 'DISPOSAL_NONE' I = 1


.field private static final 'DISPOSAL_PREVIOUS' I = 3


.field private static final 'DISPOSAL_UNSPECIFIED' I = 0


.field private static final 'INITIAL_FRAME_POINTER' I = -1


.field private static final 'MAX_STACK_SIZE' I = 4096


.field private static final 'NULL_CODE' I = -1


.field public static final 'STATUS_FORMAT_ERROR' I = 1


.field public static final 'STATUS_OK' I = 0


.field public static final 'STATUS_OPEN_ERROR' I = 2


.field public static final 'STATUS_PARTIAL_DECODE' I = 3


.field private static final 'TAG' Ljava/lang/String;

.field private 'act' [I

.field private 'bitmapProvider' Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final 'block' [B

.field private 'data' [B

.field private 'framePointer' I

.field private 'header' Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private 'mainPixels' [B

.field private 'mainScratch' [I

.field private 'parser' Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private 'pixelStack' [B

.field private 'prefix' [S

.field private 'previousImage' Landroid/graphics/Bitmap;

.field private 'rawData' Ljava/nio/ByteBuffer;

.field private 'savePrevious' Z

.field private 'status' I

.field private 'suffix' [B

.method static <clinit>()V
ldc com/bumptech/glide/gifdecoder/GifDecoder
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
putstatic com/bumptech/glide/gifdecoder/GifDecoder/BITMAP_CONFIG Landroid/graphics/Bitmap$Config;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 256
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/block [B
aload 0
aload 1
putfield com/bumptech/glide/gifdecoder/GifDecoder/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 0
new com/bumptech/glide/gifdecoder/GifHeader
dup
invokespecial com/bumptech/glide/gifdecoder/GifHeader/<init>()V
putfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
return
.limit locals 2
.limit stack 3
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
aload 1
ifnull L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/bufferFrameStart I
invokevirtual java/nio/ByteBuffer/position(I)Ljava/nio/Buffer;
pop
L0:
aload 1
ifnonnull L1
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
imul
istore 12
L2:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
ifnull L3
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
arraylength
iload 12
if_icmpge L4
L3:
aload 0
iload 12
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
L4:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/prefix [S
ifnonnull L5
aload 0
sipush 4096
newarray short
putfield com/bumptech/glide/gifdecoder/GifDecoder/prefix [S
L5:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
ifnonnull L6
aload 0
sipush 4096
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
L6:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
ifnonnull L7
aload 0
sipush 4097
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
L7:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/read()I
istore 20
iconst_1
iload 20
ishl
istore 21
iload 21
iconst_2
iadd
istore 16
iconst_m1
istore 3
iload 20
iconst_1
iadd
istore 8
iconst_1
iload 8
ishl
iconst_1
isub
istore 7
iconst_0
istore 2
L8:
iload 2
iload 21
if_icmpge L9
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/prefix [S
iload 2
iconst_0
sastore
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
iload 2
iload 2
i2b
bastore
iload 2
iconst_1
iadd
istore 2
goto L8
L1:
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/iw I
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/ih I
imul
istore 12
goto L2
L9:
iconst_0
istore 9
iconst_0
istore 6
iconst_0
istore 2
iconst_0
istore 10
iconst_0
istore 5
iconst_0
istore 4
iconst_0
istore 11
iconst_0
istore 13
L10:
iload 13
iload 12
if_icmpge L11
iload 9
istore 14
iload 5
istore 9
iload 5
ifne L12
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/readBlock()I
istore 9
iload 9
ifgt L13
aload 0
iconst_3
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
L11:
iload 6
iload 12
if_icmpge L14
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
iload 6
iconst_0
bastore
iload 6
iconst_1
iadd
istore 6
goto L11
L13:
iconst_0
istore 14
L12:
iload 11
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/block [B
iload 14
baload
sipush 255
iand
iload 4
ishl
iadd
istore 11
iload 4
bipush 8
iadd
istore 5
iload 14
iconst_1
iadd
istore 18
iload 9
iconst_1
isub
istore 17
iload 16
istore 9
L15:
iload 5
iload 8
if_icmplt L16
iload 11
iload 7
iand
istore 4
iload 11
iload 8
ishr
istore 14
iload 5
iload 8
isub
istore 15
iload 4
iload 21
if_icmpne L17
iload 20
iconst_1
iadd
istore 8
iconst_1
iload 8
ishl
iconst_1
isub
istore 7
iload 21
iconst_2
iadd
istore 9
iconst_m1
istore 3
iload 15
istore 5
iload 14
istore 11
goto L15
L17:
iload 4
iload 9
if_icmple L18
aload 0
iconst_3
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
iload 9
istore 16
iload 18
istore 9
iload 15
istore 4
iload 17
istore 5
iload 14
istore 11
goto L10
L18:
iload 4
iload 21
iconst_1
iadd
if_icmpne L19
iload 9
istore 16
iload 18
istore 9
iload 15
istore 4
iload 17
istore 5
iload 14
istore 11
goto L10
L19:
iload 3
iconst_m1
if_icmpne L20
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
iload 2
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
iload 4
baload
bastore
iload 4
istore 3
iload 2
iconst_1
iadd
istore 2
iload 15
istore 5
iload 14
istore 11
iload 4
istore 10
goto L15
L20:
iload 4
istore 5
iload 2
istore 11
iload 4
iload 9
if_icmplt L21
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
iload 2
iload 10
i2b
bastore
iload 3
istore 5
iload 2
iconst_1
iadd
istore 11
L21:
iload 5
iload 21
if_icmplt L22
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
iload 11
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
iload 5
baload
bastore
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/prefix [S
iload 5
saload
istore 5
iload 11
iconst_1
iadd
istore 11
goto L21
L22:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
iload 5
baload
sipush 255
iand
istore 19
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
astore 1
iload 11
iconst_1
iadd
istore 16
aload 1
iload 11
iload 19
i2b
bastore
iload 9
istore 5
iload 7
istore 11
iload 8
istore 10
iload 9
sipush 4096
if_icmpge L23
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/prefix [S
iload 9
iload 3
i2s
sastore
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/suffix [B
iload 9
iload 19
i2b
bastore
iload 9
iconst_1
iadd
istore 2
iload 2
istore 5
iload 7
istore 11
iload 8
istore 10
iload 2
iload 7
iand
ifne L23
iload 2
istore 5
iload 7
istore 11
iload 8
istore 10
iload 2
sipush 4096
if_icmpge L23
iload 8
iconst_1
iadd
istore 10
iload 7
iload 2
iadd
istore 11
iload 2
istore 5
L23:
iload 6
istore 2
iload 16
istore 3
L24:
iload 3
ifle L25
iload 3
iconst_1
isub
istore 3
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
iload 2
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/pixelStack [B
iload 3
baload
bastore
iload 13
iconst_1
iadd
istore 13
iload 2
iconst_1
iadd
istore 2
goto L24
L14:
return
L25:
iload 3
istore 16
iload 5
istore 9
iload 15
istore 5
iload 11
istore 7
iload 10
istore 8
iload 14
istore 11
iload 19
istore 10
iload 4
istore 3
iload 2
istore 6
iload 16
istore 2
goto L15
L16:
iload 9
istore 16
iload 18
istore 9
iload 5
istore 4
iload 17
istore 5
goto L10
.limit locals 22
.limit stack 4
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/parser Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
ifnonnull L0
aload 0
new com/bumptech/glide/gifdecoder/GifHeaderParser
dup
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/<init>()V
putfield com/bumptech/glide/gifdecoder/GifDecoder/parser Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/parser Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
getstatic com/bumptech/glide/gifdecoder/GifDecoder/BITMAP_CONFIG Landroid/graphics/Bitmap$Config;
invokeinterface com/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider/obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
getstatic com/bumptech/glide/gifdecoder/GifDecoder/BITMAP_CONFIG Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 1
L0:
aload 1
invokestatic com/bumptech/glide/gifdecoder/GifDecoder/setAlpha(Landroid/graphics/Bitmap;)V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method private read()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/get()B
istore 1
L1:
iload 1
sipush 255
iand
ireturn
L2:
astore 2
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private readBlock()I
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/read()I
istore 3
iconst_0
istore 2
iconst_0
istore 1
iload 3
ifle L3
L4:
iload 1
istore 2
iload 1
iload 3
if_icmpge L3
iload 3
iload 1
isub
istore 2
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/block [B
iload 1
iload 2
invokevirtual java/nio/ByteBuffer/get([BII)Ljava/nio/ByteBuffer;
pop
L1:
iload 1
iload 2
iadd
istore 1
goto L4
L2:
astore 4
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
ldc "Error Reading Block"
aload 4
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
iload 1
istore 2
L3:
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 12
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 12
if_icmplt L0
aload 0
iconst_1
invokevirtual android/graphics/Bitmap/setHasAlpha(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
istore 11
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
istore 12
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainScratch [I
astore 13
aload 2
ifnull L0
aload 2
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
ifle L0
aload 2
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
iconst_2
if_icmpne L1
iconst_0
istore 3
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/transparency Z
ifne L2
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/bgColor I
istore 3
L2:
aload 13
iload 3
invokestatic java/util/Arrays/fill([II)V
L0:
aload 0
aload 1
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
iconst_1
istore 7
bipush 8
istore 6
iconst_0
istore 8
iconst_0
istore 5
L3:
iload 5
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/ih I
if_icmpge L4
iload 5
istore 10
iload 8
istore 3
iload 6
istore 4
iload 7
istore 9
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/interlace Z
ifeq L5
iload 8
istore 3
iload 6
istore 4
iload 7
istore 9
iload 8
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/ih I
if_icmplt L6
iload 7
iconst_1
iadd
istore 9
iload 9
tableswitch 2
L7
L8
L9
default : L10
L10:
iload 6
istore 4
iload 8
istore 3
L6:
iload 3
istore 10
iload 3
iload 4
iadd
istore 3
L5:
iload 10
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/iy I
iadd
istore 6
iload 6
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
if_icmpge L11
iload 6
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
imul
istore 10
iload 10
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/ix I
iadd
istore 8
iload 8
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/iw I
iadd
istore 7
iload 7
istore 6
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
iload 10
iadd
iload 7
if_icmpge L12
iload 10
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
iadd
istore 6
L12:
iload 5
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/iw I
imul
istore 7
L13:
iload 8
iload 6
if_icmpge L11
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
iload 7
baload
istore 10
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
iload 10
sipush 255
iand
iaload
istore 10
iload 10
ifeq L14
aload 13
iload 8
iload 10
iastore
L14:
iload 8
iconst_1
iadd
istore 8
iload 7
iconst_1
iadd
istore 7
goto L13
L1:
aload 2
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
iconst_3
if_icmpne L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
aload 13
iconst_0
iload 11
iconst_0
iconst_0
iload 11
iload 12
invokevirtual android/graphics/Bitmap/getPixels([IIIIIII)V
goto L0
L7:
iconst_4
istore 3
iload 6
istore 4
goto L6
L8:
iconst_2
istore 3
iconst_4
istore 4
goto L6
L9:
iconst_1
istore 3
iconst_2
istore 4
goto L6
L11:
iload 5
iconst_1
iadd
istore 5
iload 3
istore 8
iload 4
istore 6
iload 9
istore 7
goto L3
L4:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/savePrevious Z
ifeq L15
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
ifeq L16
aload 1
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
iconst_1
if_icmpne L15
L16:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
ifnonnull L17
aload 0
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/getNextBitmap()Landroid/graphics/Bitmap;
putfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
L17:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
aload 13
iconst_0
iload 11
iconst_0
iconst_0
iload 11
iload 12
invokevirtual android/graphics/Bitmap/setPixels([IIIIIII)V
L15:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/getNextBitmap()Landroid/graphics/Bitmap;
astore 1
aload 1
aload 13
iconst_0
iload 11
iconst_0
iconst_0
iload 11
iload 12
invokevirtual android/graphics/Bitmap/setPixels([IIIIIII)V
aload 1
areturn
.limit locals 14
.limit stack 8
.end method

.method public advance()V
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
iconst_1
iadd
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
irem
putfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
return
.limit locals 1
.limit stack 3
.end method

.method public clear()V
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifDecoder/data [B
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainScratch [I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
invokeinterface com/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider/release(Landroid/graphics/Bitmap;)V 1
L0:
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifDecoder/previousImage Landroid/graphics/Bitmap;
return
.limit locals 1
.limit stack 2
.end method

.method public getCurrentFrameIndex()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getData()[B
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/data [B
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDelay(I)I
iconst_m1
istore 3
iload 3
istore 2
iload 1
iflt L0
iload 3
istore 2
iload 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
if_icmpge L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/bumptech/glide/gifdecoder/GifFrame
getfield com/bumptech/glide/gifdecoder/GifFrame/delay I
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getFrameCount()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHeight()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLoopCount()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/loopCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNextDelay()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
ifle L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
ifge L1
L0:
iconst_m1
ireturn
L1:
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getDelay(I)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L16 to L17 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L24 using L2
aconst_null
astore 3
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
ifle L1
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
ifge L4
L1:
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unable to decode frame, frameCount="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " framePointer="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
L4:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
iconst_1
if_icmpeq L5
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
iconst_2
if_icmpne L8
L5:
aload 3
astore 2
L6:
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L25
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to decode frame, status="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 3
astore 2
L25:
aload 0
monitorexit
aload 2
areturn
L8:
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/bumptech/glide/gifdecoder/GifFrame
astore 4
L9:
aconst_null
astore 2
L10:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
iconst_1
isub
istore 1
L11:
iload 1
iflt L13
L12:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/bumptech/glide/gifdecoder/GifFrame
astore 2
L13:
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/lct [I
ifnonnull L19
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/gct [I
putfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
L14:
iconst_0
istore 1
L15:
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transparency Z
ifeq L16
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transIndex I
iaload
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transIndex I
iconst_0
iastore
L16:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
ifnonnull L21
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L17
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
ldc "No Valid Color Table"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L17:
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
L18:
aload 3
astore 2
goto L25
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
L19:
aload 0
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/lct [I
putfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/bgIndex I
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transIndex I
if_icmpne L14
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_0
putfield com/bumptech/glide/gifdecoder/GifHeader/bgColor I
L20:
goto L14
L21:
aload 0
aload 4
aload 2
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
astore 3
L22:
aload 3
astore 2
L23:
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transparency Z
ifeq L25
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/act [I
aload 4
getfield com/bumptech/glide/gifdecoder/GifFrame/transIndex I
iload 1
iastore
L24:
aload 3
astore 2
goto L25
.limit locals 5
.limit stack 3
.end method

.method public getStatus()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read(Ljava/io/InputStream;I)I
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L8
.catch java/io/IOException from L9 to L10 using L2
sipush 16384
istore 3
aload 1
ifnull L11
iload 2
ifle L0
iload 2
sipush 4096
iadd
istore 3
L0:
new java/io/ByteArrayOutputStream
dup
iload 3
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 4
sipush 16384
newarray byte
astore 5
L1:
aload 1
aload 5
iconst_0
aload 5
arraylength
invokevirtual java/io/InputStream/read([BII)I
istore 2
L3:
iload 2
iconst_m1
if_icmpeq L9
L4:
aload 4
aload 5
iconst_0
iload 2
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L5:
goto L1
L2:
astore 4
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
ldc "Error reading data from stream"
aload 4
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L12:
aload 1
ifnull L7
L6:
aload 1
invokevirtual java/io/InputStream/close()V
L7:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
ireturn
L9:
aload 4
invokevirtual java/io/ByteArrayOutputStream/flush()V
aload 0
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/read([B)I
pop
L10:
goto L12
L11:
aload 0
iconst_2
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
goto L12
L8:
astore 1
getstatic com/bumptech/glide/gifdecoder/GifDecoder/TAG Ljava/lang/String;
ldc "Error closing stream"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L7
.limit locals 6
.limit stack 4
.end method

.method public read([B)I
aload 0
aload 1
putfield com/bumptech/glide/gifdecoder/GifDecoder/data [B
aload 0
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
putfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 1
ifnull L0
aload 0
aload 1
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
putfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/rewind()Ljava/nio/Buffer;
pop
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
getstatic java/nio/ByteOrder/LITTLE_ENDIAN Ljava/nio/ByteOrder;
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
pop
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
imul
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
imul
newarray int
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainScratch [I
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifDecoder/savePrevious Z
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/gifdecoder/GifFrame
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
iconst_3
if_icmpne L1
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/savePrevious Z
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/status I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public resetFrameIndex()V
aload 0
iconst_m1
putfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
return
.limit locals 1
.limit stack 2
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
aload 0
aload 1
putfield com/bumptech/glide/gifdecoder/GifDecoder/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
aload 2
putfield com/bumptech/glide/gifdecoder/GifDecoder/data [B
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifDecoder/status I
aload 0
iconst_m1
putfield com/bumptech/glide/gifdecoder/GifDecoder/framePointer I
aload 0
aload 2
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
putfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/rewind()Ljava/nio/Buffer;
pop
aload 0
getfield com/bumptech/glide/gifdecoder/GifDecoder/rawData Ljava/nio/ByteBuffer;
getstatic java/nio/ByteOrder/LITTLE_ENDIAN Ljava/nio/ByteOrder;
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
pop
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifDecoder/savePrevious Z
aload 1
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/gifdecoder/GifFrame
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
iconst_3
if_icmpne L0
aload 0
iconst_1
putfield com/bumptech/glide/gifdecoder/GifDecoder/savePrevious Z
L1:
aload 0
aload 1
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 1
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
imul
newarray byte
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainPixels [B
aload 0
aload 1
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 1
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
imul
newarray int
putfield com/bumptech/glide/gifdecoder/GifDecoder/mainScratch [I
return
.limit locals 3
.limit stack 3
.end method
