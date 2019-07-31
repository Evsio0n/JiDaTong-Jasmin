.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"

.field private static final 'ID' Ljava/lang/String; = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

.field private 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private 'decodeFormat' Lcom/bumptech/glide/load/DecodeFormat;

.field private final 'downsampler' Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private 'id' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
aload 1
getstatic com/bumptech/glide/load/DecodeFormat/DEFAULT Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_LEAST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 3
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
return
.limit locals 4
.limit stack 2
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
iload 2
iload 3
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/bitmap/BitmapResource/obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
areturn
.limit locals 4
.limit stack 6
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/InputStream
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/id Ljava/lang/String;
ifnonnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/getId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokevirtual com/bumptech/glide/load/DecodeFormat/name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/id Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
