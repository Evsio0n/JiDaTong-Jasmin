.bytecode 50.0
.class public final synchronized com/bumptech/glide/request/GenericRequest
.super java/lang/Object
.implements com/bumptech/glide/request/Request
.implements com/bumptech/glide/request/target/SizeReadyCallback
.implements com/bumptech/glide/request/ResourceCallback
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/target/SizeReadyCallback;Lcom/bumptech/glide/request/ResourceCallback;"
.inner class private static final enum Status inner com/bumptech/glide/request/GenericRequest$Status outer com/bumptech/glide/request/GenericRequest

.field private static final 'REQUEST_POOL' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/request/GenericRequest<****>;>;"

.field private static final 'TAG' Ljava/lang/String; = "GenericRequest"

.field private static final 'TO_MEGABYTE' D = 9.5367431640625E-7D


.field private 'animationFactory' Lcom/bumptech/glide/request/animation/GlideAnimationFactory; signature "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"

.field private 'context' Landroid/content/Context;

.field private 'diskCacheStrategy' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private 'engine' Lcom/bumptech/glide/load/engine/Engine;

.field private 'errorDrawable' Landroid/graphics/drawable/Drawable;

.field private 'errorResourceId' I

.field private 'fallbackDrawable' Landroid/graphics/drawable/Drawable;

.field private 'fallbackResourceId' I

.field private 'isMemoryCacheable' Z

.field private 'loadProvider' Lcom/bumptech/glide/provider/LoadProvider; signature "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"

.field private 'loadStatus' Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private 'loadedFromMemoryCache' Z

.field private 'model' Ljava/lang/Object; signature "TA;"

.field private 'overrideHeight' I

.field private 'overrideWidth' I

.field private 'placeholderDrawable' Landroid/graphics/drawable/Drawable;

.field private 'placeholderResourceId' I

.field private 'priority' Lcom/bumptech/glide/Priority;

.field private 'requestCoordinator' Lcom/bumptech/glide/request/RequestCoordinator;

.field private 'requestListener' Lcom/bumptech/glide/request/RequestListener; signature "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"

.field private 'resource' Lcom/bumptech/glide/load/engine/Resource; signature "Lcom/bumptech/glide/load/engine/Resource<*>;"

.field private 'signature' Lcom/bumptech/glide/load/Key;

.field private 'sizeMultiplier' F

.field private 'startTime' J

.field private 'status' Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final 'tag' Ljava/lang/String;

.field private 'target' Lcom/bumptech/glide/request/target/Target; signature "Lcom/bumptech/glide/request/target/Target<TR;>;"

.field private 'transcodeClass' Ljava/lang/Class; signature "Ljava/lang/Class<TR;>;"

.field private 'transformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<TZ;>;"

.method static <clinit>()V
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putstatic com/bumptech/glide/request/GenericRequest/REQUEST_POOL Ljava/util/Queue;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 0
invokevirtual java/lang/Object/hashCode()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
putfield com/bumptech/glide/request/GenericRequest/tag Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private canNotifyStatusChanged()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z 1
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private canSetResource()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/canSetImage(Lcom/bumptech/glide/request/Request;)Z 1
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
aload 1
ifnonnull L0
new java/lang/StringBuilder
dup
aload 0
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 0
aload 0
ldc " must not be null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L1
aload 0
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
new java/lang/NullPointerException
dup
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 3
.limit stack 3
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/GenericRequest/errorDrawable Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/errorResourceId I
ifle L0
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield com/bumptech/glide/request/GenericRequest/errorResourceId I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/bumptech/glide/request/GenericRequest/errorDrawable Landroid/graphics/drawable/Drawable;
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/errorDrawable Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/GenericRequest/fallbackDrawable Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/fallbackResourceId I
ifle L0
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield com/bumptech/glide/request/GenericRequest/fallbackResourceId I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/bumptech/glide/request/GenericRequest/fallbackDrawable Landroid/graphics/drawable/Drawable;
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/fallbackDrawable Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/GenericRequest/placeholderDrawable Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/placeholderResourceId I
ifle L0
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield com/bumptech/glide/request/GenericRequest/placeholderResourceId I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/bumptech/glide/request/GenericRequest/placeholderDrawable Landroid/graphics/drawable/Drawable;
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/placeholderDrawable Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 3
.end method

