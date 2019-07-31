.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"

.field private final 'glideBitmapDrawableTranscoder' Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

.method public <init>(Landroid/content/Context;)V
aload 0
new com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder
dup
aload 1
invokespecial com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/<init>(Landroid/content/Context;)V
invokespecial com/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder/<init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder/glideBitmapDrawableTranscoder Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
return
.limit locals 2
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder/glideBitmapDrawableTranscoder Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
invokevirtual com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/getId()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
aload 0
getfield com/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder/glideBitmapDrawableTranscoder Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
aload 1
invokevirtual com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 2
.limit stack 2
.end method
