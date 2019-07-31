.bytecode 50.0
.class public synchronized com/bumptech/glide/GenericRequestBuilder
.super java/lang/Object
.implements java/lang/Cloneable
.signature "<ModelType:Ljava/lang/Object;DataType:Ljava/lang/Object;ResourceType:Ljava/lang/Object;TranscodeType:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;"
.inner class inner com/bumptech/glide/GenericRequestBuilder$1
.inner class static synthetic inner com/bumptech/glide/GenericRequestBuilder$2

.field private 'animationFactory' Lcom/bumptech/glide/request/animation/GlideAnimationFactory; signature "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"

.field protected final 'context' Landroid/content/Context;

.field private 'diskCacheStrategy' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private 'errorId' I

.field private 'errorPlaceholder' Landroid/graphics/drawable/Drawable;

.field private 'fallbackDrawable' Landroid/graphics/drawable/Drawable;

.field private 'fallbackResource' I

.field protected final 'glide' Lcom/bumptech/glide/Glide;

.field private 'isCacheable' Z

.field private 'isModelSet' Z

.field private 'isThumbnailBuilt' Z

.field private 'isTransformationSet' Z

.field protected final 'lifecycle' Lcom/bumptech/glide/manager/Lifecycle;

.field private 'loadProvider' Lcom/bumptech/glide/provider/ChildLoadProvider; signature "Lcom/bumptech/glide/provider/ChildLoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"

.field private 'model' Ljava/lang/Object; signature "TModelType;"

.field protected final 'modelClass' Ljava/lang/Class; signature "Ljava/lang/Class<TModelType;>;"

.field private 'overrideHeight' I

.field private 'overrideWidth' I

.field private 'placeholderDrawable' Landroid/graphics/drawable/Drawable;

.field private 'placeholderId' I

.field private 'priority' Lcom/bumptech/glide/Priority;

.field private 'requestListener' Lcom/bumptech/glide/request/RequestListener; signature "Lcom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;"

.field protected final 'requestTracker' Lcom/bumptech/glide/manager/RequestTracker;

.field private 'signature' Lcom/bumptech/glide/load/Key;

.field private 'sizeMultiplier' Ljava/lang/Float;

.field private 'thumbSizeMultiplier' Ljava/lang/Float;

.field private 'thumbnailRequestBuilder' Lcom/bumptech/glide/GenericRequestBuilder; signature "Lcom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;"

.field protected final 'transcodeClass' Ljava/lang/Class; signature "Ljava/lang/Class<TTranscodeType;>;"

.field private 'transformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<TResourceType;>;"

