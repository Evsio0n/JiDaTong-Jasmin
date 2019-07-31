.bytecode 50.0
.class public synchronized com/bumptech/glide/DrawableRequestBuilder
.super com/bumptech/glide/GenericRequestBuilder
.implements com/bumptech/glide/BitmapOptions
.implements com/bumptech/glide/DrawableOptions
.signature "<ModelType:Ljava/lang/Object;>Lcom/bumptech/glide/GenericRequestBuilder<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;Lcom/bumptech/glide/BitmapOptions;Lcom/bumptech/glide/DrawableOptions;"

.method <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
.signature "(Landroid/content/Context;Ljava/lang/Class<TModelType;>;Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V"
aload 0
aload 1
aload 2
aload 3
ldc com/bumptech/glide/load/resource/drawable/GlideDrawable
aload 4
aload 5
aload 6
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
pop
return
.limit locals 7
.limit stack 8
.end method

.method public animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method applyCenterCrop()V
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method applyFitCenter()V
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
pop
return
.limit locals 1
.limit stack 1
.end method

.method public transient bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 1
arraylength
anewarray com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation
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
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation
dup
aload 0
getfield com/bumptech/glide/DrawableRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 1
iload 2
aaload
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
aastore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
aload 3
invokevirtual com/bumptech/glide/DrawableRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 4
.limit stack 7
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/Transformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/DrawableRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
aastore
invokevirtual com/bumptech/glide/DrawableRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/clone()Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/DrawableRequestBuilder
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/clone()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/clone()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

.method public crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

.method public crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(II)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory
dup
aload 0
getfield com/bumptech/glide/DrawableRequestBuilder/context Landroid/content/Context;
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

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

.method public volatile synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
iload 1
iload 2
invokevirtual com/bumptech/glide/DrawableRequestBuilder/crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
iload 2
invokevirtual com/bumptech/glide/DrawableRequestBuilder/crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/error(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/error(I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "()Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/Transformation
dup
iconst_0
aload 0
getfield com/bumptech/glide/DrawableRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
aastore
invokevirtual com/bumptech/glide/DrawableRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public volatile synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokevirtual com/bumptech/glide/DrawableRequestBuilder/fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
.signature "(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 2
.limit stack 2
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/request/RequestListener<-TModelType;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(TModelType;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(II)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 3
.limit stack 3
.end method

.method public placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(I)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
iload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(F)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Z)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(F)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
fload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/DrawableRequestBuilder<*>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<***Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
invokevirtual com/bumptech/glide/DrawableRequestBuilder/transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
.signature "([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method
