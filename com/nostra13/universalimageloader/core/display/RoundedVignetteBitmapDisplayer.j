.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer
.super com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer
.inner class protected static RoundedVignetteDrawable inner com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable outer com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer

.method public <init>(II)V
aload 0
iload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer/<init>(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 2
instanceof com/nostra13/universalimageloader/core/imageaware/ImageViewAware
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "ImageAware should wrap ImageView. ImageViewAware is expected."
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
new com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable
dup
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer/cornerRadius I
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer/margin I
invokespecial com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/<init>(Landroid/graphics/Bitmap;II)V
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
return
.limit locals 4
.limit stack 6
.end method
