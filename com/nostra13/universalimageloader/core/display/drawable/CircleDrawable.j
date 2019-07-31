.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/drawable/CircleDrawable
.super android/graphics/drawable/Drawable

.field public static final 'TAG' Ljava/lang/String; = "CircleDrawable"

.field protected final 'bitmapShader' Landroid/graphics/BitmapShader;

.field protected final 'margin' I

.field protected 'oBitmap' Landroid/graphics/Bitmap;

.field protected final 'paint' Landroid/graphics/Paint;

.field protected 'radius' F

.method public <init>(Landroid/graphics/Bitmap;)V
aload 0
aload 1
iconst_0
invokespecial com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/<init>(Landroid/graphics/Bitmap;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/graphics/Bitmap;I)V
aload 0
invokespecial android/graphics/drawable/Drawable/<init>()V
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/margin I
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/oBitmap Landroid/graphics/Bitmap;
aload 0
new android/graphics/BitmapShader
dup
aload 1
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
invokespecial android/graphics/BitmapShader/<init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
putfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/bitmapShader Landroid/graphics/BitmapShader;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/bitmapShader Landroid/graphics/BitmapShader;
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
return
.limit locals 3
.limit stack 6
.end method

.method public computeBitmapShaderSize()V
aload 0
invokevirtual com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/getBounds()Landroid/graphics/Rect;
astore 3
aload 3
ifnonnull L0
return
L0:
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 4
aload 3
invokevirtual android/graphics/Rect/width()I
i2f
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/oBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
fstore 1
aload 3
invokevirtual android/graphics/Rect/height()I
i2f
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/oBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fdiv
fstore 2
fload 1
fload 2
fcmpl
ifle L1
L2:
aload 4
fload 1
fload 1
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/bitmapShader Landroid/graphics/BitmapShader;
aload 4
invokevirtual android/graphics/BitmapShader/setLocalMatrix(Landroid/graphics/Matrix;)V
return
L1:
fload 2
fstore 1
goto L2
.limit locals 5
.limit stack 3
.end method

.method public computeRadius()V
aload 0
invokevirtual com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/getBounds()Landroid/graphics/Rect;
astore 2
aload 2
invokevirtual android/graphics/Rect/width()I
aload 2
invokevirtual android/graphics/Rect/height()I
if_icmpge L0
aload 2
invokevirtual android/graphics/Rect/width()I
i2f
fconst_2
fdiv
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/margin I
i2f
fsub
fstore 1
L1:
aload 0
fload 1
putfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/radius F
return
L0:
aload 2
invokevirtual android/graphics/Rect/height()I
i2f
fconst_2
fdiv
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/margin I
i2f
fsub
fstore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 0
invokevirtual com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/getBounds()Landroid/graphics/Rect;
astore 2
aload 1
aload 2
invokevirtual android/graphics/Rect/width()I
i2f
fconst_2
fdiv
aload 2
invokevirtual android/graphics/Rect/height()I
i2f
fconst_2
fdiv
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/radius F
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
return
.limit locals 3
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
invokevirtual com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/computeBitmapShaderSize()V
aload 0
invokevirtual com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/computeRadius()V
return
.limit locals 2
.limit stack 2
.end method

.method public setAlpha(I)V
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setAlpha(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
getfield com/nostra13/universalimageloader/core/display/drawable/CircleDrawable/paint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
pop
return
.limit locals 2
.limit stack 2
.end method
