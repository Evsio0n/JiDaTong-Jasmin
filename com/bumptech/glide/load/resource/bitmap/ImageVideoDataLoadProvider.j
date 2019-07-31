.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"

.field private final 'encoder' Lcom/bumptech/glide/load/ResourceEncoder; signature "Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"

.field private final 'sourceDecoder' Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

.method public <init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V
.signature "(Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/provider/DataLoadProvider<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 0
new com/bumptech/glide/load/model/ImageVideoWrapperEncoder
dup
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
aload 2
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
invokespecial com/bumptech/glide/load/model/ImageVideoWrapperEncoder/<init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
aload 0
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
dup
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 2
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
putfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/sourceDecoder Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
return
.limit locals 3
.limit stack 5
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/sourceDecoder Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
areturn
.limit locals 1
.limit stack 1
.end method
