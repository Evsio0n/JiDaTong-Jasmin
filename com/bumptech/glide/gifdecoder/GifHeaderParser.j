.bytecode 50.0
.class public synchronized com/bumptech/glide/gifdecoder/GifHeaderParser
.super java/lang/Object

.field static final 'DEFAULT_FRAME_DELAY' I = 10


.field private static final 'MAX_BLOCK_SIZE' I = 256


.field static final 'MIN_FRAME_DELAY' I = 3


.field public static final 'TAG' Ljava/lang/String; = "GifHeaderParser"

.field private final 'block' [B

.field private 'blockSize' I

.field private 'header' Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private 'rawData' Ljava/nio/ByteBuffer;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 256
newarray byte
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
return
.limit locals 1
.limit stack 2
.end method

.method private err()Z
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/status I
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private read()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
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
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private readBitmap()V
iconst_1
istore 4
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifFrame/ix I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifFrame/iy I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifFrame/iw I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifFrame/ih I
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
istore 2
iload 2
sipush 128
iand
ifeq L0
iconst_1
istore 1
L1:
ldc2_w 2.0D
iload 2
bipush 7
iand
iconst_1
iadd
i2d
invokestatic java/lang/Math/pow(DD)D
d2i
istore 3
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
astore 5
iload 2
bipush 64
iand
ifeq L2
L3:
aload 5
iload 4
putfield com/bumptech/glide/gifdecoder/GifFrame/interlace Z
iload 1
ifeq L4
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
iload 3
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readColorTable(I)[I
putfield com/bumptech/glide/gifdecoder/GifFrame/lct [I
L5:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/position()I
putfield com/bumptech/glide/gifdecoder/GifFrame/bufferFrameStart I
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skipImageData()V
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifeq L6
return
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
istore 4
goto L3
L4:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aconst_null
putfield com/bumptech/glide/gifdecoder/GifFrame/lct [I
goto L5
L6:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
astore 5
aload 5
aload 5
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
iconst_1
iadd
putfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 6
.limit stack 4
.end method

.method private readBlock()I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 0
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
iconst_0
istore 4
iconst_0
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
ifle L7
iconst_0
istore 2
L8:
iload 2
istore 3
iload 1
istore 4
L0:
iload 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
if_icmpge L7
L1:
iload 2
istore 3
L3:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
iload 1
isub
istore 2
L4:
iload 2
istore 3
L5:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
iload 1
iload 2
invokevirtual java/nio/ByteBuffer/get([BII)Ljava/nio/ByteBuffer;
pop
L6:
iload 1
iload 2
iadd
istore 1
goto L8
L2:
astore 5
ldc "GifHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L9
ldc "GifHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Error Reading Block n: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " count: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " blockSize: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 5
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L9:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
iload 1
istore 4
L7:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method private readColorTable(I)[I
.catch java/nio/BufferUnderflowException from L0 to L1 using L2
aconst_null
astore 6
iload 1
iconst_3
imul
newarray byte
astore 8
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 8
invokevirtual java/nio/ByteBuffer/get([B)Ljava/nio/ByteBuffer;
pop
sipush 256
newarray int
astore 7
L1:
iconst_0
istore 3
iconst_0
istore 2
L3:
aload 7
astore 6
iload 2
iload 1
if_icmpge L4
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
goto L3
L2:
astore 7
ldc "GifHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "GifHeaderParser"
ldc "Format Error Reading Color Table"
aload 7
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L5:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
L4:
aload 6
areturn
.limit locals 9
.limit stack 5
.end method

.method private readContents()V
iconst_0
istore 1
L0:
iload 1
ifne L1
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifne L1
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
lookupswitch
33 : L2
44 : L3
59 : L4
default : L5
L5:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
goto L0
L3:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
ifnonnull L6
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
new com/bumptech/glide/gifdecoder/GifFrame
dup
invokespecial com/bumptech/glide/gifdecoder/GifFrame/<init>()V
putfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
L6:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readBitmap()V
goto L0
L2:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
lookupswitch
1 : L7
249 : L8
254 : L9
255 : L10
default : L11
L11:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skip()V
goto L0
L8:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
new com/bumptech/glide/gifdecoder/GifFrame
dup
invokespecial com/bumptech/glide/gifdecoder/GifFrame/<init>()V
putfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readGraphicControlExt()V
goto L0
L10:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readBlock()I
pop
ldc ""
astore 3
iconst_0
istore 2
L12:
iload 2
bipush 11
if_icmpge L13
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
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
goto L12
L13:
aload 3
ldc "NETSCAPE2.0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L14
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readNetscapeExt()V
goto L0
L14:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skip()V
goto L0
L9:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skip()V
goto L0
L7:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skip()V
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

.method private readGraphicControlExt()V
iconst_1
istore 3
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
pop
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
iload 1
bipush 28
iand
iconst_2
ishr
putfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
getfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
ifne L0
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifFrame/dispose I
L0:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
astore 4
iload 1
iconst_1
iand
ifeq L1
L2:
aload 4
iload 3
putfield com/bumptech/glide/gifdecoder/GifFrame/transparency Z
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
istore 2
iload 2
istore 1
iload 2
iconst_3
if_icmpge L3
bipush 10
istore 1
L3:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
iload 1
bipush 10
imul
putfield com/bumptech/glide/gifdecoder/GifFrame/delay I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/currentFrame Lcom/bumptech/glide/gifdecoder/GifFrame;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
putfield com/bumptech/glide/gifdecoder/GifFrame/transIndex I
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
pop
return
L1:
iconst_0
istore 3
goto L2
.limit locals 5
.limit stack 3
.end method

.method private readHeader()V
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
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
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
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
L3:
return
L2:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readLSD()V
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/gctFlag Z
ifeq L3
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifne L3
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/gctSize I
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readColorTable(I)[I
putfield com/bumptech/glide/gifdecoder/GifHeader/gct [I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/gct [I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/bgIndex I
iaload
putfield com/bumptech/glide/gifdecoder/GifHeader/bgColor I
return
.limit locals 3
.limit stack 3
.end method

.method private readLSD()V
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifHeader/width I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readShort()I
putfield com/bumptech/glide/gifdecoder/GifHeader/height I
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
astore 3
iload 1
sipush 128
iand
ifeq L0
iconst_1
istore 2
L1:
aload 3
iload 2
putfield com/bumptech/glide/gifdecoder/GifHeader/gctFlag Z
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_2
iload 1
bipush 7
iand
ishl
putfield com/bumptech/glide/gifdecoder/GifHeader/gctSize I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
putfield com/bumptech/glide/gifdecoder/GifHeader/bgIndex I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
putfield com/bumptech/glide/gifdecoder/GifHeader/pixelAspect I
return
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 4
.end method

.method private readNetscapeExt()V
L0:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readBlock()I
pop
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
iconst_0
baload
iconst_1
if_icmpne L1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
iconst_1
baload
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
iconst_2
baload
istore 2
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iload 2
sipush 255
iand
bipush 8
ishl
iload 1
sipush 255
iand
ior
putfield com/bumptech/glide/gifdecoder/GifHeader/loopCount I
L1:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
ifle L2
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifeq L0
L2:
return
.limit locals 3
.limit stack 4
.end method

.method private readShort()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/getShort()S
ireturn
.limit locals 1
.limit stack 1
.end method

.method private reset()V
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/block [B
iconst_0
invokestatic java/util/Arrays/fill([BB)V
aload 0
new com/bumptech/glide/gifdecoder/GifHeader
dup
invokespecial com/bumptech/glide/gifdecoder/GifHeader/<init>()V
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/blockSize I
return
.limit locals 1
.limit stack 3
.end method

.method private skip()V
L0:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
istore 1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/position()I
iload 1
iadd
invokevirtual java/nio/ByteBuffer/position(I)Ljava/nio/Buffer;
pop
iload 1
ifgt L0
return
.limit locals 2
.limit stack 3
.end method

.method private skipImageData()V
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/read()I
pop
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/skip()V
return
.limit locals 1
.limit stack 1
.end method

.method public clear()V
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
return
.limit locals 1
.limit stack 2
.end method

.method public parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "You must call setData() before parseHeader()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifeq L1
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
areturn
L1:
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readHeader()V
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/err()Z
ifne L2
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/readContents()V
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
ifge L2
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_1
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
L2:
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
areturn
.limit locals 1
.limit stack 3
.end method

.method public setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
aload 0
invokespecial com/bumptech/glide/gifdecoder/GifHeaderParser/reset()V
aload 1
ifnull L0
aload 0
aload 1
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/rewind()Ljava/nio/Buffer;
pop
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
getstatic java/nio/ByteOrder/LITTLE_ENDIAN Ljava/nio/ByteOrder;
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
pop
aload 0
areturn
L0:
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifHeaderParser/rawData Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeaderParser/header Lcom/bumptech/glide/gifdecoder/GifHeader;
iconst_2
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
