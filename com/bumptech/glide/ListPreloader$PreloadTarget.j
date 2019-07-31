.bytecode 50.0
.class synchronized com/bumptech/glide/ListPreloader$PreloadTarget
.super com/bumptech/glide/request/target/BaseTarget
.signature "Lcom/bumptech/glide/request/target/BaseTarget<Ljava/lang/Object;>;"
.inner class private static PreloadTarget inner com/bumptech/glide/ListPreloader$PreloadTarget outer com/bumptech/glide/ListPreloader

.field private 'photoHeight' I

.field private 'photoWidth' I

.method private <init>()V
aload 0
invokespecial com/bumptech/glide/request/target/BaseTarget/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/bumptech/glide/ListPreloader$1;)V
aload 0
invokespecial com/bumptech/glide/ListPreloader$PreloadTarget/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method static synthetic access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
aload 0
iload 1
putfield com/bumptech/glide/ListPreloader$PreloadTarget/photoWidth I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
aload 0
iload 1
putfield com/bumptech/glide/ListPreloader$PreloadTarget/photoHeight I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 1
aload 0
getfield com/bumptech/glide/ListPreloader$PreloadTarget/photoWidth I
aload 0
getfield com/bumptech/glide/ListPreloader$PreloadTarget/photoHeight I
invokeinterface com/bumptech/glide/request/target/SizeReadyCallback/onSizeReady(II)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation<-Ljava/lang/Object;>;)V"
return
.limit locals 3
.limit stack 0
.end method
