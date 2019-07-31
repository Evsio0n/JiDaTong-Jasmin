.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget
.super com/bumptech/glide/request/target/SimpleTarget
.signature "Lcom/bumptech/glide/request/target/SimpleTarget<Landroid/graphics/Bitmap;>;"
.inner class static DelayTarget inner com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget outer com/bumptech/glide/load/resource/gif/GifFrameLoader

.field private final 'handler' Landroid/os/Handler;

.field private final 'index' I

.field private 'resource' Landroid/graphics/Bitmap;

.field private final 'targetTime' J

.method public <init>(Landroid/os/Handler;IJ)V
aload 0
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/handler Landroid/os/Handler;
aload 0
iload 2
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/index I
aload 0
lload 3
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/targetTime J
return
.limit locals 5
.limit stack 3
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/index I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getResource()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/resource Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/resource Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/handler Landroid/os/Handler;
iconst_1
aload 0
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
astore 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/handler Landroid/os/Handler;
aload 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/targetTime J
invokevirtual android/os/Handler/sendMessageAtTime(Landroid/os/Message;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
aload 0
aload 1
checkcast android/graphics/Bitmap
aload 2
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget/onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
return
.limit locals 3
.limit stack 3
.end method
