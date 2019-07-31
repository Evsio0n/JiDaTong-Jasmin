.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
.inner class static BufferedStreamFactory inner com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory outer com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder
.inner class static ImageTypeParser inner com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser outer com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder

.field private static final 'DEFAULT_PARSER' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private static final 'DEFAULT_STREAM_FACTORY' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

.field static final 'MARK_LIMIT_BYTES' I = 2048


.field private final 'bitmapDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'gifDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.field private 'id' Ljava/lang/String;

.field private final 'parser' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private final 'streamFactory' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

.method static <clinit>()V
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser
dup
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser/<init>()V
putstatic com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/DEFAULT_PARSER Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory
dup
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory/<init>()V
putstatic com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/DEFAULT_STREAM_FACTORY Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V"
aload 0
aload 1
aload 2
aload 3
getstatic com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/DEFAULT_PARSER Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
getstatic com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/DEFAULT_STREAM_FACTORY Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
return
.limit locals 4
.limit stack 6
.end method

.method <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/bitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/gifDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 3
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 4
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/parser Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
aload 0
aload 5
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/streamFactory Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
return
.limit locals 6
.limit stack 2
.end method

.method private decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
.throws java/io/IOException
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getStream()Ljava/io/InputStream;
ifnull L0
aload 0
aload 1
iload 2
iload 3
aload 4
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
areturn
L0:
aload 0
aload 1
iload 2
iload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
areturn
.limit locals 5
.limit stack 5
.end method

.method private decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
.throws java/io/IOException
aconst_null
astore 4
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/bitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
aload 4
astore 1
aload 5
ifnull L0
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
dup
aload 5
aconst_null
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/<init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
astore 1
L0:
aload 1
areturn
.limit locals 6
.limit stack 4
.end method

.method private decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
.throws java/io/IOException
aconst_null
astore 4
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/gifDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
aload 4
astore 1
aload 5
ifnull L0
aload 5
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
astore 1
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getFrameCount()I
iconst_1
if_icmple L1
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
dup
aconst_null
aload 5
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/<init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
astore 1
L0:
aload 1
areturn
L1:
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
dup
new com/bumptech/glide/load/resource/bitmap/BitmapResource
dup
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getFirstFrame()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapResource/<init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aconst_null
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/<init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
areturn
.limit locals 6
.limit stack 6
.end method

.method private decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/streamFactory Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getStream()Ljava/io/InputStream;
aload 4
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory/build(Ljava/io/InputStream;[B)Ljava/io/InputStream;
astore 6
aload 6
sipush 2048
invokevirtual java/io/InputStream/mark(I)V
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/parser Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
aload 6
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser/parse(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
astore 5
aload 6
invokevirtual java/io/InputStream/reset()V
aconst_null
astore 4
aload 5
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/GIF Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
if_acmpne L0
aload 0
aload 6
iload 2
iload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
astore 4
L0:
aload 4
astore 5
aload 4
ifnonnull L1
aload 0
new com/bumptech/glide/load/model/ImageVideoWrapper
dup
aload 6
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getFileDescriptor()Landroid/os/ParcelFileDescriptor;
invokespecial com/bumptech/glide/load/model/ImageVideoWrapper/<init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
iload 2
iload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
astore 5
L1:
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
.throws java/io/IOException
.catch all from L0 to L1 using L2
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
astore 4
aload 4
invokevirtual com/bumptech/glide/util/ByteArrayPool/getBytes()[B
astore 5
L0:
aload 0
aload 1
iload 2
iload 3
aload 5
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
astore 1
L1:
aload 4
aload 5
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 1
ifnull L3
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource
dup
aload 1
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/<init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
areturn
L2:
astore 1
aload 4
aload 5
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 1
athrow
L3:
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast com/bumptech/glide/load/model/ImageVideoWrapper
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/id Ljava/lang/String;
ifnonnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/gifDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/bitmapDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/id Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
