.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"

.field private static final 'TAG' Ljava/lang/String; = "ImageVideoDecoder"

.field private final 'fileDescriptorDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"

.field private final 'streamDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"

.method public <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/streamDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/fileDescriptorDecoder Lcom/bumptech/glide/load/ResourceDecoder;
return
.limit locals 3
.limit stack 2
.end method

.method public decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
aconst_null
astore 5
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getStream()Ljava/io/InputStream;
astore 6
aload 5
astore 4
aload 6
ifnull L1
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/streamDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 6
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 4
L1:
aload 4
astore 5
aload 4
ifnonnull L3
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getFileDescriptor()Landroid/os/ParcelFileDescriptor;
astore 1
aload 4
astore 5
aload 1
ifnull L3
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/fileDescriptorDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
L3:
aload 5
areturn
L2:
astore 6
aload 5
astore 4
ldc "ImageVideoDecoder"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "ImageVideoDecoder"
ldc "Failed to load image from stream, trying FileDescriptor"
aload 6
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 5
astore 4
goto L1
.limit locals 7
.limit stack 4
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast com/bumptech/glide/load/model/ImageVideoWrapper
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
ldc "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method