.method <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
.signature "(Landroid/content/Context;Ljava/lang/Class<TModelType;>;Lcom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;Ljava/lang/Class<TTranscodeType;>;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V"
aconst_null
astore 8
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/bumptech/glide/signature/EmptySignature/obtain()Lcom/bumptech/glide/signature/EmptySignature;
putfield com/bumptech/glide/GenericRequestBuilder/signature Lcom/bumptech/glide/load/Key;
aload 0
fconst_1
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
putfield com/bumptech/glide/GenericRequestBuilder/sizeMultiplier Ljava/lang/Float;
aload 0
aconst_null
putfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
aload 0
iconst_1
putfield com/bumptech/glide/GenericRequestBuilder/isCacheable Z
aload 0
invokestatic com/bumptech/glide/request/animation/NoAnimation/getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
putfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
iconst_m1
putfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
aload 0
iconst_m1
putfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/RESULT Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
putfield com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
invokestatic com/bumptech/glide/load/resource/UnitTransformation/get()Lcom/bumptech/glide/load/resource/UnitTransformation;
putfield com/bumptech/glide/GenericRequestBuilder/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/GenericRequestBuilder/modelClass Ljava/lang/Class;
aload 0
aload 4
putfield com/bumptech/glide/GenericRequestBuilder/transcodeClass Ljava/lang/Class;
aload 0
aload 5
putfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 0
aload 6
putfield com/bumptech/glide/GenericRequestBuilder/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 0
aload 7
putfield com/bumptech/glide/GenericRequestBuilder/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 8
astore 4
aload 3
ifnull L0
new com/bumptech/glide/provider/ChildLoadProvider
dup
aload 3
invokespecial com/bumptech/glide/provider/ChildLoadProvider/<init>(Lcom/bumptech/glide/provider/LoadProvider;)V
astore 4
L0:
aload 0
aload 4
putfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "Context can't be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
ifnull L2
aload 3
ifnonnull L2
new java/lang/NullPointerException
dup
ldc "LoadProvider must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L2:
return
.limit locals 9
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
.signature "(Lcom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;Ljava/lang/Class<TTranscodeType;>;Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;)V"
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/context Landroid/content/Context;
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/modelClass Ljava/lang/Class;
aload 1
aload 2
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/model Ljava/lang/Object;
putfield com/bumptech/glide/GenericRequestBuilder/model Ljava/lang/Object;
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/isModelSet Z
putfield com/bumptech/glide/GenericRequestBuilder/isModelSet Z
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/signature Lcom/bumptech/glide/load/Key;
putfield com/bumptech/glide/GenericRequestBuilder/signature Lcom/bumptech/glide/load/Key;
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
putfield com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
aload 3
getfield com/bumptech/glide/GenericRequestBuilder/isCacheable Z
putfield com/bumptech/glide/GenericRequestBuilder/isCacheable Z
return
.limit locals 4
.limit stack 8
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
.signature "(Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;)Lcom/bumptech/glide/request/Request;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
ifnonnull L0
aload 0
getstatic com/bumptech/glide/Priority/NORMAL Lcom/bumptech/glide/Priority;
putfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
L0:
aload 0
aload 1
aconst_null
invokespecial com/bumptech/glide/GenericRequestBuilder/buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
areturn
.limit locals 2
.limit stack 3
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
.signature "(Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/isThumbnailBuilt Z
ifeq L1
new java/lang/IllegalStateException
dup
ldc "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
getfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
invokestatic com/bumptech/glide/request/animation/NoAnimation/getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
putfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
L2:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
ifnonnull L3
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/getThumbnailPriority()Lcom/bumptech/glide/Priority;
putfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
L3:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifeq L4
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
getfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
getfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifne L4
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
invokevirtual com/bumptech/glide/GenericRequestBuilder/override(II)Lcom/bumptech/glide/GenericRequestBuilder;
pop
L4:
new com/bumptech/glide/request/ThumbnailRequestCoordinator
dup
aload 2
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/<init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
astore 2
aload 0
aload 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/sizeMultiplier Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
astore 3
aload 0
iconst_1
putfield com/bumptech/glide/GenericRequestBuilder/isThumbnailBuilt Z
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
aload 1
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
astore 1
aload 0
iconst_0
putfield com/bumptech/glide/GenericRequestBuilder/isThumbnailBuilt Z
aload 2
aload 3
aload 1
invokevirtual com/bumptech/glide/request/ThumbnailRequestCoordinator/setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
aload 2
areturn
L0:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbSizeMultiplier Ljava/lang/Float;
ifnull L5
new com/bumptech/glide/request/ThumbnailRequestCoordinator
dup
aload 2
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/<init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
astore 2
aload 2
aload 0
aload 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/sizeMultiplier Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
aload 0
aload 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/thumbSizeMultiplier Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/getThumbnailPriority()Lcom/bumptech/glide/Priority;
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
invokevirtual com/bumptech/glide/request/ThumbnailRequestCoordinator/setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
aload 2
areturn
L5:
aload 0
aload 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/sizeMultiplier Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
areturn
.limit locals 4
.limit stack 7
.end method

