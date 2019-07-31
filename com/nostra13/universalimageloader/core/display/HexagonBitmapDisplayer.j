.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/display/BitmapDisplayer

.field private 'mFrameColor' I

.field private 'mFrameSize' I

.field private 'mResources' Landroid/content/res/Resources;

.method public <init>(Landroid/content/res/Resources;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_2
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
aload 0
iconst_m1
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/res/Resources;II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_2
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
aload 0
iconst_m1
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
return
.limit locals 4
.limit stack 2
.end method

.method public createHexagonBitmap(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Landroid/graphics/Bitmap;
aload 1
ifnull L0
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L1
L0:
aconst_null
areturn
L1:
aload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
iconst_1
invokevirtual android/graphics/Bitmap/copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
astore 8
aload 2
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 8
invokevirtual android/graphics/Bitmap/getWidth()I
aload 8
invokevirtual android/graphics/Bitmap/getHeight()I
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 7
iload 7
iconst_2
idiv
i2f
fstore 3
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
aload 8
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 16
iload 7
iload 7
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 9
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 1
aload 1
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
astore 2
new android/graphics/Canvas
dup
aload 9
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 17
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 7
i2f
iload 7
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 18
fload 3
f2d
ldc2_w 0.5235987901687622D
invokestatic java/lang/Math/sin(D)D
dmul
d2f
fstore 4
fload 3
f2d
ldc2_w 0.5235987901687622D
invokestatic java/lang/Math/cos(D)D
dmul
d2f
fstore 5
fload 3
fload 5
fsub
fstore 6
iconst_2
newarray float
astore 10
aload 10
iconst_0
fload 3
fastore
aload 10
iconst_1
fconst_0
fastore
iconst_2
newarray float
astore 11
aload 11
iconst_0
fload 6
fastore
aload 11
iconst_1
fload 4
fastore
iconst_2
newarray float
astore 12
aload 12
iconst_0
fload 6
fastore
aload 12
iconst_1
iload 7
i2f
fload 4
fsub
fastore
iconst_2
newarray float
astore 13
aload 13
iconst_0
fload 3
fastore
aload 13
iconst_1
iload 7
i2f
fastore
iconst_2
newarray float
astore 14
aload 14
iconst_0
fload 3
fload 5
fadd
fastore
aload 14
iconst_1
iload 7
i2f
fload 4
fsub
fastore
iconst_2
newarray float
astore 15
aload 15
iconst_0
fload 3
fload 5
fadd
fastore
aload 15
iconst_1
fload 4
fastore
aload 2
aload 10
iconst_0
faload
aload 10
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fadd
invokevirtual android/graphics/Path/moveTo(FF)V
aload 2
aload 11
iconst_0
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fadd
aload 11
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fadd
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 12
iconst_0
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fadd
aload 12
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 13
iconst_0
faload
aload 13
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 14
iconst_0
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fsub
aload 14
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 15
iconst_0
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fsub
aload 15
iconst_1
faload
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameSize I
i2f
fadd
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
invokevirtual android/graphics/Path/close()V
aload 17
aload 2
aload 1
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 16
iconst_0
iconst_0
iload 7
iload 7
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 17
aload 18
aload 1
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 16
aload 17
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 17
invokevirtual android/graphics/Canvas/restore()V
aload 1
invokevirtual android/graphics/Paint/reset()V
aload 2
invokevirtual android/graphics/Path/reset()V
aload 8
invokevirtual android/graphics/Bitmap/recycle()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
aload 9
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 16
iload 7
iload 7
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 8
new android/graphics/Canvas
dup
aload 8
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 17
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 7
i2f
iload 7
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 18
aload 1
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 2
aload 10
iconst_0
faload
aload 10
iconst_1
faload
invokevirtual android/graphics/Path/moveTo(FF)V
aload 2
aload 11
iconst_0
faload
aload 11
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 12
iconst_0
faload
aload 12
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 13
iconst_0
faload
aload 13
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 14
iconst_0
faload
aload 14
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
aload 15
iconst_0
faload
aload 15
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 2
invokevirtual android/graphics/Path/close()V
aload 17
aload 2
aload 1
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 16
iconst_0
iconst_0
iload 7
iload 7
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 17
aload 18
aload 1
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 16
aload 17
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 17
invokevirtual android/graphics/Canvas/restore()V
aload 1
invokevirtual android/graphics/Paint/reset()V
aload 2
invokevirtual android/graphics/Path/reset()V
aload 9
invokevirtual android/graphics/Bitmap/recycle()V
iload 7
bipush 20
idiv
i2f
fconst_2
fdiv
fstore 3
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
aload 8
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 10
iload 7
iload 7
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 9
new android/graphics/Canvas
dup
aload 9
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 11
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 7
i2f
iload 7
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 12
aload 1
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 1
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
fload 3
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
astore 13
aload 13
fload 3
putfield android/graphics/RectF/left F
aload 13
fload 3
putfield android/graphics/RectF/top F
aload 13
iload 7
i2f
fload 3
fsub
putfield android/graphics/RectF/right F
aload 13
iload 7
i2f
fload 3
fsub
putfield android/graphics/RectF/bottom F
aload 2
aload 13
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 2
aload 13
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 2
invokevirtual android/graphics/Path/close()V
aload 11
aload 2
aload 1
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/DST_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 10
iconst_0
iconst_0
iload 7
iload 7
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 11
aload 12
aload 1
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 10
aload 11
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 11
invokevirtual android/graphics/Canvas/restore()V
aload 1
invokevirtual android/graphics/Paint/reset()V
aload 2
invokevirtual android/graphics/Path/reset()V
aload 8
invokevirtual android/graphics/Bitmap/recycle()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mResources Landroid/content/res/Resources;
aload 9
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 8
iload 7
iload 7
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 10
new android/graphics/Canvas
dup
aload 10
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 11
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 7
i2f
iload 7
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 12
aload 1
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/mFrameColor I
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
astore 13
aload 13
fload 3
putfield android/graphics/RectF/left F
aload 13
fload 3
putfield android/graphics/RectF/top F
aload 13
iload 7
i2f
fload 3
fsub
putfield android/graphics/RectF/right F
aload 13
iload 7
i2f
fload 3
fsub
putfield android/graphics/RectF/bottom F
aload 2
aload 13
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 2
aload 13
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 2
invokevirtual android/graphics/Path/close()V
aload 11
aload 2
aload 1
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 8
iconst_0
iconst_0
iload 7
iload 7
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 11
aload 12
aload 1
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 8
aload 11
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 11
invokevirtual android/graphics/Canvas/restore()V
aload 1
invokevirtual android/graphics/Paint/reset()V
aload 2
invokevirtual android/graphics/Path/reset()V
aload 9
invokevirtual android/graphics/Bitmap/recycle()V
aload 10
areturn
.limit locals 19
.limit stack 6
.end method

.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 2
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/display/HexagonBitmapDisplayer/createHexagonBitmap(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Landroid/graphics/Bitmap;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
return
.limit locals 4
.limit stack 4
.end method
