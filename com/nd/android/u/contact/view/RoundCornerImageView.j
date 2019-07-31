.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/RoundCornerImageView
.super android/widget/ImageView

.field public static final 'DEFAULT_ROUND_CORNER' F = 8.0F


.field private 'mClipPath' Landroid/graphics/Path;

.field private 'mRoundCorner' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
ldc_w 8.0F
putfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
aload 0
invokespecial com/nd/android/u/contact/view/RoundCornerImageView/closeHardwareAcc()V
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
ldc_w 8.0F
putfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
aload 0
invokespecial com/nd/android/u/contact/view/RoundCornerImageView/closeHardwareAcc()V
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
ldc_w 8.0F
putfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
aload 0
invokespecial com/nd/android/u/contact/view/RoundCornerImageView/closeHardwareAcc()V
return
.limit locals 4
.limit stack 4
.end method

.method private closeHardwareAcc()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmple L0
aload 0
iconst_1
aconst_null
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/setLayerType(ILandroid/graphics/Paint;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/contact/view/RoundCornerImageView/mClipPath Landroid/graphics/Path;
ifnonnull L0
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/nd/android/u/contact/view/RoundCornerImageView/mClipPath Landroid/graphics/Path;
aload 0
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/getWidth()I
istore 2
aload 0
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/getHeight()I
istore 3
aload 0
getfield com/nd/android/u/contact/view/RoundCornerImageView/mClipPath Landroid/graphics/Path;
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 2
i2f
iload 3
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
aload 0
getfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
aload 0
getfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
getstatic android/graphics/Path$Direction/CW Landroid/graphics/Path$Direction;
invokevirtual android/graphics/Path/addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
L0:
aload 1
aload 0
getfield com/nd/android/u/contact/view/RoundCornerImageView/mClipPath Landroid/graphics/Path;
invokevirtual android/graphics/Canvas/clipPath(Landroid/graphics/Path;)Z
pop
aload 0
aload 1
invokespecial android/widget/ImageView/onDraw(Landroid/graphics/Canvas;)V
return
.limit locals 4
.limit stack 7
.end method

.method public final setRoundCorner(F)V
aload 0
fload 1
putfield com/nd/android/u/contact/view/RoundCornerImageView/mRoundCorner F
aload 0
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method
