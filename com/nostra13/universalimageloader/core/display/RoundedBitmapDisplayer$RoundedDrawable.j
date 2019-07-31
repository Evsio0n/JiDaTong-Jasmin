.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable
.super android/graphics/drawable/Drawable
.inner class public static RoundedDrawable inner com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable outer com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer

.field protected final 'bitmapShader' Landroid/graphics/BitmapShader;

.field protected final 'cornerRadius' F

.field protected final 'mBitmapRect' Landroid/graphics/RectF;

.field protected final 'mRect' Landroid/graphics/RectF;

.field protected final 'margin' I

.field protected final 'paint' Landroid/graphics/Paint;

.method public <init>(Landroid/graphics/Bitmap;II)V
aload 0
invokespecial android/graphics/drawable/Drawable/<init>()V
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mRect Landroid/graphics/RectF;
aload 0
iload 2
i2f
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/cornerRadius F
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/margin I
aload 0
new android/graphics/BitmapShader
dup
aload 1
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
invokespecial android/graphics/BitmapShader/<init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/bitmapShader Landroid/graphics/BitmapShader;
aload 0
new android/graphics/RectF
dup
iload 3
i2f
iload 3
i2f
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
iload 3
isub
i2f
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iload 3
isub
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mBitmapRect Landroid/graphics/RectF;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/bitmapShader Landroid/graphics/BitmapShader;
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
return
.limit locals 4
.limit stack 8
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mRect Landroid/graphics/RectF;
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/cornerRadius F
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/cornerRadius F
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
return
.limit locals 2
.limit stack 5
.end method

.method public getOpacity()I
bipush -3
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
aload 0
aload 1
invokespecial android/graphics/drawable/Drawable/onBoundsChange(Landroid/graphics/Rect;)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mRect Landroid/graphics/RectF;
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/margin I
i2f
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/margin I
i2f
aload 1
invokevirtual android/graphics/Rect/width()I
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/margin I
isub
i2f
aload 1
invokevirtual android/graphics/Rect/height()I
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/margin I
isub
i2f
invokevirtual android/graphics/RectF/set(FFFF)V
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 1
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mBitmapRect Landroid/graphics/RectF;
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/mRect Landroid/graphics/RectF;
getstatic android/graphics/Matrix$ScaleToFit/FILL Landroid/graphics/Matrix$ScaleToFit;
invokevirtual android/graphics/Matrix/setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
pop
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/bitmapShader Landroid/graphics/BitmapShader;
aload 1
invokevirtual android/graphics/BitmapShader/setLocalMatrix(Landroid/graphics/Matrix;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setAlpha(I)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setAlpha(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/paint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
pop
return
.limit locals 2
.limit stack 2
.end method