.method private init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
.signature "(Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;TA;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target<TR;>;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener<-TA;TR;>;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation<TZ;>;Ljava/lang/Class<TR;>;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V"
aload 0
aload 1
putfield com/bumptech/glide/request/GenericRequest/loadProvider Lcom/bumptech/glide/provider/LoadProvider;
aload 0
aload 2
putfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
aload 0
aload 3
putfield com/bumptech/glide/request/GenericRequest/signature Lcom/bumptech/glide/load/Key;
aload 0
aload 12
putfield com/bumptech/glide/request/GenericRequest/fallbackDrawable Landroid/graphics/drawable/Drawable;
aload 0
iload 13
putfield com/bumptech/glide/request/GenericRequest/fallbackResourceId I
aload 0
aload 4
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/request/GenericRequest/context Landroid/content/Context;
aload 0
aload 5
putfield com/bumptech/glide/request/GenericRequest/priority Lcom/bumptech/glide/Priority;
aload 0
aload 6
putfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
fload 7
putfield com/bumptech/glide/request/GenericRequest/sizeMultiplier F
aload 0
aload 8
putfield com/bumptech/glide/request/GenericRequest/placeholderDrawable Landroid/graphics/drawable/Drawable;
aload 0
iload 9
putfield com/bumptech/glide/request/GenericRequest/placeholderResourceId I
aload 0
aload 10
putfield com/bumptech/glide/request/GenericRequest/errorDrawable Landroid/graphics/drawable/Drawable;
aload 0
iload 11
putfield com/bumptech/glide/request/GenericRequest/errorResourceId I
aload 0
aload 14
putfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 0
aload 15
putfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
aload 16
putfield com/bumptech/glide/request/GenericRequest/engine Lcom/bumptech/glide/load/engine/Engine;
aload 0
aload 17
putfield com/bumptech/glide/request/GenericRequest/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 18
putfield com/bumptech/glide/request/GenericRequest/transcodeClass Ljava/lang/Class;
aload 0
iload 19
putfield com/bumptech/glide/request/GenericRequest/isMemoryCacheable Z
aload 0
aload 20
putfield com/bumptech/glide/request/GenericRequest/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
iload 21
putfield com/bumptech/glide/request/GenericRequest/overrideWidth I
aload 0
iload 22
putfield com/bumptech/glide/request/GenericRequest/overrideHeight I
aload 0
aload 23
putfield com/bumptech/glide/request/GenericRequest/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/PENDING Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 2
ifnull L0
ldc "ModelLoader"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader; 0
ldc "try .using(ModelLoader)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
ldc "Transcoder"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; 0
ldc "try .as*(Class).transcode(ResourceTranscoder)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
ldc "Transformation"
aload 17
ldc "try .transform(UnitTransformation.get())"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
aload 23
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource()Z
ifeq L1
ldc "SourceEncoder"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
ldc "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
L2:
aload 23
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource()Z
ifne L3
aload 23
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult()Z
ifeq L4
L3:
ldc "CacheDecoder"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
ldc "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
L4:
aload 23
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult()Z
ifeq L0
ldc "Encoder"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
ldc "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
L0:
return
L1:
ldc "SourceDecoder"
aload 1
invokeinterface com/bumptech/glide/provider/LoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
ldc "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"
invokestatic com/bumptech/glide/request/GenericRequest/check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
goto L2
.limit locals 24
.limit stack 3
.end method

