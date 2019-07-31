.bytecode 50.0
.class public final synchronized com/bumptech/glide/request/target/PreloadTarget
.super com/bumptech/glide/request/target/SimpleTarget
.signature "<Z:Ljava/lang/Object;>Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"

.method private <init>(II)V
aload 0
iload 1
iload 2
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public static obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;
.signature "<Z:Ljava/lang/Object;>(II)Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
new com/bumptech/glide/request/target/PreloadTarget
dup
iload 0
iload 1
invokespecial com/bumptech/glide/request/target/PreloadTarget/<init>(II)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(TZ;Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;)V"
aload 0
invokestatic com/bumptech/glide/Glide/clear(Lcom/bumptech/glide/request/target/Target;)V
return
.limit locals 3
.limit stack 1
.end method
