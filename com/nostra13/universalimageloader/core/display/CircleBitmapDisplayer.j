.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/display/BitmapDisplayer

.field private 'needBound' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
return
.limit locals 2
.limit stack 2
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
aload 1
ifnonnull L3
L4:
aload 1
areturn
L3:
iload 2
iload 3
invokestatic java/lang/Math/min(II)I
istore 10
iload 2
iload 3
if_icmpne L5
iconst_1
istore 4
L6:
iload 2
iload 3
if_icmpge L7
iconst_1
istore 5
L8:
iconst_0
istore 8
iconst_0
istore 9
iload 8
istore 6
iload 9
istore 7
iload 4
ifne L9
iload 5
ifeq L10
iload 3
iload 2
isub
iconst_2
idiv
i2f
ldc_w 0.5F
fadd
f2i
istore 7
iload 8
istore 6
L9:
aload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
iconst_1
invokevirtual android/graphics/Bitmap/copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
astore 11
new android/graphics/Canvas
dup
aload 11
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 12
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 13
aload 13
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 13
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 12
iload 6
i2f
iload 7
i2f
iload 10
i2f
iload 10
i2f
aload 13
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(FFFFLandroid/graphics/Paint;I)I
pop
aload 12
invokevirtual android/graphics/Canvas/restore()V
aload 13
invokevirtual android/graphics/Paint/reset()V
aload 11
iload 6
iload 7
iload 10
iload 10
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 11
aload 11
ifnull L4
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 12
aload 12
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 12
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
L0:
iload 10
iload 10
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 13
L1:
new android/graphics/drawable/BitmapDrawable
dup
aload 11
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
astore 15
new android/graphics/Canvas
dup
aload 13
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 16
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 10
i2f
iload 10
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 17
aload 0
getfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
ifeq L11
new android/graphics/RectF
dup
ldc_w 3.0F
ldc_w 3.0F
iload 10
iconst_3
isub
i2f
iload 10
iconst_3
isub
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 1
L12:
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
astore 14
aload 14
aload 1
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 14
aload 1
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 14
invokevirtual android/graphics/Path/close()V
aload 16
aload 14
aload 12
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 12
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 15
iconst_0
iconst_0
iload 10
iload 10
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 16
aload 17
aload 12
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 15
aload 16
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 16
invokevirtual android/graphics/Canvas/restore()V
aload 0
getfield com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/needBound Z
ifne L13
aload 12
invokevirtual android/graphics/Paint/reset()V
aload 14
invokevirtual android/graphics/Path/reset()V
aload 11
invokevirtual android/graphics/Bitmap/recycle()V
aload 13
areturn
L5:
iconst_0
istore 4
goto L6
L7:
iconst_0
istore 5
goto L8
L10:
iload 2
iload 3
isub
iconst_2
idiv
i2f
ldc_w 0.5F
fadd
f2i
istore 6
iload 9
istore 7
goto L9
L2:
astore 1
ldc "HYK"
ldc "create clipBitmap IllegalArgumentException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ldc "Can't create bitmap with rounded corners. IllegalArgumentException."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
aload 11
areturn
L11:
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 10
i2f
iload 10
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 1
goto L12
L13:
new android/graphics/drawable/BitmapDrawable
dup
aload 13
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
astore 15
iload 10
iload 10
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 16
new android/graphics/Canvas
dup
aload 16
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 17
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 10
i2f
iload 10
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 18
aload 12
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 12
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 14
aload 1
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 14
aload 1
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 14
invokevirtual android/graphics/Path/close()V
aload 17
aload 14
aload 12
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 12
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 15
iconst_0
iconst_0
iload 10
iload 10
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 17
aload 18
aload 12
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 15
aload 17
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 17
invokevirtual android/graphics/Canvas/restore()V
aload 12
invokevirtual android/graphics/Paint/reset()V
aload 14
invokevirtual android/graphics/Path/reset()V
aload 13
invokevirtual android/graphics/Bitmap/recycle()V
aload 11
invokevirtual android/graphics/Bitmap/recycle()V
aload 16
areturn
.limit locals 19
.limit stack 7
.end method

.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
aload 2
instanceof com/nostra13/universalimageloader/core/imageaware/ImageViewAware
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "ImageAware should wrap ImageView. ImageViewAware is expected."
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
aload 0
aload 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Landroid/graphics/Bitmap;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageBitmap(Landroid/graphics/Bitmap;)Z 1
pop
return
.limit locals 4
.limit stack 4
.end method

.method public roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
istore 6
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
istore 7
aload 2
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWidth()I 0
istore 4
aload 2
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getHeight()I 0
istore 5
ldc "HYK"
new java/lang/StringBuilder
dup
ldc "bw = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " , bh = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " , vw = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " , vh = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
iload 6
iload 7
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
astore 8
aload 2
aload 8
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
pop
iload 4
ifle L4
iload 5
istore 3
iload 5
ifgt L5
L4:
aload 2
aload 8
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
astore 2
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 4
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 3
L5:
iload 6
ifeq L1
iload 7
ifeq L1
L0:
aload 0
aload 1
iload 6
iload 7
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
areturn
L1:
aload 0
aload 1
iload 4
iload 3
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 2
L3:
aload 2
areturn
L2:
astore 2
ldc "HYK"
ldc "getRoundedCornerBitmap OutOfMemoryError"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ldc "Can't create bitmap with rounded corners. Not enough memory."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
aload 1
areturn
.limit locals 9
.limit stack 4
.end method
