.bytecode 50.0
.class public final synchronized com/nd/android/backpacksystem/helper/Utils
.super java/lang/Object
.inner class static final inner com/nd/android/backpacksystem/helper/Utils$1

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createHexagonPhoto(Landroid/content/res/Resources;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
iload 1
iconst_2
idiv
i2f
fstore 3
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 16
iload 1
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 9
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 7
aload 7
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
astore 8
new android/graphics/Canvas
dup
aload 9
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 17
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 18
fload 3
f2d
ldc2_w 0.5235987755982988D
invokestatic java/lang/Math/sin(D)D
dmul
d2f
fstore 4
fload 3
f2d
ldc2_w 0.5235987755982988D
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
iload 1
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
iload 1
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
iload 1
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
aload 8
aload 10
iconst_0
faload
aload 10
iconst_1
faload
fconst_2
fadd
invokevirtual android/graphics/Path/moveTo(FF)V
aload 8
aload 11
iconst_0
faload
fconst_2
fadd
aload 11
iconst_1
faload
fconst_2
fadd
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 12
iconst_0
faload
fconst_2
fadd
aload 12
iconst_1
faload
fconst_2
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 13
iconst_0
faload
aload 13
iconst_1
faload
fconst_2
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 14
iconst_0
faload
fconst_2
fsub
aload 14
iconst_1
faload
fconst_2
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 15
iconst_0
faload
fconst_2
fsub
aload 15
iconst_1
faload
fconst_2
fadd
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
invokevirtual android/graphics/Path/close()V
aload 17
aload 8
aload 7
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 7
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 16
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 17
aload 18
aload 7
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 16
aload 17
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 17
invokevirtual android/graphics/Canvas/restore()V
aload 7
invokevirtual android/graphics/Paint/reset()V
aload 8
invokevirtual android/graphics/Path/reset()V
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 9
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 16
iload 1
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 17
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 18
aload 7
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 7
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 8
aload 10
iconst_0
faload
aload 10
iconst_1
faload
invokevirtual android/graphics/Path/moveTo(FF)V
aload 8
aload 11
iconst_0
faload
aload 11
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 12
iconst_0
faload
aload 12
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 13
iconst_0
faload
aload 13
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 14
iconst_0
faload
aload 14
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
aload 15
iconst_0
faload
aload 15
iconst_1
faload
invokevirtual android/graphics/Path/lineTo(FF)V
aload 8
invokevirtual android/graphics/Path/close()V
aload 17
aload 8
aload 7
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 7
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 16
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 17
aload 18
aload 7
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 16
aload 17
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 17
invokevirtual android/graphics/Canvas/restore()V
aload 7
invokevirtual android/graphics/Paint/reset()V
aload 8
invokevirtual android/graphics/Path/reset()V
aload 9
invokevirtual android/graphics/Bitmap/recycle()V
iload 1
bipush 20
idiv
i2f
fconst_2
fdiv
fstore 3
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 10
iload 1
iload 1
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
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 12
aload 7
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 7
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 7
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 7
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
iload 1
i2f
fload 3
fsub
putfield android/graphics/RectF/right F
aload 13
iload 1
i2f
fload 3
fsub
putfield android/graphics/RectF/bottom F
aload 8
aload 13
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 8
aload 13
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 8
invokevirtual android/graphics/Path/close()V
aload 11
aload 8
aload 7
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 7
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/DST_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 10
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 11
aload 12
aload 7
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 10
aload 11
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 11
invokevirtual android/graphics/Canvas/restore()V
aload 7
invokevirtual android/graphics/Paint/reset()V
aload 8
invokevirtual android/graphics/Path/reset()V
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 9
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 0
iload 1
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 10
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 11
aload 7
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 7
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
astore 12
aload 12
fload 3
putfield android/graphics/RectF/left F
aload 12
fload 3
putfield android/graphics/RectF/top F
aload 12
iload 1
i2f
fload 3
fsub
putfield android/graphics/RectF/right F
aload 12
iload 1
i2f
fload 3
fsub
putfield android/graphics/RectF/bottom F
aload 8
aload 12
fconst_0
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 8
aload 12
ldc_w 180.0F
ldc_w 180.0F
invokevirtual android/graphics/Path/arcTo(Landroid/graphics/RectF;FF)V
aload 8
invokevirtual android/graphics/Path/close()V
aload 10
aload 8
aload 7
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 7
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 0
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 10
aload 11
aload 7
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 0
aload 10
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 10
invokevirtual android/graphics/Canvas/restore()V
aload 7
invokevirtual android/graphics/Paint/reset()V
aload 8
invokevirtual android/graphics/Path/reset()V
aload 9
invokevirtual android/graphics/Bitmap/recycle()V
aload 2
areturn
.limit locals 19
.limit stack 6
.end method

.method public static createRoundRectangle(Landroid/content/res/Resources;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
iload 1
bipush 20
idiv
istore 3
iload 3
iconst_2
idiv
istore 4
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 7
iload 1
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 5
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 6
aload 6
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/Canvas
dup
aload 5
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 8
new android/graphics/RectF
dup
iload 4
i2f
iload 4
i2f
iload 1
iload 4
isub
i2f
iload 1
iload 4
isub
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 9
aload 8
aload 9
iload 3
i2f
iload 3
i2f
aload 6
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 6
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 7
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 8
aload 9
aload 6
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 7
aload 8
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 8
invokevirtual android/graphics/Canvas/restore()V
aload 6
invokevirtual android/graphics/Paint/reset()V
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
aload 5
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 0
iload 1
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 7
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 8
aload 6
iconst_1
invokevirtual android/graphics/Paint/setFlags(I)V
aload 6
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 7
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 1
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
iload 3
i2f
iload 3
i2f
aload 6
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 6
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_OVER Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 0
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 7
aload 8
aload 6
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
pop
aload 0
aload 7
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 7
invokevirtual android/graphics/Canvas/restore()V
aload 6
invokevirtual android/graphics/Paint/reset()V
aload 5
invokevirtual android/graphics/Bitmap/recycle()V
aload 2
areturn
.limit locals 10
.limit stack 7
.end method

.method public static dipToPx(Landroid/content/Context;I)I
iconst_1
iload 1
i2f
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getOapUserSimpleById(J)Lcom/product/android/commonInterface/contact/OapUserSimple;
new com/nd/android/backpacksystem/helper/Utils$1
dup
lload 0
invokespecial com/nd/android/backpacksystem/helper/Utils$1/<init>(J)V
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUserSimpleList(Ljava/util/List;)Ljava/util/ArrayList;
astore 2
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
areturn
L0:
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getStorePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc ""
astore 3
invokestatic com/common/android/utils/SdCardUtils/isSdCardExist()Z
ifeq L0
aload 0
invokestatic com/common/android/utils/SdCardUtils/getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
astore 3
L0:
aload 3
astore 4
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
invokestatic com/common/android/utils/SdCardUtils/getInternalStoreCacheDir(Landroid/content/Context;)Ljava/lang/String;
astore 4
L1:
new java/io/File
dup
aload 4
ldc "backpack"
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L2
aload 0
invokevirtual java/io/File/mkdirs()Z
pop
L2:
new java/io/File
dup
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method public static recordTimeToString(I)Ljava/lang/String;
iload 0
ldc_w 60000
idiv
istore 1
iload 0
ldc_w 60000
irem
sipush 1000
idiv
istore 0
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%02d:%02d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public static showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
new android/widget/Toast
dup
aload 0
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/backpacksystem/R$layout/use_gifts_success_toast I
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvUseGiftsSuccess I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 1
instanceof java/lang/String
ifeq L1
aload 3
aload 1
checkcast java/lang/String
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 4
iconst_0
invokevirtual android/widget/Toast/setDuration(I)V
aload 4
bipush 16
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 4
aload 3
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 4
bipush 7
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 4
invokevirtual android/widget/Toast/show()V
return
L1:
aload 1
instanceof java/lang/Integer
ifeq L0
aload 3
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
.limit locals 5
.limit stack 4
.end method
