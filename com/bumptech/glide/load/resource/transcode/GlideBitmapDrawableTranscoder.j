.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'resources' Landroid/content/res/Resources;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/resources Landroid/content/res/Resources;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 3
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
ldc "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;"
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource
dup
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable
dup
aload 0
getfield com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/resources Landroid/content/res/Resources;
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource/<init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
areturn
.limit locals 2
.limit stack 6
.end method
