.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/CircleBitmap2Displayer
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/display/BitmapDisplayer

.field protected final 'margin' I

.method public <init>()V
aload 0
iconst_0
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmap2Displayer/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/display/CircleBitmap2Displayer/margin I
return
.limit locals 2
.limit stack 2
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
new com/nostra13/universalimageloader/core/display/drawable/CircleDrawable
dup
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/CircleBitmap2Displayer/margin I
invokespecial com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/<init>(Landroid/graphics/Bitmap;I)V
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
return
.limit locals 4
.limit stack 5
.end method