.method private isFirstReadyResource()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
invokeinterface com/bumptech/glide/request/RequestCoordinator/isAnyResourceSet()Z 0
ifne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private logV(Ljava/lang/String;)V
ldc "GenericRequest"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " this: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/tag Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method private notifyLoadSuccess()V
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/onRequestSuccess(Lcom/bumptech/glide/request/Request;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;TA;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target<TR;>;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener<-TA;TR;>;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation<TZ;>;Ljava/lang/Class<TR;>;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
getstatic com/bumptech/glide/request/GenericRequest/REQUEST_POOL Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/GenericRequest
astore 24
aload 24
astore 23
aload 24
ifnonnull L0
new com/bumptech/glide/request/GenericRequest
dup
invokespecial com/bumptech/glide/request/GenericRequest/<init>()V
astore 23
L0:
aload 23
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
fload 6
aload 7
iload 8
aload 9
iload 10
aload 11
iload 12
aload 13
aload 14
aload 15
aload 16
aload 17
iload 18
aload 19
iload 20
iload 21
aload 22
invokespecial com/bumptech/glide/request/GenericRequest/init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
aload 23
areturn
.limit locals 25
.limit stack 24
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;TR;)V"
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/isFirstReadyResource()Z
istore 3
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/COMPLETE Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 0
aload 1
putfield com/bumptech/glide/request/GenericRequest/resource Lcom/bumptech/glide/load/engine/Resource;
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 2
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
iload 3
invokeinterface com/bumptech/glide/request/RequestListener/onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z 5
ifne L1
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
iload 3
invokeinterface com/bumptech/glide/request/animation/GlideAnimationFactory/build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation; 2
astore 4
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 2
aload 4
invokeinterface com/bumptech/glide/request/target/Target/onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V 2
L1:
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/notifyLoadSuccess()V
ldc "GenericRequest"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Resource ready in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/startTime J
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc " size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/getSize()I 0
i2d
ldc2_w 9.5367431640625E-7D
dmul
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc " fromCache: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/request/GenericRequest/logV(Ljava/lang/String;)V
L2:
return
.limit locals 5
.limit stack 6
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
aload 0
getfield com/bumptech/glide/request/GenericRequest/engine Lcom/bumptech/glide/load/engine/Engine;
aload 1
invokevirtual com/bumptech/glide/load/engine/Engine/release(Lcom/bumptech/glide/load/engine/Resource;)V
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/resource Lcom/bumptech/glide/load/engine/Resource;
return
.limit locals 2
.limit stack 2
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/canNotifyStatusChanged()Z
ifne L0
return
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
ifnonnull L1
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/getFallbackDrawable()Landroid/graphics/drawable/Drawable;
astore 3
L2:
aload 3
astore 2
aload 3
ifnonnull L3
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/getErrorDrawable()Landroid/graphics/drawable/Drawable;
astore 2
L3:
aload 2
astore 3
aload 2
ifnonnull L4
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
astore 3
L4:
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 1
aload 3
invokeinterface com/bumptech/glide/request/target/Target/onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V 2
return
L1:
aconst_null
astore 3
goto L2
.limit locals 4
.limit stack 3
.end method

.method public begin()V
aload 0
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
putfield com/bumptech/glide/request/GenericRequest/startTime J
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
ifnonnull L0
aload 0
aconst_null
invokevirtual com/bumptech/glide/request/GenericRequest/onException(Ljava/lang/Exception;)V
L1:
return
L0:
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/WAITING_FOR_SIZE Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 0
getfield com/bumptech/glide/request/GenericRequest/overrideWidth I
aload 0
getfield com/bumptech/glide/request/GenericRequest/overrideHeight I
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifeq L2
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/overrideWidth I
aload 0
getfield com/bumptech/glide/request/GenericRequest/overrideHeight I
invokevirtual com/bumptech/glide/request/GenericRequest/onSizeReady(II)V
L3:
aload 0
invokevirtual com/bumptech/glide/request/GenericRequest/isComplete()Z
ifne L4
aload 0
invokevirtual com/bumptech/glide/request/GenericRequest/isFailed()Z
ifne L4
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/canNotifyStatusChanged()Z
ifeq L4
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
invokeinterface com/bumptech/glide/request/target/Target/onLoadStarted(Landroid/graphics/drawable/Drawable;)V 1
L4:
ldc "GenericRequest"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "finished run method in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/startTime J
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/request/GenericRequest/logV(Ljava/lang/String;)V
return
L2:
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
invokeinterface com/bumptech/glide/request/target/Target/getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V 1
goto L3
.limit locals 1
.limit stack 4
.end method

