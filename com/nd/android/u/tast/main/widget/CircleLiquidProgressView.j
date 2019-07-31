.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/CircleLiquidProgressView
.super android/view/View

.field private final 'ANIMAL_OFFSET' I

.field private final 'DEFAULT_MAX' I

.field private final 'DEFAULT_TEXT_SIZE' I

.field private final 'HALF' I

.field private final 'LOWEST_PROGRESS' I

.field private final 'PROGRESS_0_50' I

.field private final 'PROGRESS_100' I

.field private final 'PROGRESS_50_99' I

.field private final 'PROGRESS_UNSET' I

.field private final 'ROTATE_ANGLE' I

.field public final 'TYPE_PERCENT' I

.field public final 'TYPE_PROGRESS' I

.field private final 'WIDTH_SPLIT' I

.field private 'circleBit' Landroid/graphics/Bitmap;

.field private 'isOpposite' Z

.field private 'lastPro1X' F

.field private 'lastPro2X' F

.field private 'mContext' Landroid/content/Context;

.field private 'mLastProgressInterval' I

.field private 'mMax' I

.field private 'mMode' Landroid/graphics/PorterDuffXfermode;

.field private 'mPercent' I

.field private 'mProgress' I

.field private 'mShowType' I

.field private 'mUpToPercent' I

.field private 'mWidth' I

.field private 'matrix' Landroid/graphics/Matrix;

.field private 'paint' Landroid/graphics/Paint;

.field private 'progressBit' Landroid/graphics/Bitmap;

.field private 'progressBit2' Landroid/graphics/Bitmap;

.field private 'textColor' I

