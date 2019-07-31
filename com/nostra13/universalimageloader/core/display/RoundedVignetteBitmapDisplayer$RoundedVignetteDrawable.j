.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable
.super com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable
.inner class protected static RoundedVignetteDrawable inner com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable outer com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer

.method <init>(Landroid/graphics/Bitmap;II)V
aload 0
aload 1
iload 2
iload 3
invokespecial com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/<init>(Landroid/graphics/Bitmap;II)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable/onBoundsChange(Landroid/graphics/Rect;)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/mRect Landroid/graphics/RectF;
invokevirtual android/graphics/RectF/centerX()F
fstore 2
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/mRect Landroid/graphics/RectF;
invokevirtual android/graphics/RectF/centerY()F
fconst_1
fmul
ldc_w 0.7F
fdiv
fstore 3
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/mRect Landroid/graphics/RectF;
invokevirtual android/graphics/RectF/centerX()F
fstore 4
iconst_3
newarray int
astore 1
aload 1
iconst_2
ldc_w 2130706432
iastore
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
astore 5
new android/graphics/RadialGradient
dup
fload 2
fload 3
fload 4
ldc_w 1.3F
fmul
aload 1
iconst_3
newarray float
dup
iconst_0
fconst_0
fastore
dup
iconst_1
ldc_w 0.7F
fastore
dup
iconst_2
fconst_1
fastore
aload 5
invokespecial android/graphics/RadialGradient/<init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
astore 1
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 5
aload 5
fconst_1
ldc_w 0.7F
invokevirtual android/graphics/Matrix/setScale(FF)V
aload 1
aload 5
invokevirtual android/graphics/RadialGradient/setLocalMatrix(Landroid/graphics/Matrix;)V
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/paint Landroid/graphics/Paint;
new android/graphics/ComposeShader
dup
aload 0
getfield com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable/bitmapShader Landroid/graphics/BitmapShader;
aload 1
getstatic android/graphics/PorterDuff$Mode/SRC_OVER Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/ComposeShader/<init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
return
.limit locals 6
.limit stack 10
.end method
