.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback
.super java/lang/Object
.implements android/os/Handler$Callback
.inner class private FrameLoaderCallback inner com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback outer com/bumptech/glide/load/resource/gif/GifFrameLoader

.field public static final 'MSG_CLEAR' I = 2


.field public static final 'MSG_DELAY' I = 1


.field final synthetic 'this$0' Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.method private <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback/this$0 Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback/<init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)Z
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget
astore 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback/this$0 Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
iconst_1
ireturn
L0:
aload 1
getfield android/os/Message/what I
iconst_2
if_icmpne L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget
invokestatic com/bumptech/glide/Glide/clear(Lcom/bumptech/glide/request/target/Target;)V
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