.method cancel()V
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/CANCELLED Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadStatus Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
ifnull L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadStatus Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
invokevirtual com/bumptech/glide/load/engine/Engine$LoadStatus/cancel()V
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/loadStatus Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public clear()V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/CLEARED Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L0
return
L0:
aload 0
invokevirtual com/bumptech/glide/request/GenericRequest/cancel()V
aload 0
getfield com/bumptech/glide/request/GenericRequest/resource Lcom/bumptech/glide/load/engine/Resource;
ifnull L1
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/resource Lcom/bumptech/glide/load/engine/Resource;
invokespecial com/bumptech/glide/request/GenericRequest/releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
L1:
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/canNotifyStatusChanged()Z
ifeq L2
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
invokeinterface com/bumptech/glide/request/target/Target/onLoadCleared(Landroid/graphics/drawable/Drawable;)V 1
L2:
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/CLEARED Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
return
.limit locals 1
.limit stack 2
.end method

.method public isCancelled()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/CANCELLED Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpeq L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/CLEARED Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isComplete()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/COMPLETE Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isFailed()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/FAILED Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isPaused()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/PAUSED Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isResourceSet()Z
aload 0
invokevirtual com/bumptech/glide/request/GenericRequest/isComplete()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRunning()Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/RUNNING Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpeq L0
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/WAITING_FOR_SIZE Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public onException(Ljava/lang/Exception;)V
ldc "GenericRequest"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "GenericRequest"
ldc "load failed"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/FAILED Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
ifnull L1
aload 0
getfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 1
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/isFirstReadyResource()Z
invokeinterface com/bumptech/glide/request/RequestListener/onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z 4
ifne L2
L1:
aload 0
aload 1
invokespecial com/bumptech/glide/request/GenericRequest/setErrorPlaceholder(Ljava/lang/Exception;)V
L2:
return
.limit locals 2
.limit stack 5
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;)V"
aload 1
ifnonnull L0
aload 0
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected to receive a Resource<R> with an object of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/transcodeClass Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " inside, but instead got null."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/request/GenericRequest/onException(Ljava/lang/Exception;)V
return
L0:
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
astore 3
aload 3
ifnull L1
aload 0
getfield com/bumptech/glide/request/GenericRequest/transcodeClass Ljava/lang/Class;
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L2
L1:
aload 0
aload 1
invokespecial com/bumptech/glide/request/GenericRequest/releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected to receive an object of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/transcodeClass Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but instead got "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 4
aload 3
ifnull L3
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 2
L4:
aload 4
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " inside Resource{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "}."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 2
aload 3
ifnull L5
ldc ""
astore 1
L6:
aload 0
new java/lang/Exception
dup
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/request/GenericRequest/onException(Ljava/lang/Exception;)V
return
L3:
ldc ""
astore 2
goto L4
L5:
ldc " To indicate failure return a null Resource object, rather than a Resource object containing null data."
astore 1
goto L6
L2:
aload 0
invokespecial com/bumptech/glide/request/GenericRequest/canSetResource()Z
ifne L7
aload 0
aload 1
invokespecial com/bumptech/glide/request/GenericRequest/releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/COMPLETE Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
return
L7:
aload 0
aload 1
aload 3
invokespecial com/bumptech/glide/request/GenericRequest/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 5
.end method

