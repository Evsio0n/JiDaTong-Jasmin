.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/CircleImageView
.super com/nd/schoollife/ui/common/view/BaseImageView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/view/BaseImageView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/BaseImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/schoollife/ui/common/view/BaseImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public static getBitmap(II)Landroid/graphics/Bitmap;
iload 0
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 3
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 4
aload 4
ldc_w -16777216
invokevirtual android/graphics/Paint/setColor(I)V
aload 3
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 0
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
aload 4
invokevirtual android/graphics/Canvas/drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
aload 2
areturn
.limit locals 5
.limit stack 7
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/getWidth()I
aload 0
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/getHeight()I
invokestatic com/nd/schoollife/ui/common/view/CircleImageView/getBitmap(II)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 2
.end method
