.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifResourceEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceEncoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
.inner class static Factory inner com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory outer com/bumptech/glide/load/resource/gif/GifResourceEncoder

.field private static final 'FACTORY' Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private static final 'TAG' Ljava/lang/String; = "GifEncoder"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'factory' Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private final 'provider' Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.method static <clinit>()V
new com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory
dup
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory/<init>()V
putstatic com/bumptech/glide/load/resource/gif/GifResourceEncoder/FACTORY Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
aload 1
getstatic com/bumptech/glide/load/resource/gif/GifResourceEncoder/FACTORY Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
return
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
new com/bumptech/glide/load/resource/gif/GifBitmapProvider
dup
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifBitmapProvider/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/provider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/factory Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
return
.limit locals 3
.limit stack 4
.end method

.method private decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/factory Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory/buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
astore 2
aload 2
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
pop
aload 2
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
astore 2
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/factory Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/provider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory/buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
astore 3
aload 3
aload 2
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
aload 3
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/advance()V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method private getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/factory Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
aload 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory/buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;
astore 1
aload 2
aload 1
aload 3
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getIntrinsicWidth()I
aload 3
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getIntrinsicHeight()I
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 2
aload 1
aload 2
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
L0:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method private writeDataDirect([BLjava/io/OutputStream;)Z
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 2
aload 1
invokevirtual java/io/OutputStream/write([B)V
L1:
iconst_1
ireturn
L2:
astore 1
ldc "GifEncoder"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
ldc "GifEncoder"
ldc "Failed to write data to output stream in GifResourceEncoder"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L3:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Ljava/io/OutputStream;)Z"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 4
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
astore 1
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
astore 8
aload 8
instanceof com/bumptech/glide/load/resource/UnitTransformation
ifeq L5
aload 0
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getData()[B
aload 2
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder/writeDataDirect([BLjava/io/OutputStream;)Z
istore 6
L6:
iload 6
ireturn
L5:
aload 0
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getData()[B
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder/decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
astore 9
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceEncoder/factory Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory/buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
astore 10
aload 10
aload 2
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/start(Ljava/io/OutputStream;)Z
ifne L7
iconst_0
ireturn
L7:
iconst_0
istore 3
L8:
iload 3
aload 9
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getFrameCount()I
if_icmpge L9
aload 0
aload 9
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getNextFrame()Landroid/graphics/Bitmap;
aload 8
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder/getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
astore 2
L0:
aload 10
aload 2
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/addFrame(Landroid/graphics/Bitmap;)Z
istore 6
L1:
iload 6
ifne L3
aload 2
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
iconst_0
ireturn
L3:
aload 10
aload 9
aload 9
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getCurrentFrameIndex()I
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getDelay(I)I
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/setDelay(I)V
aload 9
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/advance()V
L4:
aload 2
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
iload 3
iconst_1
iadd
istore 3
goto L8
L2:
astore 1
aload 2
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
aload 1
athrow
L9:
aload 10
invokevirtual com/bumptech/glide/gifencoder/AnimatedGifEncoder/finish()Z
istore 7
iload 7
istore 6
ldc "GifEncoder"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "GifEncoder"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Encoded gif with "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getFrameCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " frames and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getData()[B
arraylength
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " bytes in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc " ms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 7
ireturn
.limit locals 11
.limit stack 4
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/Resource
aload 2
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceEncoder/encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
