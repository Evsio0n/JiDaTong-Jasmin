.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/ImageViewTargetFactory
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
.signature "<Z:Ljava/lang/Object;>(Landroid/widget/ImageView;Ljava/lang/Class<TZ;>;)Lcom/bumptech/glide/request/target/Target<TZ;>;"
ldc com/bumptech/glide/load/resource/drawable/GlideDrawable
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
new com/bumptech/glide/request/target/GlideDrawableImageViewTarget
dup
aload 1
invokespecial com/bumptech/glide/request/target/GlideDrawableImageViewTarget/<init>(Landroid/widget/ImageView;)V
areturn
L0:
ldc android/graphics/Bitmap
aload 2
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
new com/bumptech/glide/request/target/BitmapImageViewTarget
dup
aload 1
invokespecial com/bumptech/glide/request/target/BitmapImageViewTarget/<init>(Landroid/widget/ImageView;)V
areturn
L1:
ldc android/graphics/drawable/Drawable
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
new com/bumptech/glide/request/target/DrawableImageViewTarget
dup
aload 1
invokespecial com/bumptech/glide/request/target/DrawableImageViewTarget/<init>(Landroid/widget/ImageView;)V
areturn
L2:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unhandled class: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", try .as*(Class).transcode(ResourceTranscoder)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method
