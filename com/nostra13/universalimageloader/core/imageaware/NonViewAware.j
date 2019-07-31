.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/imageaware/NonViewAware
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/imageaware/ImageAware

.field protected final 'imageSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field protected final 'imageUri' Ljava/lang/String;

.field protected final 'scaleType' Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.method public <init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
aload 0
aconst_null
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/NonViewAware/<init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 2
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "imageSize must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "scaleType must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageUri Ljava/lang/String;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/scaleType Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
return
.limit locals 4
.limit stack 3
.end method

.method public getHeight()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageUri Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageUri Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/scaleType Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/NonViewAware/imageSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWrappedView()Landroid/view/View;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public isCollected()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
