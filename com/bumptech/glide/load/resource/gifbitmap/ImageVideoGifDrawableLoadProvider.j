.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'encoder' Lcom/bumptech/glide/load/ResourceEncoder; signature "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'sourceDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"

.method public <init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
.signature "(Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V"
aload 0
invokespecial java/lang/Object/<init>()V
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder
dup
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 2
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
astore 3
aload 0
new com/bumptech/glide/load/resource/file/FileToStreamDecoder
dup
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder
dup
aload 3
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
putfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 3
putfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/sourceDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder
dup
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
aload 2
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/<init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V
putfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 0
aload 1
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
putfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 4
.limit stack 6
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/sourceDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
areturn
.limit locals 1
.limit stack 1
.end method