.method private getThumbnailPriority()Lcom/bumptech/glide/Priority;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
getstatic com/bumptech/glide/Priority/LOW Lcom/bumptech/glide/Priority;
if_acmpne L0
getstatic com/bumptech/glide/Priority/NORMAL Lcom/bumptech/glide/Priority;
areturn
L0:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
getstatic com/bumptech/glide/Priority/NORMAL Lcom/bumptech/glide/Priority;
if_acmpne L1
getstatic com/bumptech/glide/Priority/HIGH Lcom/bumptech/glide/Priority;
areturn
L1:
getstatic com/bumptech/glide/Priority/IMMEDIATE Lcom/bumptech/glide/Priority;
areturn
.limit locals 1
.limit stack 2
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
.signature "(Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/model Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/signature Lcom/bumptech/glide/load/Key;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/context Landroid/content/Context;
aload 3
aload 1
fload 2
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/placeholderDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/placeholderId I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/errorPlaceholder Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/errorId I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/fallbackDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/fallbackResource I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 4
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getEngine()Lcom/bumptech/glide/load/engine/Engine;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/transcodeClass Ljava/lang/Class;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/isCacheable Z
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokestatic com/bumptech/glide/request/GenericRequest/obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
areturn
.limit locals 5
.limit stack 23
.end method

.method public animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory
dup
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/context Landroid/content/Context;
iload 1
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Landroid/content/Context;I)V
invokevirtual com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 2
.limit stack 5
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory
dup
aload 1
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Landroid/view/animation/Animation;)V
invokevirtual com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 2
.limit stack 4
.end method

.method animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Animation factory must not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
new com/bumptech/glide/request/animation/ViewPropertyAnimationFactory
dup
aload 1
invokespecial com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/<init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
invokevirtual com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 2
.limit stack 4
.end method

.method applyCenterCrop()V
return
.limit locals 1
.limit stack 0
.end method

.method applyFitCenter()V
return
.limit locals 1
.limit stack 0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TResourceType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public clone()Lcom/bumptech/glide/GenericRequestBuilder;
.signature "()Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
.catch java/lang/CloneNotSupportedException from L0 to L1 using L2
.catch java/lang/CloneNotSupportedException from L1 to L3 using L2
L0:
aload 0
invokespecial java/lang/Object/clone()Ljava/lang/Object;
checkcast com/bumptech/glide/GenericRequestBuilder
astore 2
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L4
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
astore 1
L1:
aload 2
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
L3:
aload 2
areturn
L4:
aconst_null
astore 1
goto L1
L2:
astore 1
new java/lang/RuntimeException
dup
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/bumptech/glide/GenericRequestBuilder/clone()Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<TDataType;TResourceType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
.signature "()Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
invokestatic com/bumptech/glide/request/animation/NoAnimation/getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
invokevirtual com/bumptech/glide/GenericRequestBuilder/animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 1
.limit stack 2
.end method

