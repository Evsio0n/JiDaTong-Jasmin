.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/display/BitmapDisplayer

.field private final 'animateFromDisk' Z

.field private final 'animateFromMemory' Z

.field private final 'animateFromNetwork' Z

.field private final 'durationMillis' I

.method public <init>(I)V
aload 0
iload 1
iconst_1
iconst_1
iconst_1
invokespecial com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/<init>(IZZZ)V
return
.limit locals 2
.limit stack 5
.end method

.method public <init>(IZZZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/durationMillis I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromNetwork Z
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromDisk Z
aload 0
iload 4
putfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromMemory Z
return
.limit locals 5
.limit stack 2
.end method

.method public static animate(Landroid/view/View;I)V
aload 0
ifnull L0
new android/view/animation/AlphaAnimation
dup
fconst_0
fconst_1
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 2
aload 2
iload 1
i2l
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 2
new android/view/animation/DecelerateInterpolator
dup
invokespecial android/view/animation/DecelerateInterpolator/<init>()V
invokevirtual android/view/animation/AlphaAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
aload 2
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 2
aload 1
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
aload 0
getfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromNetwork Z
ifeq L0
aload 3
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/NETWORK Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
if_acmpeq L1
L0:
aload 0
getfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromDisk Z
ifeq L2
aload 3
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/DISC_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
if_acmpeq L1
L2:
aload 0
getfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animateFromMemory Z
ifeq L3
aload 3
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
if_acmpne L3
L1:
aload 2
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
aload 0
getfield com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/durationMillis I
invokestatic com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animate(Landroid/view/View;I)V
L3:
return
.limit locals 4
.limit stack 2
.end method
