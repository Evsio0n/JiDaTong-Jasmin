.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"

.field private final 'bitmapDecoder' Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private 'decodeFormat' Lcom/bumptech/glide/load/DecodeFormat;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
getstatic com/bumptech/glide/load/DecodeFormat/DEFAULT Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
new com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder
dup
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/<init>()V
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/bitmapDecoder Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 3
putfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
return
.limit locals 4
.limit stack 2
.end method

.method public decode(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/bitmapDecoder Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
aload 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
iload 2
iload 3
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokevirtual com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/bitmap/BitmapResource/obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
areturn
.limit locals 4
.limit stack 6
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast android/os/ParcelFileDescriptor
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/decode(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
ldc "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method
