.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/core/display/FakeBitmapDisplayer
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/display/BitmapDisplayer

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 2
aload 1
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
return
.limit locals 4
.limit stack 2
.end method
