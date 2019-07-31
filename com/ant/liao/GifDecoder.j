.bytecode 50.0
.class public synchronized com/ant/liao/GifDecoder
.super java/lang/Thread

.field private static final 'MaxStackSize' I = 4096


.field public static final 'STATUS_FINISH' I = -1


.field public static final 'STATUS_FORMAT_ERROR' I = 1


.field public static final 'STATUS_OPEN_ERROR' I = 2


.field public static final 'STATUS_PARSING' I = 0


.field private 'act' [I

.field private 'action' Lcom/ant/liao/GifAction;

.field private 'bgColor' I

.field private 'bgIndex' I

.field private 'block' [B

.field private 'blockSize' I

.field private 'cacheImage' Z

.field private 'currentFrame' Lcom/ant/liao/GifFrame;

.field private 'delay' I

.field private 'dispose' I

.field private 'frameCount' I

.field private 'gct' [I

.field private 'gctFlag' Z

.field private 'gctSize' I

.field private 'gifData' [B

.field private 'gifFrame' Lcom/ant/liao/GifFrame;

.field public 'height' I

.field private 'ih' I

.field private 'image' Landroid/graphics/Bitmap;

.field private 'imagePath' Ljava/lang/String;

.field private 'in' Ljava/io/InputStream;

.field private 'interlace' Z

.field private 'isShow' Z

.field private 'iw' I

.field private 'ix' I

.field private 'iy' I

.field private 'lastBgColor' I

.field private 'lastDispose' I

.field private 'lastImage' Landroid/graphics/Bitmap;

.field private 'lct' [I

.field private 'lctFlag' Z

.field private 'lctSize' I

.field private 'loopCount' I

.field private 'lrh' I

.field private 'lrw' I

.field private 'lrx' I

.field private 'lry' I

.field private 'pixelAspect' I

.field private 'pixelStack' [B

.field private 'pixels' [B

.field private 'prefix' [S

.field private 'status' I

.field private 'suffix' [B

.field private 'transIndex' I

.field private 'transparency' Z

.field public 'width' I

.method public <init>(Lcom/ant/liao/GifAction;)V
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/loopCount I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/isShow Z
aload 0
sipush 256
newarray byte
putfield com/ant/liao/GifDecoder/block [B
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/blockSize I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/dispose I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/lastDispose I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/transparency Z
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/delay I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/gifData [B
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/cacheImage Z
aload 0
aload 1
putfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
return
.limit locals 2
.limit stack 2
.end method

.method private createDir(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L3
aload 1
invokevirtual java/io/File/mkdirs()Z
istore 2
L1:
iload 2
ireturn
L3:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private decodeImageData()V
aload 0
getfield com/ant/liao/GifDecoder/iw I
aload 0
getfield com/ant/liao/GifDecoder/ih I
imul
istore 16
aload 0
getfield com/ant/liao/GifDecoder/pixels [B
ifnull L0
aload 0
getfield com/ant/liao/GifDecoder/pixels [B
arraylength
iload 16
if_icmpge L1
L0:
aload 0
iload 16
newarray byte
putfield com/ant/liao/GifDecoder/pixels [B
L1:
aload 0
getfield com/ant/liao/GifDecoder/prefix [S
ifnonnull L2
aload 0
sipush 4096
newarray short
putfield com/ant/liao/GifDecoder/prefix [S
L2:
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
ifnonnull L3
aload 0
sipush 4096
newarray byte
putfield com/ant/liao/GifDecoder/suffix [B
L3:
aload 0
getfield com/ant/liao/GifDecoder/pixelStack [B
ifnonnull L4
aload 0
sipush 4097
newarray byte
putfield com/ant/liao/GifDecoder/pixelStack [B
L4:
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
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
if_icmplt L6
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
if_icmplt L8
L9:
iload 8
iload 16
if_icmplt L10
return
L6:
aload 0
getfield com/ant/liao/GifDecoder/prefix [S
iload 1
iconst_0
sastore
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
iload 1
iload 1
i2b
bastore
iload 1
iconst_1
iadd
istore 1
goto L5
L8:
iload 2
ifne L11
iload 5
iload 4
if_icmpge L12
iload 9
istore 7
iload 9
ifne L13
aload 0
invokespecial com/ant/liao/GifDecoder/readBlock()I
istore 7
iload 7
ifgt L14
goto L9
L14:
iconst_0
istore 10
L13:
iload 6
aload 0
getfield com/ant/liao/GifDecoder/block [B
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
L12:
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
if_icmpgt L9
iload 7
iload 18
iconst_1
iadd
if_icmpne L15
goto L9
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
getfield com/ant/liao/GifDecoder/pixelStack [B
iload 2
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
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
getfield com/ant/liao/GifDecoder/pixelStack [B
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
if_icmpgt L19
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
iload 5
baload
sipush 255
iand
istore 12
iload 11
sipush 4096
if_icmplt L20
goto L9
L19:
aload 0
getfield com/ant/liao/GifDecoder/pixelStack [B
iload 6
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
iload 5
baload
bastore
aload 0
getfield com/ant/liao/GifDecoder/prefix [S
iload 5
saload
istore 5
iload 6
iconst_1
iadd
istore 6
goto L18
L20:
aload 0
getfield com/ant/liao/GifDecoder/pixelStack [B
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
getfield com/ant/liao/GifDecoder/prefix [S
iload 11
iload 1
i2s
sastore
aload 0
getfield com/ant/liao/GifDecoder/suffix [B
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
getfield com/ant/liao/GifDecoder/pixels [B
iload 8
aload 0
getfield com/ant/liao/GifDecoder/pixelStack [B
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
L10:
aload 0
getfield com/ant/liao/GifDecoder/pixels [B
iload 8
iconst_0
bastore
iload 8
iconst_1
iadd
istore 8
goto L9
L11:
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

.method private delAllFile(Ljava/lang/String;)Z
iconst_0
istore 3
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
aload 4
invokevirtual java/io/File/exists()Z
ifne L0
iconst_0
ireturn
L0:
aload 4
invokevirtual java/io/File/isDirectory()Z
ifne L1
iconst_0
ireturn
L1:
aload 4
invokevirtual java/io/File/list()[Ljava/lang/String;
astore 5
iconst_0
istore 2
L2:
iload 2
aload 5
arraylength
if_icmplt L3
iload 3
ireturn
L3:
aload 1
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L4
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
L5:
aload 4
invokevirtual java/io/File/isFile()Z
ifeq L6
aload 4
invokevirtual java/io/File/delete()Z
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
goto L5
L6:
aload 4
invokevirtual java/io/File/isDirectory()Z
ifeq L7
aload 0
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/ant/liao/GifDecoder/delAllFile(Ljava/lang/String;)Z
pop
aload 0
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
iload 2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokespecial com/ant/liao/GifDecoder/delDir(Ljava/lang/String;Z)V
iconst_1
istore 3
goto L7
.limit locals 6
.limit stack 5
.end method

.method private delDir(Ljava/lang/String;Z)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
aload 1
invokespecial com/ant/liao/GifDecoder/delAllFile(Ljava/lang/String;)Z
pop
L1:
iload 2
ifeq L4
L3:
new java/io/File
dup
aload 1
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/delete()Z
pop
L4:
return
L2:
astore 1
return
.limit locals 3
.limit stack 3
.end method

.method private err()Z
aload 0
getfield com/ant/liao/GifDecoder/status I
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getDir()Ljava/lang/String;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
L1:
aload 0
monitorexit
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
areturn
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 2
.end method

.method private init()V
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/status I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/frameCount I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/gct [I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/lct [I
return
.limit locals 1
.limit stack 2
.end method

.method private read()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private readBlock()I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
putfield com/ant/liao/GifDecoder/blockSize I
iconst_0
istore 2
iconst_0
istore 1
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
ifle L5
L0:
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
istore 2
L1:
iload 1
iload 2
if_icmplt L3
L6:
iload 1
istore 2
iload 1
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
if_icmpge L5
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
iload 1
istore 2
L5:
iload 2
ireturn
L3:
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
aload 0
getfield com/ant/liao/GifDecoder/block [B
iload 1
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
iload 1
isub
invokevirtual java/io/InputStream/read([BII)I
istore 2
L4:
iload 2
iconst_m1
if_icmpeq L6
iload 1
iload 2
iadd
istore 1
goto L0
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 4
.limit stack 5
.end method

.method private readByte()I
aload 0
new java/io/ByteArrayInputStream
dup
aload 0
getfield com/ant/liao/GifDecoder/gifData [B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
putfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/gifData [B
aload 0
invokespecial com/ant/liao/GifDecoder/readStream()I
ireturn
.limit locals 1
.limit stack 4
.end method

.method private readColorTable(I)[I
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
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
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
putfield com/ant/liao/GifDecoder/status I
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

.method private readContents()V
iconst_0
istore 1
L0:
iload 1
ifne L1
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifeq L2
L1:
return
L2:
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
lookupswitch
0 : L0
33 : L3
44 : L4
59 : L5
default : L6
L6:
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
goto L0
L4:
aload 0
invokespecial com/ant/liao/GifDecoder/readImage()V
goto L0
L3:
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
lookupswitch
249 : L7
255 : L8
default : L9
L9:
aload 0
invokespecial com/ant/liao/GifDecoder/skip()V
goto L0
L7:
aload 0
invokespecial com/ant/liao/GifDecoder/readGraphicControlExt()V
goto L0
L8:
aload 0
invokespecial com/ant/liao/GifDecoder/readBlock()I
pop
ldc ""
astore 3
iconst_0
istore 2
L10:
iload 2
bipush 11
if_icmplt L11
aload 3
ldc "NETSCAPE2.0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L12
aload 0
invokespecial com/ant/liao/GifDecoder/readNetscapeExt()V
goto L0
L11:
new java/lang/StringBuilder
dup
aload 3
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/ant/liao/GifDecoder/block [B
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
goto L10
L12:
aload 0
invokespecial com/ant/liao/GifDecoder/skip()V
goto L0
L5:
iconst_1
istore 1
goto L0
.limit locals 4
.limit stack 3
.end method

.method private readGraphicControlExt()V
iconst_1
istore 2
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
pop
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
istore 1
aload 0
iload 1
bipush 28
iand
iconst_2
ishr
putfield com/ant/liao/GifDecoder/dispose I
aload 0
getfield com/ant/liao/GifDecoder/dispose I
ifne L0
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/dispose I
L0:
iload 1
iconst_1
iand
ifeq L1
L2:
aload 0
iload 2
putfield com/ant/liao/GifDecoder/transparency Z
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
bipush 10
imul
putfield com/ant/liao/GifDecoder/delay I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
putfield com/ant/liao/GifDecoder/transIndex I
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
pop
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
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
if_icmplt L1
aload 2
ldc "GIF"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L2
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
L3:
return
L1:
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
i2c
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 0
invokespecial com/ant/liao/GifDecoder/readLSD()V
aload 0
getfield com/ant/liao/GifDecoder/gctFlag Z
ifeq L3
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifne L3
aload 0
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gctSize I
invokespecial com/ant/liao/GifDecoder/readColorTable(I)[I
putfield com/ant/liao/GifDecoder/gct [I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gct [I
aload 0
getfield com/ant/liao/GifDecoder/bgIndex I
iaload
putfield com/ant/liao/GifDecoder/bgColor I
return
.limit locals 3
.limit stack 3
.end method

.method private readImage()V
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/ix I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/iy I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/iw I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/ih I
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
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
putfield com/ant/liao/GifDecoder/lctFlag Z
iload 1
bipush 64
iand
ifeq L2
iconst_1
istore 2
L3:
aload 0
iload 2
putfield com/ant/liao/GifDecoder/interlace Z
aload 0
iconst_2
iload 1
bipush 7
iand
ishl
putfield com/ant/liao/GifDecoder/lctSize I
aload 0
getfield com/ant/liao/GifDecoder/lctFlag Z
ifeq L4
aload 0
aload 0
aload 0
getfield com/ant/liao/GifDecoder/lctSize I
invokespecial com/ant/liao/GifDecoder/readColorTable(I)[I
putfield com/ant/liao/GifDecoder/lct [I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/lct [I
putfield com/ant/liao/GifDecoder/act [I
L5:
iconst_0
istore 1
aload 0
getfield com/ant/liao/GifDecoder/transparency Z
ifeq L6
aload 0
getfield com/ant/liao/GifDecoder/act [I
aload 0
getfield com/ant/liao/GifDecoder/transIndex I
iaload
istore 1
aload 0
getfield com/ant/liao/GifDecoder/act [I
aload 0
getfield com/ant/liao/GifDecoder/transIndex I
iconst_0
iastore
L6:
aload 0
getfield com/ant/liao/GifDecoder/act [I
ifnonnull L7
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
L7:
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
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
getfield com/ant/liao/GifDecoder/gct [I
putfield com/ant/liao/GifDecoder/act [I
aload 0
getfield com/ant/liao/GifDecoder/bgIndex I
aload 0
getfield com/ant/liao/GifDecoder/transIndex I
if_icmpne L5
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/bgColor I
goto L5
L8:
aload 0
invokespecial com/ant/liao/GifDecoder/decodeImageData()V
aload 0
invokespecial com/ant/liao/GifDecoder/skip()V
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifne L9
aload 0
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
iconst_1
iadd
putfield com/ant/liao/GifDecoder/frameCount I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/width I
aload 0
getfield com/ant/liao/GifDecoder/height I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
aload 0
invokespecial com/ant/liao/GifDecoder/setPixels()V
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
ifnonnull L10
aload 0
getfield com/ant/liao/GifDecoder/cacheImage Z
ifeq L11
aload 0
invokespecial com/ant/liao/GifDecoder/getDir()Ljava/lang/String;
astore 3
aload 0
new com/ant/liao/GifFrame
dup
new java/lang/StringBuilder
dup
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/ant/liao/GifDecoder/delay I
invokespecial com/ant/liao/GifFrame/<init>(Ljava/lang/String;I)V
putfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
aload 3
invokespecial com/ant/liao/GifDecoder/saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
L12:
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
L13:
aload 0
getfield com/ant/liao/GifDecoder/transparency Z
ifeq L14
aload 0
getfield com/ant/liao/GifDecoder/act [I
aload 0
getfield com/ant/liao/GifDecoder/transIndex I
iload 1
iastore
L14:
aload 0
invokespecial com/ant/liao/GifDecoder/resetFrame()V
aload 0
getfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
iconst_1
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
invokeinterface com/ant/liao/GifAction/parseOk(ZI)V 2
return
L11:
aload 0
new com/ant/liao/GifFrame
dup
aload 0
getfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
aload 0
getfield com/ant/liao/GifDecoder/delay I
invokespecial com/ant/liao/GifFrame/<init>(Landroid/graphics/Bitmap;I)V
putfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
goto L12
L10:
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
astore 3
L15:
aload 3
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
ifnonnull L16
aload 0
getfield com/ant/liao/GifDecoder/cacheImage Z
ifeq L17
aload 0
invokespecial com/ant/liao/GifDecoder/getDir()Ljava/lang/String;
astore 4
aload 3
new com/ant/liao/GifFrame
dup
new java/lang/StringBuilder
dup
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/ant/liao/GifDecoder/delay I
invokespecial com/ant/liao/GifFrame/<init>(Ljava/lang/String;I)V
putfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
aload 4
invokespecial com/ant/liao/GifDecoder/saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
goto L13
L16:
aload 3
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
astore 3
goto L15
L17:
aload 3
new com/ant/liao/GifFrame
dup
aload 0
getfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
aload 0
getfield com/ant/liao/GifDecoder/delay I
invokespecial com/ant/liao/GifFrame/<init>(Landroid/graphics/Bitmap;I)V
putfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
goto L13
.limit locals 5
.limit stack 6
.end method

.method private readLSD()V
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/width I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/readShort()I
putfield com/ant/liao/GifDecoder/height I
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
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
putfield com/ant/liao/GifDecoder/gctFlag Z
aload 0
iconst_2
iload 1
bipush 7
iand
ishl
putfield com/ant/liao/GifDecoder/gctSize I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
putfield com/ant/liao/GifDecoder/bgIndex I
aload 0
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
putfield com/ant/liao/GifDecoder/pixelAspect I
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method private readNetscapeExt()V
L0:
aload 0
invokespecial com/ant/liao/GifDecoder/readBlock()I
pop
aload 0
getfield com/ant/liao/GifDecoder/block [B
iconst_0
baload
iconst_1
if_icmpne L1
aload 0
getfield com/ant/liao/GifDecoder/block [B
iconst_1
baload
istore 1
aload 0
aload 0
getfield com/ant/liao/GifDecoder/block [B
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
putfield com/ant/liao/GifDecoder/loopCount I
L1:
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
ifle L2
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifeq L0
L2:
return
.limit locals 2
.limit stack 4
.end method

.method private readShort()I
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
aload 0
invokespecial com/ant/liao/GifDecoder/read()I
bipush 8
ishl
ior
ireturn
.limit locals 1
.limit stack 3
.end method

.method private readStream()I
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial com/ant/liao/GifDecoder/init()V
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
ifnull L3
aload 0
invokespecial com/ant/liao/GifDecoder/readHeader()V
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifne L0
aload 0
invokespecial com/ant/liao/GifDecoder/readContents()V
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
ifge L4
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/status I
aload 0
getfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
iconst_0
iconst_m1
invokeinterface com/ant/liao/GifAction/parseOk(ZI)V 2
L0:
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
L1:
aload 0
getfield com/ant/liao/GifDecoder/status I
ireturn
L4:
aload 0
iconst_m1
putfield com/ant/liao/GifDecoder/status I
aload 0
getfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
iconst_1
iconst_m1
invokeinterface com/ant/liao/GifAction/parseOk(ZI)V 2
goto L0
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L3:
aload 0
iconst_2
putfield com/ant/liao/GifDecoder/status I
aload 0
getfield com/ant/liao/GifDecoder/action Lcom/ant/liao/GifAction;
iconst_0
iconst_m1
invokeinterface com/ant/liao/GifAction/parseOk(ZI)V 2
goto L1
.limit locals 2
.limit stack 3
.end method

.method private resetFrame()V
aload 0
aload 0
getfield com/ant/liao/GifDecoder/dispose I
putfield com/ant/liao/GifDecoder/lastDispose I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/ix I
putfield com/ant/liao/GifDecoder/lrx I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/iy I
putfield com/ant/liao/GifDecoder/lry I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/iw I
putfield com/ant/liao/GifDecoder/lrw I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/ih I
putfield com/ant/liao/GifDecoder/lrh I
aload 0
aload 0
getfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
putfield com/ant/liao/GifDecoder/lastImage Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/bgColor I
putfield com/ant/liao/GifDecoder/lastBgColor I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/dispose I
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/transparency Z
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/delay I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/lct [I
return
.limit locals 1
.limit stack 2
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
pop
new java/io/FileOutputStream
dup
new java/lang/StringBuilder
dup
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/ant/liao/GifDecoder/getDir()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 100
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
L1:
return
L2:
astore 1
return
.limit locals 3
.limit stack 5
.end method

.method private setPixels()V
aload 0
getfield com/ant/liao/GifDecoder/width I
aload 0
getfield com/ant/liao/GifDecoder/height I
imul
newarray int
astore 9
aload 0
getfield com/ant/liao/GifDecoder/lastDispose I
ifle L0
aload 0
getfield com/ant/liao/GifDecoder/lastDispose I
iconst_3
if_icmpne L1
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
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
invokevirtual com/ant/liao/GifDecoder/getFrameImage(I)Landroid/graphics/Bitmap;
putfield com/ant/liao/GifDecoder/lastImage Landroid/graphics/Bitmap;
L1:
aload 0
getfield com/ant/liao/GifDecoder/lastImage Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/ant/liao/GifDecoder/lastImage Landroid/graphics/Bitmap;
aload 9
iconst_0
aload 0
getfield com/ant/liao/GifDecoder/width I
iconst_0
iconst_0
aload 0
getfield com/ant/liao/GifDecoder/width I
aload 0
getfield com/ant/liao/GifDecoder/height I
invokevirtual android/graphics/Bitmap/getPixels([IIIIIII)V
aload 0
getfield com/ant/liao/GifDecoder/lastDispose I
iconst_2
if_icmpne L0
iconst_0
istore 1
aload 0
getfield com/ant/liao/GifDecoder/transparency Z
ifne L3
aload 0
getfield com/ant/liao/GifDecoder/lastBgColor I
istore 1
L3:
iconst_0
istore 2
L4:
iload 2
aload 0
getfield com/ant/liao/GifDecoder/lrh I
if_icmplt L5
L0:
iconst_1
istore 5
bipush 8
istore 4
iconst_0
istore 6
iconst_0
istore 3
L6:
iload 3
aload 0
getfield com/ant/liao/GifDecoder/ih I
if_icmplt L7
aload 0
aload 9
aload 0
getfield com/ant/liao/GifDecoder/width I
aload 0
getfield com/ant/liao/GifDecoder/height I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/ant/liao/GifDecoder/image Landroid/graphics/Bitmap;
return
L2:
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/lastImage Landroid/graphics/Bitmap;
goto L1
L5:
aload 0
getfield com/ant/liao/GifDecoder/lry I
iload 2
iadd
aload 0
getfield com/ant/liao/GifDecoder/width I
imul
aload 0
getfield com/ant/liao/GifDecoder/lrx I
iadd
istore 4
aload 0
getfield com/ant/liao/GifDecoder/lrw I
istore 5
iload 4
istore 3
L8:
iload 3
iload 4
iload 5
iadd
if_icmplt L9
iload 2
iconst_1
iadd
istore 2
goto L4
L9:
aload 9
iload 3
iload 1
iastore
iload 3
iconst_1
iadd
istore 3
goto L8
L7:
iload 3
istore 8
iload 6
istore 1
iload 4
istore 2
iload 5
istore 7
aload 0
getfield com/ant/liao/GifDecoder/interlace Z
ifeq L10
iload 6
istore 1
iload 4
istore 2
iload 5
istore 7
iload 6
aload 0
getfield com/ant/liao/GifDecoder/ih I
if_icmplt L11
iload 5
iconst_1
iadd
istore 7
iload 7
tableswitch 2
L12
L13
L14
default : L15
L15:
iload 4
istore 2
iload 6
istore 1
L11:
iload 1
istore 8
iload 1
iload 2
iadd
istore 1
L10:
iload 8
aload 0
getfield com/ant/liao/GifDecoder/iy I
iadd
istore 4
iload 4
aload 0
getfield com/ant/liao/GifDecoder/height I
if_icmpge L16
iload 4
aload 0
getfield com/ant/liao/GifDecoder/width I
imul
istore 8
iload 8
aload 0
getfield com/ant/liao/GifDecoder/ix I
iadd
istore 6
iload 6
aload 0
getfield com/ant/liao/GifDecoder/iw I
iadd
istore 5
iload 5
istore 4
aload 0
getfield com/ant/liao/GifDecoder/width I
iload 8
iadd
iload 5
if_icmpge L17
iload 8
aload 0
getfield com/ant/liao/GifDecoder/width I
iadd
istore 4
L17:
iload 3
aload 0
getfield com/ant/liao/GifDecoder/iw I
imul
istore 5
L18:
iload 6
iload 4
if_icmplt L19
L16:
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
goto L6
L12:
iconst_4
istore 1
iload 4
istore 2
goto L11
L13:
iconst_2
istore 1
iconst_4
istore 2
goto L11
L14:
iconst_1
istore 1
iconst_2
istore 2
goto L11
L19:
aload 0
getfield com/ant/liao/GifDecoder/pixels [B
iload 5
baload
istore 8
aload 0
getfield com/ant/liao/GifDecoder/act [I
iload 8
sipush 255
iand
iaload
istore 8
iload 8
ifeq L20
aload 9
iload 6
iload 8
iastore
L20:
iload 6
iconst_1
iadd
istore 6
iload 5
iconst_1
iadd
istore 5
goto L18
.limit locals 10
.limit stack 8
.end method

.method private skip()V
L0:
aload 0
invokespecial com/ant/liao/GifDecoder/readBlock()I
pop
aload 0
getfield com/ant/liao/GifDecoder/blockSize I
ifle L1
aload 0
invokespecial com/ant/liao/GifDecoder/err()Z
ifeq L0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public free()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
astore 1
aload 0
getfield com/ant/liao/GifDecoder/cacheImage Z
ifne L3
L4:
aload 1
ifnonnull L5
L6:
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
ifnull L7
L0:
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
L1:
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
L7:
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/gifData [B
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/status I
aload 0
aconst_null
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
return
L5:
aload 1
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
ifnull L8
aload 1
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L8
aload 1
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L8:
aload 1
aconst_null
putfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
astore 1
goto L4
L3:
aload 0
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
iconst_1
invokespecial com/ant/liao/GifDecoder/delDir(Ljava/lang/String;Z)V
goto L6
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public getCurrentFrame()Lcom/ant/liao/GifFrame;
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDelay(I)I
aload 0
iconst_m1
putfield com/ant/liao/GifDecoder/delay I
iload 1
iflt L0
iload 1
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
if_icmpge L0
aload 0
iload 1
invokevirtual com/ant/liao/GifDecoder/getFrame(I)Lcom/ant/liao/GifFrame;
astore 2
aload 2
ifnull L0
aload 0
aload 2
getfield com/ant/liao/GifFrame/delay I
putfield com/ant/liao/GifDecoder/delay I
L0:
aload 0
getfield com/ant/liao/GifDecoder/delay I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getDelays()[I
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
astore 2
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
newarray int
astore 3
iconst_0
istore 1
L0:
aload 2
ifnull L1
iload 1
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
if_icmplt L2
L1:
aload 3
areturn
L2:
aload 3
iload 1
aload 2
getfield com/ant/liao/GifFrame/delay I
iastore
aload 2
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
astore 2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 4
.limit stack 3
.end method

.method public getFrame(I)Lcom/ant/liao/GifFrame;
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
astore 3
iconst_0
istore 2
L0:
aload 3
ifnonnull L1
aconst_null
astore 4
L2:
aload 4
areturn
L1:
aload 3
astore 4
iload 2
iload 1
if_icmpeq L2
aload 3
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
astore 3
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 2
.end method

.method public getFrameCount()I
aload 0
getfield com/ant/liao/GifDecoder/frameCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
aload 0
iload 1
invokevirtual com/ant/liao/GifDecoder/getFrame(I)Lcom/ant/liao/GifFrame;
astore 2
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 2
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getImage()Landroid/graphics/Bitmap;
aload 0
iconst_0
invokevirtual com/ant/liao/GifDecoder/getFrameImage(I)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getLoopCount()I
aload 0
getfield com/ant/liao/GifDecoder/loopCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()I
aload 0
getfield com/ant/liao/GifDecoder/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public next()Lcom/ant/liao/GifFrame;
aload 0
getfield com/ant/liao/GifDecoder/isShow Z
ifne L0
aload 0
iconst_1
putfield com/ant/liao/GifDecoder/isShow Z
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
areturn
L0:
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
ifnonnull L1
aconst_null
areturn
L1:
aload 0
getfield com/ant/liao/GifDecoder/status I
ifne L2
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
ifnull L3
aload 0
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
L3:
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
areturn
L2:
aload 0
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
getfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
aload 0
getfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
ifnonnull L3
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
goto L3
.limit locals 1
.limit stack 2
.end method

.method public parseOk()Z
aload 0
getfield com/ant/liao/GifDecoder/status I
iconst_m1
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public reset()V
aload 0
aload 0
getfield com/ant/liao/GifDecoder/gifFrame Lcom/ant/liao/GifFrame;
putfield com/ant/liao/GifDecoder/currentFrame Lcom/ant/liao/GifFrame;
return
.limit locals 1
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
ifnull L0
aload 0
invokespecial com/ant/liao/GifDecoder/readStream()I
pop
L1:
return
L0:
aload 0
getfield com/ant/liao/GifDecoder/gifData [B
ifnull L1
aload 0
invokespecial com/ant/liao/GifDecoder/readByte()I
pop
return
.limit locals 1
.limit stack 1
.end method

.method public setCacheImage(ZLandroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
iload 1
putfield com/ant/liao/GifDecoder/cacheImage Z
L0:
aload 0
getfield com/ant/liao/GifDecoder/cacheImage Z
ifeq L4
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
new java/lang/StringBuilder
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gifView_tmp_dir"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/ant/liao/GifDecoder/getDir()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokespecial com/ant/liao/GifDecoder/createDir(Ljava/lang/String;)Z
ifne L6
L1:
iconst_1
istore 3
L7:
iload 3
ifeq L4
L3:
aload 0
new java/lang/StringBuilder
dup
aload 2
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/ant/liao/GifDecoder/getDir()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
aload 0
aload 0
getfield com/ant/liao/GifDecoder/imagePath Ljava/lang/String;
invokespecial com/ant/liao/GifDecoder/createDir(Ljava/lang/String;)Z
ifne L4
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/cacheImage Z
L4:
return
L6:
iconst_0
istore 3
goto L7
L5:
iconst_1
istore 3
goto L7
L2:
astore 2
aload 0
iconst_0
putfield com/ant/liao/GifDecoder/cacheImage Z
return
.limit locals 4
.limit stack 4
.end method

.method public setGifImage(Ljava/io/InputStream;)V
aload 0
aload 1
putfield com/ant/liao/GifDecoder/in Ljava/io/InputStream;
return
.limit locals 2
.limit stack 2
.end method

.method public setGifImage([B)V
aload 0
aload 1
putfield com/ant/liao/GifDecoder/gifData [B
return
.limit locals 2
.limit stack 2
.end method
