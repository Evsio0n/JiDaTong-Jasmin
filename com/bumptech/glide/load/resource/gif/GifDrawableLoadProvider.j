.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder; signature "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.field private final 'decoder' Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final 'encoder' Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/model/StreamEncoder;

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/resource/gif/GifResourceDecoder
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/resource/gif/GifResourceDecoder/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/decoder Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/file/FileToStreamDecoder
dup
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/decoder Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
putfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/cacheDecoder Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
aload 0
new com/bumptech/glide/load/resource/gif/GifResourceEncoder
dup
aload 2
invokespecial com/bumptech/glide/load/resource/gif/GifResourceEncoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
putfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/encoder Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
aload 0
new com/bumptech/glide/load/model/StreamEncoder
dup
invokespecial com/bumptech/glide/load/model/StreamEncoder/<init>()V
putfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/StreamEncoder;
return
.limit locals 3
.limit stack 5
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/cacheDecoder Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/encoder Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/decoder Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableLoadProvider/sourceEncoder Lcom/bumptech/glide/load/model/StreamEncoder;
areturn
.limit locals 1
.limit stack 1
.end method
