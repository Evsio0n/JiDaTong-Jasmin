.bytecode 50.0
.class public synchronized com/bumptech/glide/gifdecoder/GifHeader
.super java/lang/Object

.field 'bgColor' I

.field 'bgIndex' I

.field 'currentFrame' Lcom/bumptech/glide/gifdecoder/GifFrame;

.field 'frameCount' I

.field 'frames' Ljava/util/List; signature "Ljava/util/List<Lcom/bumptech/glide/gifdecoder/GifFrame;>;"

.field 'gct' [I

.field 'gctFlag' Z

.field 'gctSize' I

.field 'height' I

.field 'loopCount' I

.field 'pixelAspect' I

.field 'status' I

.field 'width' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/bumptech/glide/gifdecoder/GifHeader/gct [I
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifHeader/status I
aload 0
iconst_0
putfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/bumptech/glide/gifdecoder/GifHeader/frames Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public getHeight()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeader/height I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNumFrames()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeader/frameCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeader/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/bumptech/glide/gifdecoder/GifHeader/width I
ireturn
.limit locals 1
.limit stack 1
.end method
