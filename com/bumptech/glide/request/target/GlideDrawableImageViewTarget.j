.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/GlideDrawableImageViewTarget
.super com/bumptech/glide/request/target/ImageViewTarget
.signature "Lcom/bumptech/glide/request/target/ImageViewTarget<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"

.field private static final 'SQUARE_RATIO_MARGIN' F = 0.05F


.field private 'maxLoopCount' I

.field private 'resource' Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

.method public <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
iconst_m1
invokespecial com/bumptech/glide/request/target/GlideDrawableImageViewTarget/<init>(Landroid/widget/ImageView;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/widget/ImageView;I)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ImageViewTarget/<init>(Landroid/widget/ImageView;)V
aload 0
iload 2
putfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/maxLoopCount I
return
.limit locals 3
.limit stack 2
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;)V"
aload 1
astore 5
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/isAnimated()Z
ifne L0
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
invokevirtual android/widget/ImageView/getWidth()I
i2f
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
invokevirtual android/widget/ImageView/getHeight()I
i2f
fdiv
fstore 3
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getIntrinsicWidth()I
i2f
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getIntrinsicHeight()I
i2f
fdiv
fstore 4
aload 1
astore 5
fload 3
fconst_1
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 0.05F
fcmpg
ifgt L0
aload 1
astore 5
fload 4
fconst_1
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 0.05F
fcmpg
ifgt L0
new com/bumptech/glide/request/target/SquaringDrawable
dup
aload 1
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
invokevirtual android/widget/ImageView/getWidth()I
invokespecial com/bumptech/glide/request/target/SquaringDrawable/<init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
astore 5
L0:
aload 0
aload 5
aload 2
invokespecial com/bumptech/glide/request/target/ImageViewTarget/onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
aload 0
aload 5
putfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/resource Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 5
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/maxLoopCount I
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setLoopCount(I)V
aload 5
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/start()V
return
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
aload 0
aload 1
checkcast com/bumptech/glide/load/resource/drawable/GlideDrawable
aload 2
invokevirtual com/bumptech/glide/request/target/GlideDrawableImageViewTarget/onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onStart()V
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/resource Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
ifnull L0
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/resource Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/start()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/resource Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
ifnull L0
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/resource Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/stop()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
aload 0
getfield com/bumptech/glide/request/target/GlideDrawableImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic setResource(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/bumptech/glide/load/resource/drawable/GlideDrawable
invokevirtual com/bumptech/glide/request/target/GlideDrawableImageViewTarget/setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
return
.limit locals 2
.limit stack 2
.end method
