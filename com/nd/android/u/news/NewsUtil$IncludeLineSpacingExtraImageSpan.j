.bytecode 50.0
.class public synchronized com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan
.super android/text/style/ImageSpan
.inner class public static IncludeLineSpacingExtraImageSpan inner com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan outer com/nd/android/u/news/NewsUtil

.method public <init>(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
invokespecial android/text/style/ImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
aload 0
invokevirtual com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan/getDrawable()Landroid/graphics/drawable/Drawable;
astore 10
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
iload 8
aload 10
invokevirtual android/graphics/drawable/Drawable/getBounds()Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_margin_3 I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
isub
istore 6
iload 6
istore 4
aload 0
getfield com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan/mVerticalAlignment I
iconst_1
if_icmpne L0
aload 2
invokeinterface java/lang/CharSequence/length()I 0
istore 7
iconst_0
istore 3
L1:
iload 6
istore 4
iload 3
iload 7
if_icmpge L0
aload 2
iload 3
invokeinterface java/lang/CharSequence/charAt(I)C 1
invokestatic java/lang/Character/isLetterOrDigit(C)Z
ifeq L2
iload 6
aload 9
invokevirtual android/graphics/Paint/getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
getfield android/graphics/Paint$FontMetricsInt/descent I
isub
istore 4
L0:
aload 1
fload 5
iload 4
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 10
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L1
.limit locals 11
.limit stack 3
.end method
