.bytecode 50.0
.class public synchronized com/bumptech/glide/BitmapRequestBuilder
.super com/bumptech/glide/GenericRequestBuilder
.implements com/bumptech/glide/BitmapOptions
.signature "<ModelType:Ljava/lang/Object;TranscodeType:Ljava/lang/Object;>Lcom/bumptech/glide/GenericRequestBuilder<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;TTranscodeType;>;Lcom/bumptech/glide/BitmapOptions;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private 'decodeFormat' Lcom/bumptech/glide/load/DecodeFormat;

.field private 'downsampler' Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private 'imageDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"

.field private 'videoDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"

.method <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
.signature "(Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;TTranscodeType;>;Ljava/lang/Class<TTranscodeType;>;Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;)V"
aload 0
aload 1
aload 2
aload 3
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_LEAST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
putfield com/bumptech/glide/BitmapRequestBuilder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
putfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;
putfield com/bumptech/glide/BitmapRequestBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
aload 0
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
return
.limit locals 4
.limit stack 5
.end method

.method private downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/BitmapRequestBuilder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 0
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 1
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 6
.end method

.method public animate(I)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(I)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/animate(I)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method applyCenterCrop()V
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method applyFitCenter()V
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method public approximate()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_LEAST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
invokespecial com/bumptech/glide/BitmapRequestBuilder/downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 2
.end method

.method public asIs()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/NONE Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
invokespecial com/bumptech/glide/BitmapRequestBuilder/downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 2
.end method

.method public atMost()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_MOST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
invokespecial com/bumptech/glide/BitmapRequestBuilder/downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 2
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/resource/bitmap/BitmapTransformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
aastore
invokevirtual com/bumptech/glide/BitmapRequestBuilder/transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public clone()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/clone()Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/BitmapRequestBuilder
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/clone()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/clone()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public dontTransform()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/dontTransform()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(I)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(I)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/error(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/error(I)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(I)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/resource/bitmap/BitmapTransformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
aastore
invokevirtual com/bumptech/glide/BitmapRequestBuilder/transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/BitmapRequestBuilder/fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/BitmapRequestBuilder/decodeFormat Lcom/bumptech/glide/load/DecodeFormat;
aload 0
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder
dup
new com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder
dup
invokespecial com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder/<init>()V
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
putfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/file/FileToStreamDecoder
dup
new com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/downsampler Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder/<init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/GenericRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 8
.end method

.method public imageDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
dup
aload 1
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
.signature "(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 2
.limit stack 2
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(TModelType;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public override(II)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(II)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
iload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/override(II)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
iload 2
invokevirtual com/bumptech/glide/BitmapRequestBuilder/override(II)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(I)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(F)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
fload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
fload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/sizeMultiplier(F)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Z)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(F)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(F)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
fload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/BitmapRequestBuilder<*TTranscodeType;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
fload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/thumbnail(F)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TTranscodeType;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/BitmapRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public videoDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/BitmapRequestBuilder/videoDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder
dup
aload 0
getfield com/bumptech/glide/BitmapRequestBuilder/imageDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 5
.end method