.method public dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
.signature "()Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
iconst_1
anewarray com/bumptech/glide/load/Transformation
dup
iconst_0
invokestatic com/bumptech/glide/load/resource/UnitTransformation/get()Lcom/bumptech/glide/load/resource/UnitTransformation;
aastore
invokevirtual com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 1
.limit stack 5
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<TResourceType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(I)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
iload 1
putfield com/bumptech/glide/GenericRequestBuilder/errorId I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/errorPlaceholder Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
iload 1
putfield com/bumptech/glide/GenericRequestBuilder/fallbackResource I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/fallbackDrawable Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
.signature "(II)Lcom/bumptech/glide/request/FutureTarget<TTranscodeType;>;"
new com/bumptech/glide/request/RequestFutureTarget
dup
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getMainHandler()Landroid/os/Handler;
iload 1
iload 2
invokespecial com/bumptech/glide/request/RequestFutureTarget/<init>(Landroid/os/Handler;II)V
astore 3
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getMainHandler()Landroid/os/Handler;
new com/bumptech/glide/GenericRequestBuilder$1
dup
aload 0
aload 3
invokespecial com/bumptech/glide/GenericRequestBuilder$1/<init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
.signature "(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "You must pass in a non null View"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/isTransformationSet Z
ifne L1
aload 1
invokevirtual android/widget/ImageView/getScaleType()Landroid/widget/ImageView$ScaleType;
ifnull L1
getstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
aload 1
invokevirtual android/widget/ImageView/getScaleType()Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iaload
tableswitch 1
L2
L3
L3
L3
default : L1
L1:
aload 0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/transcodeClass Ljava/lang/Class;
invokevirtual com/bumptech/glide/Glide/buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
areturn
L2:
aload 0
invokevirtual com/bumptech/glide/GenericRequestBuilder/applyCenterCrop()V
goto L1
L3:
aload 0
invokevirtual com/bumptech/glide/GenericRequestBuilder/applyFitCenter()V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
.signature "<Y::Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;>(TY;)TY;"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "You must pass in a non null Target"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/isModelSet Z
ifne L1
new java/lang/IllegalArgumentException
dup
ldc "You must first set a model (try #load())"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
invokeinterface com/bumptech/glide/request/target/Target/getRequest()Lcom/bumptech/glide/request/Request; 0
astore 2
aload 2
ifnull L2
aload 2
invokeinterface com/bumptech/glide/request/Request/clear()V 0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 2
invokevirtual com/bumptech/glide/manager/RequestTracker/removeRequest(Lcom/bumptech/glide/request/Request;)V
aload 2
invokeinterface com/bumptech/glide/request/Request/recycle()V 0
L2:
aload 0
aload 1
invokespecial com/bumptech/glide/GenericRequestBuilder/buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
astore 2
aload 1
aload 2
invokeinterface com/bumptech/glide/request/target/Target/setRequest(Lcom/bumptech/glide/request/Request;)V 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 1
invokeinterface com/bumptech/glide/manager/Lifecycle/addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V 1
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 2
invokevirtual com/bumptech/glide/manager/RequestTracker/runRequest(Lcom/bumptech/glide/request/Request;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(TModelType;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/model Ljava/lang/Object;
aload 0
iconst_1
putfield com/bumptech/glide/GenericRequestBuilder/isModelSet Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public override(II)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(II)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
iload 1
iload 2
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "Width and height must be Target#SIZE_ORIGINAL or > 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/bumptech/glide/GenericRequestBuilder/overrideWidth I
aload 0
iload 2
putfield com/bumptech/glide/GenericRequestBuilder/overrideHeight I
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(I)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
iload 1
putfield com/bumptech/glide/GenericRequestBuilder/placeholderId I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/placeholderDrawable Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
.signature "()Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
aload 0
ldc_w -2147483648
ldc_w -2147483648
invokevirtual com/bumptech/glide/GenericRequestBuilder/preload(II)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 1
.limit stack 3
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
.signature "(II)Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
aload 0
iload 1
iload 2
invokestatic com/bumptech/glide/request/target/PreloadTarget/obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 3
.limit stack 3
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/priority Lcom/bumptech/glide/Priority;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Signature must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/signature Lcom/bumptech/glide/load/Key;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(F)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
fload 1
fconst_0
fcmpg
iflt L0
fload 1
fconst_1
fcmpl
ifle L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "sizeMultiplier must be between 0 and 1"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
fload 1
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
putfield com/bumptech/glide/GenericRequestBuilder/sizeMultiplier Ljava/lang/Float;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Z)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
iload 1
ifne L0
iconst_1
istore 1
L1:
aload 0
iload 1
putfield com/bumptech/glide/GenericRequestBuilder/isCacheable Z
aload 0
areturn
L0:
iconst_0
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/Encoder<TDataType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(F)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
fload 1
fconst_0
fcmpg
iflt L0
fload 1
fconst_1
fcmpl
ifle L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "sizeMultiplier must be between 0 and 1"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
fload 1
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
putfield com/bumptech/glide/GenericRequestBuilder/thumbSizeMultiplier Ljava/lang/Float;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
new java/lang/IllegalArgumentException
dup
ldc "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder/thumbnailRequestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
ifnull L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder/loadProvider Lcom/bumptech/glide/provider/ChildLoadProvider;
aload 1
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "([Lcom/bumptech/glide/load/Transformation<TResourceType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
iconst_1
putfield com/bumptech/glide/GenericRequestBuilder/isTransformationSet Z
aload 1
arraylength
iconst_1
if_icmpne L0
aload 0
aload 1
iconst_0
aaload
putfield com/bumptech/glide/GenericRequestBuilder/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
areturn
L0:
aload 0
new com/bumptech/glide/load/MultiTransformation
dup
aload 1
invokespecial com/bumptech/glide/load/MultiTransformation/<init>([Lcom/bumptech/glide/load/Transformation;)V
putfield com/bumptech/glide/GenericRequestBuilder/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
areturn
.limit locals 2
.limit stack 4
.end method
