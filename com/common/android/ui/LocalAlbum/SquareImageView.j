.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/SquareImageView
.super android/widget/ImageView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method private static notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
aload 0
instanceof com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable
ifeq L0
aload 0
checkcast com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable
iload 1
invokevirtual com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/setIsDisplayed(Z)V
L1:
return
L0:
aload 0
instanceof android/graphics/drawable/LayerDrawable
ifeq L1
aload 0
checkcast android/graphics/drawable/LayerDrawable
astore 0
iconst_0
istore 2
aload 0
invokevirtual android/graphics/drawable/LayerDrawable/getNumberOfLayers()I
istore 3
L2:
iload 2
iload 3
if_icmpge L1
aload 0
iload 2
invokevirtual android/graphics/drawable/LayerDrawable/getDrawable(I)Landroid/graphics/drawable/Drawable;
iload 1
invokestatic com/common/android/ui/LocalAlbum/SquareImageView/notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 2
.end method

.method protected onDetachedFromWindow()V
aload 0
aconst_null
invokevirtual com/common/android/ui/LocalAlbum/SquareImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
invokespecial android/widget/ImageView/onDetachedFromWindow()V
return
.limit locals 1
.limit stack 2
.end method

.method public onMeasure(II)V
aload 0
iload 1
iload 1
invokespecial android/widget/ImageView/onMeasure(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/SquareImageView/getDrawable()Landroid/graphics/drawable/Drawable;
astore 2
aload 0
aload 1
invokespecial android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 1
iconst_1
invokestatic com/common/android/ui/LocalAlbum/SquareImageView/notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
aload 2
iconst_0
invokestatic com/common/android/ui/LocalAlbum/SquareImageView/notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
return
.limit locals 3
.limit stack 2
.end method
