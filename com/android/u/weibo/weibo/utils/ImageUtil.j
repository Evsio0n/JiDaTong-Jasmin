.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/ImageUtil
.super java/lang/Object
.inner class public static abstract interface DoDialogListener inner com/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener outer com/android/u/weibo/weibo/utils/ImageUtil

.field public static final 'COLUMN_THREE' I = 3


.field public static final 'COLUMN_TWO' I = 2


.field public static final 'MULTI_IMAGE' I = 1


.field public static final 'MULTI_VISTOR' I = 0


.field public static final 'ROW' I = 2


.field public static final 'SEPARATOR' I = 1


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createReflectionImageWithOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 1
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 2
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 3
aload 3
fconst_1
ldc_w -1.0F
invokevirtual android/graphics/Matrix/preScale(FF)Z
pop
aload 0
iconst_0
iload 2
iconst_2
idiv
iload 1
iload 2
iconst_2
idiv
aload 3
iconst_0
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 5
iload 1
iload 2
iconst_2
idiv
iload 2
iadd
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 3
new android/graphics/Canvas
dup
aload 3
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 4
aload 4
aload 0
fconst_0
fconst_0
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 6
aload 4
fconst_0
iload 2
i2f
iload 1
i2f
iload 2
iconst_4
iadd
i2f
aload 6
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 4
aload 5
fconst_0
iload 2
iconst_4
iadd
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 5
aload 5
new android/graphics/LinearGradient
dup
fconst_0
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fconst_0
aload 3
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_4
iadd
i2f
ldc_w 1895825407
ldc_w 16777215
getstatic android/graphics/Shader$TileMode/CLAMP Landroid/graphics/Shader$TileMode;
invokespecial android/graphics/LinearGradient/<init>(FFFFIILandroid/graphics/Shader$TileMode;)V
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
aload 5
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/DST_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 4
fconst_0
iload 2
i2f
iload 1
i2f
aload 3
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_4
iadd
i2f
aload 5
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 3
areturn
.limit locals 7
.limit stack 10
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
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
invokespecial android/graphics/Paint/<init>()V
astore 4
new android/graphics/Rect
dup
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
invokespecial android/graphics/Rect/<init>(IIII)V
astore 0
new android/graphics/RectF
dup
aload 0
invokespecial android/graphics/RectF/<init>(Landroid/graphics/Rect;)V
astore 5
aload 4
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 3
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/graphics/Canvas/drawARGB(IIII)V
aload 4
ldc_w -12434878
invokevirtual android/graphics/Paint/setColor(I)V
aload 3
aload 5
fload 1
fload 1
aload 4
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 4
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 3
aload 2
aload 0
aload 0
aload 4
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
aload 2
areturn
.limit locals 6
.limit stack 6
.end method

.method public static getZoomBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokestatic com/android/u/weibo/weibo/utils/ImageUtil/getZoomBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getZoomBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 1
aload 0
ldc_w 90.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
aload 0
ldc_w 60.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokestatic com/android/u/weibo/weibo/utils/ImageUtil/zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
astore 5
L1:
aload 5
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 4
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 5
aload 5
iload 1
i2f
iload 3
i2f
fdiv
iload 2
i2f
iload 4
i2f
fdiv
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
iconst_0
iconst_0
iload 3
iload 4
aload 5
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 6
aload 6
astore 5
aload 0
ifnull L1
aload 6
astore 5
aload 0
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L1
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
aload 6
areturn
.limit locals 7
.limit stack 7
.end method
