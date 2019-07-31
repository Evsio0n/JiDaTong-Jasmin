.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder; signature "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<Landroid/graphics/Bitmap;>;"

.field private final 'decoder' Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

.field private final 'encoder' Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/model/StreamEncoder;

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/model/StreamEncoder
dup
invokespecial com/bumptech/glide/load/model/StreamEncoder/<init>()V
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/StreamEncoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/decoder Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/BitmapEncoder
dup
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapEncoder/<init>()V
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/encoder Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
aload 0
new com/bumptech/glide/load/resource/file/FileToStreamDecoder
dup
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/decoder Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
return
.limit locals 3
.limit stack 5
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/encoder Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/decoder Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/StreamEncoder;
areturn
.limit locals 1
.limit stack 1
.end method