.field private 'textSize' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/main/widget/CircleLiquidProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/tast/main/widget/CircleLiquidProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
bipush 100
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/DEFAULT_MAX I
aload 0
bipush -20
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/ROTATE_ANGLE I
aload 0
bipush 15
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/DEFAULT_TEXT_SIZE I
aload 0
iconst_4
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/WIDTH_SPLIT I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/TYPE_PERCENT I
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/TYPE_PROGRESS I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/PROGRESS_UNSET I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/PROGRESS_0_50 I
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/PROGRESS_50_99 I
aload 0
iconst_2
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/PROGRESS_100 I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mLastProgressInterval I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
bipush 100
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/isOpposite Z
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mShowType I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
aload 0
bipush 50
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/HALF I
aload 0
bipush 30
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/LOWEST_PROGRESS I
aload 0
bipush 80
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/ANIMAL_OFFSET I
aload 0
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_ATOP Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMode Landroid/graphics/PorterDuffXfermode;
aload 0
aload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mContext Landroid/content/Context;
aload 1
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/CircleLiquidProgressAttr [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleLiquidProgressAttr_android_textSize I
ldc_w 15.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/textSize F
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleLiquidProgressAttr_android_max I
bipush 100
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleLiquidProgressAttr_android_progress I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleLiquidProgressAttr_showType I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mShowType I
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 4
.limit stack 5
.end method

.method private createRightBitmap(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mLastProgressInterval I
iload 1
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/shui_1 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/jin1 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/shui2 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$color/progress_0_50_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/textColor I
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
ifnonnull L2
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
fstore 2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
fload 2
fload 2
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
L2:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
ifnull L3
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
L3:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
ifnull L4
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
L4:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
ifnull L5
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/matrix Landroid/graphics/Matrix;
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
L5:
return
L0:
iload 1
iconst_1
if_icmpne L6
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/green_shui_1 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/green_jin I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/gree_shui_2 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$color/progress_50_99_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/textColor I
goto L1
L6:
aload 0
aconst_null
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/finish I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
goto L1
.limit locals 3
.limit stack 3
.end method

.method private getProgressInterval()I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
ifne L0
aload 0
bipush 100
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
bipush 50
if_icmpgt L2
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
bipush 100
imul
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
idiv
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
goto L1
L2:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
bipush 100
if_icmpge L3
iconst_1
ireturn
L3:
iconst_2
ireturn
.limit locals 1
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getWidth()I
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
aload 0
invokespecial com/nd/android/u/tast/main/widget/CircleLiquidProgressView/getProgressInterval()I
istore 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mLastProgressInterval I
iconst_m1
if_icmpeq L0
iload 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mLastProgressInterval I
if_icmpeq L1
L0:
aload 0
iload 5
invokespecial com/nd/android/u/tast/main/widget/CircleLiquidProgressView/createRightBitmap(I)V
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 17170443
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
iconst_2
idiv
istore 4
iload 5
iconst_2
if_icmpne L2
aload 1
iload 4
i2f
iload 4
i2f
iload 4
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L3:
return
L2:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
ldc_w 100.0F
fdiv
fstore 2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
istore 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
iconst_4
idiv
i2f
fstore 3
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
bipush 30
if_icmpgt L4
ldc_w 30.0F
fload 2
fmul
fstore 2
aload 0
iload 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
isub
ineg
iconst_2
idiv
i2f
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
L5:
aload 1
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
aconst_null
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(FFFFLandroid/graphics/Paint;I)I
istore 5
aload 1
iload 4
i2f
iload 4
i2f
iload 4
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMode Landroid/graphics/PorterDuffXfermode;
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
fload 2
fsub
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/progressBit2 Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
i2f
fload 2
fsub
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aconst_null
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
iload 5
invokevirtual android/graphics/Canvas/restoreToCount(I)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/circleBit Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/textColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/textSize F
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mShowType I
iconst_1
if_icmpne L6
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 1
ldc_w -20.0F
iload 4
i2f
iload 4
i2f
invokevirtual android/graphics/Canvas/rotate(FFF)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokestatic com/common/android/utils/CanvasUtils/calculateTextBound(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Point;
astore 8
aload 1
aload 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
aload 8
getfield android/graphics/Point/x I
isub
iconst_2
idiv
i2f
aload 8
getfield android/graphics/Point/y I
iconst_2
idiv
iload 4
iadd
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
L7:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
ifle L3
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
if_icmpge L3
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
iconst_1
iadd
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
ldc2_w 80L
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/postInvalidateDelayed(J)V
return
L4:
fload 2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
i2f
fmul
fstore 2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
fconst_0
fcmpl
ifne L8
aload 0
iload 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
isub
ineg
iconst_2
idiv
i2f
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
L8:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/isOpposite Z
ifne L9
iconst_1
istore 6
L10:
aload 0
iload 6
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/isOpposite Z
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/isOpposite Z
ifeq L11
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
fload 3
fadd
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
fload 3
fsub
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
goto L5
L9:
iconst_0
istore 6
goto L10
L11:
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
fload 3
fsub
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro1X F
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
fload 3
fadd
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/lastPro2X F
goto L5
L6:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mPercent I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokestatic com/common/android/utils/CanvasUtils/calculateTextBound(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Point;
astore 8
aload 1
aload 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mWidth I
aload 8
getfield android/graphics/Point/x I
isub
iconst_2
idiv
i2f
aload 8
getfield android/graphics/Point/y I
iconst_2
idiv
iload 4
iadd
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
goto L7
.limit locals 9
.limit stack 7
.end method

.method public setProgress(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/postInvalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setShowType(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mShowType I
return
.limit locals 2
.limit stack 2
.end method

.method public setValue(II)V
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
aload 0
iload 2
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mMax I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/postInvalidate()V
return
.limit locals 3
.limit stack 2
.end method

.method public updateProgress(I)V
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
if_icmpge L0
return
L0:
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mUpToPercent I
bipush 30
if_icmpgt L1
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
L2:
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/postInvalidate()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
iconst_1
iadd
putfield com/nd/android/u/tast/main/widget/CircleLiquidProgressView/mProgress I
goto L2
.limit locals 2
.limit stack 3
.end method
