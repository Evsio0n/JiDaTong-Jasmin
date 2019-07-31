.bytecode 50.0
.class public synchronized com/bumptech/glide/GifRequestBuilder
.super com/bumptech/glide/GenericRequestBuilder
.implements com/bumptech/glide/BitmapOptions
.implements com/bumptech/glide/DrawableOptions
.signature "<ModelType:Ljava/lang/Object;>Lcom/bumptech/glide/GenericRequestBuilder<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Lcom/bumptech/glide/BitmapOptions;Lcom/bumptech/glide/DrawableOptions;"

.method <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
.signature "(Lcom/bumptech/glide/provider/LoadProvider<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Ljava/lang/Class<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;)V"
aload 0
aload 1
aload 2
aload 3
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
return
.limit locals 4
.limit stack 4
.end method

.method private toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
.signature "([Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
aload 1
arraylength
anewarray com/bumptech/glide/load/resource/gif/GifDrawableTransformation
astore 3
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmpge L1
aload 3
iload 2
new com/bumptech/glide/load/resource/gif/GifDrawableTransformation
dup
aload 1
iload 2
aaload
aload 0
getfield com/bumptech/glide/GifRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/gif/GifDrawableTransformation/<init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aastore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method public volatile synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/animate(I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public animate(I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
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

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method applyCenterCrop()V
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method applyFitCenter()V
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/resource/bitmap/BitmapTransformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/GifRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
aastore
invokevirtual com/bumptech/glide/GifRequestBuilder/transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/clone()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public clone()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/clone()Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/GifRequestBuilder
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/clone()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/crossFade()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
iload 2
invokevirtual com/bumptech/glide/GifRequestBuilder/crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
iload 2
invokevirtual com/bumptech/glide/GifRequestBuilder/crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public crossFade()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory
dup
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>()V
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory
dup
iload 1
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(I)V
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(II)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory
dup
aload 0
getfield com/bumptech/glide/GifRequestBuilder/context Landroid/content/Context;
iload 1
iload 2
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(Landroid/content/Context;II)V
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 3
.limit stack 6
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory
dup
aload 1
iload 2
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(Landroid/view/animation/Animation;I)V
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method public volatile synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/dontTransform()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public dontTransform()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/error(I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/error(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/fallback(I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/GifRequestBuilder/fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
.signature "()Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/resource/bitmap/BitmapTransformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/GifRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
aastore
invokevirtual com/bumptech/glide/GifRequestBuilder/transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/request/RequestListener<-TModelType;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(TModelType;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
iload 2
invokevirtual com/bumptech/glide/GifRequestBuilder/override(II)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public override(II)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(II)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
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

.method public volatile synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
fload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(F)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
fload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Z)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
fload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(F)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
fload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<***Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/GifRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/GifRequestBuilder<*>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/GifRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transformFrame([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 0
aload 1
invokespecial com/bumptech/glide/GifRequestBuilder/toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
invokevirtual com/bumptech/glide/GifRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 3
.end method

.method public transient transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
.signature "([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
aload 0
aload 0
aload 1
invokespecial com/bumptech/glide/GifRequestBuilder/toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
invokevirtual com/bumptech/glide/GifRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
areturn
.limit locals 2
.limit stack 3
.end method
