.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"

.field private final 'encoder' Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final 'sourceDecoder' Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;"

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/resource/file/FileToStreamDecoder
dup
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/sourceDecoder Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/BitmapEncoder
dup
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapEncoder/<init>()V
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/encoder Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
aload 0
invokestatic com/bumptech/glide/load/resource/NullEncoder/get()Lcom/bumptech/glide/load/Encoder;
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 3
.limit stack 7
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/encoder Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/sourceDecoder Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
areturn
.limit locals 1
.limit stack 1
.end method
