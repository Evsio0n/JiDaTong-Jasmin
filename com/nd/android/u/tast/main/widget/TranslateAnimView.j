.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/TranslateAnimView
.super android/view/View

.field private final 'ANIM_OFFSET' I

.field private final 'WIDTH_SPLIT' I

.field private 'hua1' Landroid/graphics/Bitmap;

.field private 'hua2' Landroid/graphics/Bitmap;

.field private 'huaHeight' I

.field private 'isRunning' Z

.field private 'lastX1' I

.field private 'lastX2' I

.field private 'lastY' I

.field private 'offset' I

.field private 'paint' Landroid/graphics/Paint;

.field private 'width' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/main/widget/TranslateAnimView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/tast/main/widget/TranslateAnimView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
iconst_m1
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/isRunning Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/paint Landroid/graphics/Paint;
aload 0
bipush 60
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/ANIM_OFFSET I
aload 0
bipush 40
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/WIDTH_SPLIT I
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/hua1 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/hua2 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua2 Landroid/graphics/Bitmap;
return
.limit locals 4
.limit stack 4
.end method

.method private initPostion()V
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
ineg
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
ineg
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
return
.limit locals 1
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
iconst_m1
if_icmpne L0
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/getWidth()I
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
bipush 40
idiv
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
i2f
fdiv
fstore 2
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 3
aload 3
fload 2
fload 2
invokevirtual android/graphics/Matrix/setScale(FF)V
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
aload 3
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua2 Landroid/graphics/Bitmap;
aload 3
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua2 Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
aload 0
invokespecial com/nd/android/u/tast/main/widget/TranslateAnimView/initPostion()V
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/isRunning Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/huaHeight I
isub
if_icmpge L2
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
iadd
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
isub
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
L3:
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
iadd
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/width I
ineg
if_icmpgt L4
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
iflt L4
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/isRunning Z
L4:
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua1 Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/hua2 Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastY I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
ldc2_w 60L
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/postInvalidateDelayed(J)V
L1:
return
L2:
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
isub
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX1 I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
aload 0
getfield com/nd/android/u/tast/main/widget/TranslateAnimView/offset I
iadd
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/lastX2 I
goto L3
.limit locals 4
.limit stack 5
.end method

.method public startAnimation()V
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/isRunning Z
aload 0
invokespecial com/nd/android/u/tast/main/widget/TranslateAnimView/initPostion()V
aload 0
ldc2_w 60L
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/postInvalidateDelayed(J)V
return
.limit locals 1
.limit stack 3
.end method

.method public stopAnimation()V
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/TranslateAnimView/isRunning Z
return
.limit locals 1
.limit stack 2
.end method
