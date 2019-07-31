.bytecode 50.0
.class public synchronized com/product/android/ui/widget/TopCropImageView
.super android/widget/ImageView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual com/product/android/ui/widget/TopCropImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual com/product/android/ui/widget/TopCropImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
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
aload 0
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual com/product/android/ui/widget/TopCropImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected setFrame(IIII)Z
aload 0
invokevirtual com/product/android/ui/widget/TopCropImageView/getDrawable()Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
invokevirtual com/product/android/ui/widget/TopCropImageView/getScaleType()Landroid/widget/ImageView$ScaleType;
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
if_acmpne L0
aload 0
invokevirtual com/product/android/ui/widget/TopCropImageView/getImageMatrix()Landroid/graphics/Matrix;
astore 6
iload 3
iload 1
isub
i2f
aload 0
invokevirtual com/product/android/ui/widget/TopCropImageView/getDrawable()Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
i2f
fdiv
fstore 5
aload 6
fload 5
fload 5
fconst_0
fconst_0
invokevirtual android/graphics/Matrix/setScale(FFFF)V
aload 0
aload 6
invokevirtual com/product/android/ui/widget/TopCropImageView/setImageMatrix(Landroid/graphics/Matrix;)V
L0:
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/ImageView/setFrame(IIII)Z
ireturn
.limit locals 7
.limit stack 5
.end method
