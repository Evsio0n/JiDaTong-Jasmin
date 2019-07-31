.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifResourceDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
.inner class static GifDecoderPool inner com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool outer com/bumptech/glide/load/resource/gif/GifResourceDecoder
.inner class static GifHeaderParserPool inner com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool outer com/bumptech/glide/load/resource/gif/GifResourceDecoder

.field private static final 'DECODER_POOL' Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private static final 'PARSER_POOL' Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private static final 'TAG' Ljava/lang/String; = "GifResourceDecoder"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'context' Landroid/content/Context;

.field private final 'decoderPool' Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private final 'parserPool' Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private final 'provider' Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

.method static <clinit>()V
new com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool
dup
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/<init>()V
putstatic com/bumptech/glide/load/resource/gif/GifResourceDecoder/PARSER_POOL Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
new com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool
dup
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool/<init>()V
putstatic com/bumptech/glide/load/resource/gif/GifResourceDecoder/DECODER_POOL Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
aload 1
aload 2
getstatic com/bumptech/glide/load/resource/gif/GifResourceDecoder/PARSER_POOL Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
getstatic com/bumptech/glide/load/resource/gif/GifResourceDecoder/DECODER_POOL Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
return
.limit locals 3
.limit stack 5
.end method

.method <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 4
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/decoderPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
aload 0
new com/bumptech/glide/load/resource/gif/GifBitmapProvider
dup
aload 2
invokespecial com/bumptech/glide/load/resource/gif/GifBitmapProvider/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/provider Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
aload 0
aload 3
putfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/parserPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
return
.limit locals 5
.limit stack 4
.end method

.method private decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
aload 4
invokevirtual com/bumptech/glide/gifdecoder/GifHeaderParser/parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
astore 4
aload 4
invokevirtual com/bumptech/glide/gifdecoder/GifHeader/getNumFrames()I
ifle L0
aload 4
invokevirtual com/bumptech/glide/gifdecoder/GifHeader/getStatus()I
ifeq L1
L0:
aconst_null
areturn
L1:
aload 0
aload 5
aload 4
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder/decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;
astore 5
aload 5
ifnull L0
invokestatic com/bumptech/glide/load/resource/UnitTransformation/get()Lcom/bumptech/glide/load/resource/UnitTransformation;
astore 6
new com/bumptech/glide/load/resource/gif/GifDrawableResource
dup
new com/bumptech/glide/load/resource/gif/GifDrawable
dup
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/provider Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 6
iload 2
iload 3
aload 4
aload 1
aload 5
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/<init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
invokespecial com/bumptech/glide/load/resource/gif/GifDrawableResource/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
areturn
.limit locals 7
.limit stack 13
.end method

.method private decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;
aload 1
aload 2
aload 3
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/advance()V
aload 1
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getNextFrame()Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 3
.end method

.method private static inputStreamToBytes(Ljava/io/InputStream;)[B
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L2
new java/io/ByteArrayOutputStream
dup
sipush 16384
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 2
L0:
sipush 16384
newarray byte
astore 3
L1:
aload 0
aload 3
invokevirtual java/io/InputStream/read([B)I
istore 1
L3:
iload 1
iconst_m1
if_icmpeq L6
L4:
aload 2
aload 3
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L5:
goto L1
L2:
astore 0
ldc "GifResourceDecoder"
ldc "Error reading data from stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L8:
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L6:
aload 2
invokevirtual java/io/ByteArrayOutputStream/flush()V
L7:
goto L8
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/InputStream
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder/decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
.catch all from L0 to L1 using L2
aload 1
invokestatic com/bumptech/glide/load/resource/gif/GifResourceDecoder/inputStreamToBytes(Ljava/io/InputStream;)[B
astore 5
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/parserPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
aload 5
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
astore 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/decoderPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/provider Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool/obtain(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
astore 4
L0:
aload 0
aload 5
iload 2
iload 3
aload 1
aload 4
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder/decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
astore 5
L1:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/parserPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/decoderPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
aload 4
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool/release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
aload 5
areturn
L2:
astore 5
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/parserPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool/release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifResourceDecoder/decoderPool Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
aload 4
invokevirtual com/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool/release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
aload 5
athrow
.limit locals 6
.limit stack 6
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
