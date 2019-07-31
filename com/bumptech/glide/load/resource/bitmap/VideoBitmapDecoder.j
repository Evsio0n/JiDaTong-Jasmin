.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/bitmap/BitmapDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder<Landroid/os/ParcelFileDescriptor;>;"
.inner class static MediaMetadataRetrieverFactory inner com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory outer com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder

.field private static final 'DEFAULT_FACTORY' Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private static final 'NO_FRAME' I = -1


.field private 'factory' Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private 'frame' I

.method static <clinit>()V
new com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory
dup
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory/<init>()V
putstatic com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/DEFAULT_FACTORY Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/DEFAULT_FACTORY Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
iconst_m1
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(I)V
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/DEFAULT_FACTORY Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
iload 1
invokestatic com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/checkValidFrame(I)I
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
return
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;)V
aload 0
aload 1
iconst_m1
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
return
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/factory Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
aload 0
iload 2
putfield com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/frame I
return
.limit locals 3
.limit stack 2
.end method

.method private static checkValidFrame(I)I
iload 0
ifge L0
new java/lang/IllegalArgumentException
dup
ldc "Requested frame must be non-negative"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/factory Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
invokevirtual com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory/build()Landroid/media/MediaMetadataRetriever;
astore 5
aload 5
aload 1
invokevirtual android/os/ParcelFileDescriptor/getFileDescriptor()Ljava/io/FileDescriptor;
invokevirtual android/media/MediaMetadataRetriever/setDataSource(Ljava/io/FileDescriptor;)V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/frame I
iflt L0
aload 5
aload 0
getfield com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/frame I
i2l
invokevirtual android/media/MediaMetadataRetriever/getFrameAtTime(J)Landroid/graphics/Bitmap;
astore 2
L1:
aload 5
invokevirtual android/media/MediaMetadataRetriever/release()V
aload 1
invokevirtual android/os/ParcelFileDescriptor/close()V
aload 2
areturn
L0:
aload 5
invokevirtual android/media/MediaMetadataRetriever/getFrameAtTime()Landroid/graphics/Bitmap;
astore 2
goto L1
.limit locals 6
.limit stack 3
.end method

.method public volatile synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
.throws java/lang/Exception
aload 0
aload 1
checkcast android/os/ParcelFileDescriptor
aload 2
iload 3
iload 4
aload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
areturn
.limit locals 6
.limit stack 6
.end method

.method public getId()Ljava/lang/String;
ldc "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method