.method public onSizeReady(II)V
ldc "GenericRequest"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got onSizeReady in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/startTime J
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/request/GenericRequest/logV(Ljava/lang/String;)V
L0:
aload 0
getfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/WAITING_FOR_SIZE Lcom/bumptech/glide/request/GenericRequest$Status;
if_acmpeq L1
L2:
return
L1:
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/RUNNING Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
aload 0
getfield com/bumptech/glide/request/GenericRequest/sizeMultiplier F
iload 1
i2f
fmul
invokestatic java/lang/Math/round(F)I
istore 1
aload 0
getfield com/bumptech/glide/request/GenericRequest/sizeMultiplier F
iload 2
i2f
fmul
invokestatic java/lang/Math/round(F)I
istore 2
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadProvider Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader; 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
iload 1
iload 2
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
astore 4
aload 4
ifnonnull L3
aload 0
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to load model: '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/request/GenericRequest/onException(Ljava/lang/Exception;)V
return
L3:
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadProvider Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; 0
astore 5
ldc "GenericRequest"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "finished setup for calling load in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/startTime J
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/request/GenericRequest/logV(Ljava/lang/String;)V
L4:
aload 0
iconst_1
putfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
aload 0
aload 0
getfield com/bumptech/glide/request/GenericRequest/engine Lcom/bumptech/glide/load/engine/Engine;
aload 0
getfield com/bumptech/glide/request/GenericRequest/signature Lcom/bumptech/glide/load/Key;
iload 1
iload 2
aload 4
aload 0
getfield com/bumptech/glide/request/GenericRequest/loadProvider Lcom/bumptech/glide/provider/LoadProvider;
aload 0
getfield com/bumptech/glide/request/GenericRequest/transformation Lcom/bumptech/glide/load/Transformation;
aload 5
aload 0
getfield com/bumptech/glide/request/GenericRequest/priority Lcom/bumptech/glide/Priority;
aload 0
getfield com/bumptech/glide/request/GenericRequest/isMemoryCacheable Z
aload 0
getfield com/bumptech/glide/request/GenericRequest/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
invokevirtual com/bumptech/glide/load/engine/Engine/load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
putfield com/bumptech/glide/request/GenericRequest/loadStatus Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
aload 0
getfield com/bumptech/glide/request/GenericRequest/resource Lcom/bumptech/glide/load/engine/Resource;
ifnull L5
iconst_1
istore 3
L6:
aload 0
iload 3
putfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
ldc "GenericRequest"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "finished onSizeReady in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/GenericRequest/startTime J
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/request/GenericRequest/logV(Ljava/lang/String;)V
return
L5:
iconst_0
istore 3
goto L6
.limit locals 6
.limit stack 13
.end method

.method public pause()V
aload 0
invokevirtual com/bumptech/glide/request/GenericRequest/clear()V
aload 0
getstatic com/bumptech/glide/request/GenericRequest$Status/PAUSED Lcom/bumptech/glide/request/GenericRequest$Status;
putfield com/bumptech/glide/request/GenericRequest/status Lcom/bumptech/glide/request/GenericRequest$Status;
return
.limit locals 1
.limit stack 2
.end method

.method public recycle()V
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/loadProvider Lcom/bumptech/glide/provider/LoadProvider;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/model Ljava/lang/Object;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/context Landroid/content/Context;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/target Lcom/bumptech/glide/request/target/Target;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/placeholderDrawable Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/errorDrawable Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/fallbackDrawable Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/requestListener Lcom/bumptech/glide/request/RequestListener;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/requestCoordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/animationFactory Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
aload 0
iconst_0
putfield com/bumptech/glide/request/GenericRequest/loadedFromMemoryCache Z
aload 0
aconst_null
putfield com/bumptech/glide/request/GenericRequest/loadStatus Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
getstatic com/bumptech/glide/request/GenericRequest/REQUEST_POOL Ljava/util/Queue;
aload 0
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 2
.end method
