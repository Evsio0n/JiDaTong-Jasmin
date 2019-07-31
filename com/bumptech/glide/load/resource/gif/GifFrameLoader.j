.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameLoader
.super java/lang/Object
.inner class static synthetic inner com/bumptech/glide/load/resource/gif/GifFrameLoader$1
.inner class static DelayTarget inner com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget outer com/bumptech/glide/load/resource/gif/GifFrameLoader
.inner class public static abstract interface FrameCallback inner com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback outer com/bumptech/glide/load/resource/gif/GifFrameLoader
.inner class private FrameLoaderCallback inner com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback outer com/bumptech/glide/load/resource/gif/GifFrameLoader
.inner class static FrameSignature inner com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature outer com/bumptech/glide/load/resource/gif/GifFrameLoader

.field private final 'callback' Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

.field private 'current' Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private final 'gifDecoder' Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final 'handler' Landroid/os/Handler;

.field private 'isCleared' Z

.field private 'isLoadPending' Z

.field private 'isRunning' Z

.field private 'requestBuilder' Lcom/bumptech/glide/GenericRequestBuilder; signature "Lcom/bumptech/glide/GenericRequestBuilder<Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V
aload 0
aload 2
aload 3
aconst_null
aload 1
aload 3
iload 4
iload 5
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokestatic com/bumptech/glide/load/resource/gif/GifFrameLoader/getRequestBuilder(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader/<init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V
return
.limit locals 6
.limit stack 9
.end method

.method <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V
.signature "(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder<Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isRunning Z
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isLoadPending Z
aload 3
astore 5
aload 3
ifnonnull L0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
new com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback
dup
aload 0
aconst_null
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback/<init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
invokespecial android/os/Handler/<init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
astore 5
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/callback Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/gifDecoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
aload 5
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/handler Landroid/os/Handler;
aload 0
aload 4
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/requestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
return
.limit locals 6
.limit stack 7
.end method

.method private static getRequestBuilder(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder<Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
new com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder
dup
aload 4
invokespecial com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
astore 4
new com/bumptech/glide/load/resource/gif/GifFrameModelLoader
dup
invokespecial com/bumptech/glide/load/resource/gif/GifFrameModelLoader/<init>()V
astore 5
invokestatic com/bumptech/glide/load/resource/NullEncoder/get()Lcom/bumptech/glide/load/Encoder;
astore 6
aload 0
invokestatic com/bumptech/glide/Glide/with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
aload 5
ldc com/bumptech/glide/gifdecoder/GifDecoder
invokevirtual com/bumptech/glide/RequestManager/using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
aload 1
invokevirtual com/bumptech/glide/RequestManager$GenericModelRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
ldc android/graphics/Bitmap
invokevirtual com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;
aload 6
invokevirtual com/bumptech/glide/GenericTranscodeRequest/sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 4
invokevirtual com/bumptech/glide/GenericRequestBuilder/decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
iconst_1
invokevirtual com/bumptech/glide/GenericRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/NONE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
iload 2
iload 3
invokevirtual com/bumptech/glide/GenericRequestBuilder/override(II)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 7
.limit stack 3
.end method

.method private loadNextFrame()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isRunning Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isLoadPending Z
ifeq L1
L0:
return
L1:
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isLoadPending Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/gifDecoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/advance()V
invokestatic android/os/SystemClock/uptimeMillis()J
lstore 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/gifDecoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getNextDelay()I
i2l
lstore 3
new com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget
dup
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/handler Landroid/os/Handler;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/gifDecoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getCurrentFrameIndex()I
lload 1
lload 3
ladd
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/<init>(Landroid/os/Handler;IJ)V
astore 5
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/requestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
new com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature
dup
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/<init>()V
invokevirtual com/bumptech/glide/GenericRequestBuilder/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
aload 5
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
pop
return
.limit locals 6
.limit stack 8
.end method

.method public clear()V
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/stop()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
invokestatic com/bumptech/glide/Glide/clear(Lcom/bumptech/glide/request/target/Target;)V
aload 0
aconst_null
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
L0:
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isCleared Z
return
.limit locals 1
.limit stack 2
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/getResource()Landroid/graphics/Bitmap;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isCleared Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/handler Landroid/os/Handler;
iconst_2
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
return
L0:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
astore 2
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/current Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/callback Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
aload 1
invokestatic com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
invokeinterface com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback/onFrameReady(I)V 1
aload 2
ifnull L1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/handler Landroid/os/Handler;
iconst_2
aload 2
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
L1:
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isLoadPending Z
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader/loadNextFrame()V
return
.limit locals 3
.limit stack 3
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V
.signature "(Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)V"
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Transformation must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/requestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
iconst_1
anewarray com/bumptech/glide/load/Transformation
dup
iconst_0
aload 1
aastore
invokevirtual com/bumptech/glide/GenericRequestBuilder/transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/requestBuilder Lcom/bumptech/glide/GenericRequestBuilder;
return
.limit locals 2
.limit stack 6
.end method

.method public start()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isRunning Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isRunning Z
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isCleared Z
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader/loadNextFrame()V
return
.limit locals 1
.limit stack 2
.end method

.method public stop()V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader/isRunning Z
return
.limit locals 1
.limit stack 2
.end method
