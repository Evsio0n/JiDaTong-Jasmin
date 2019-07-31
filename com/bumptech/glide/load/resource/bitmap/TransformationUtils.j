.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/resource/bitmap/TransformationUtils
.super java/lang/Object

.field public static final 'PAINT_FLAGS' I = 6


.field private static final 'TAG' Ljava/lang/String; = "TransformationUtils"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 1
ifnonnull L0
aconst_null
astore 7
L1:
aload 7
areturn
L0:
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
iload 2
if_icmpne L2
aload 1
astore 7
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iload 3
if_icmpeq L1
L2:
fconst_0
fstore 4
fconst_0
fstore 5
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 7
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
iload 3
imul
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iload 2
imul
if_icmple L3
iload 3
i2f
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fdiv
fstore 6
iload 2
i2f
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 6
fmul
fsub
ldc_w 0.5F
fmul
fstore 4
L4:
aload 7
fload 6
fload 6
invokevirtual android/graphics/Matrix/setScale(FF)V
aload 7
fload 4
ldc_w 0.5F
fadd
f2i
i2f
fload 5
ldc_w 0.5F
fadd
f2i
i2f
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
ifnull L5
L6:
aload 1
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
new android/graphics/Canvas
dup
aload 0
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
aload 1
aload 7
new android/graphics/Paint
dup
bipush 6
invokespecial android/graphics/Paint/<init>(I)V
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
aload 0
areturn
L3:
iload 2
i2f
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
fstore 6
iload 3
i2f
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 6
fmul
fsub
ldc_w 0.5F
fmul
fstore 5
goto L4
L5:
iload 2
iload 3
aload 1
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 0
goto L6
.limit locals 8
.limit stack 6
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
iload 2
if_icmpne L0
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
iload 3
if_icmpne L0
ldc "TransformationUtils"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "TransformationUtils"
ldc "requested target size matches input, returning input"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
areturn
L0:
iload 2
i2f
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
iload 3
i2f
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fdiv
invokestatic java/lang/Math/min(FF)F
fstore 4
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 4
fmul
f2i
istore 5
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 4
fmul
f2i
istore 6
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
iload 5
if_icmpne L2
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
iload 6
if_icmpne L2
ldc "TransformationUtils"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "TransformationUtils"
ldc "adjusted target size matches input, returning input"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
areturn
L2:
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
astore 8
aload 1
iload 5
iload 6
aload 8
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 7
aload 7
astore 1
aload 7
ifnonnull L3
iload 5
iload 6
aload 8
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 1
L3:
aload 0
aload 1
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
ldc "TransformationUtils"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
ldc "TransformationUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "request: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "TransformationUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "toFit:   "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "TransformationUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "toReuse: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "TransformationUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "minPct:   "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
fload 4
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
new android/graphics/Canvas
dup
aload 1
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 7
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 8
aload 8
fload 4
fload 4
invokevirtual android/graphics/Matrix/setScale(FF)V
aload 7
aload 0
aload 8
new android/graphics/Paint
dup
bipush 6
invokespecial android/graphics/Paint/<init>(I)V
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
aload 1
areturn
.limit locals 9
.limit stack 6
.end method

.method public static getExifOrientationDegrees(I)I
iload 0
tableswitch 3
L0
L0
L1
L1
L2
L2
default : L3
L3:
iconst_0
ireturn
L1:
bipush 90
ireturn
L0:
sipush 180
ireturn
L2:
sipush 270
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getOrientation(Ljava/lang/String;)I
.annotation visible Ljava/lang/Deprecated;
.end annotation
.annotation invisible Landroid/annotation/TargetApi;
value I = 5
.end annotation
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 1
L0:
new android/media/ExifInterface
dup
aload 0
invokespecial android/media/ExifInterface/<init>(Ljava/lang/String;)V
ldc "Orientation"
iconst_0
invokevirtual android/media/ExifInterface/getAttributeInt(Ljava/lang/String;I)I
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getExifOrientationDegrees(I)I
istore 2
L1:
iload 2
istore 1
L3:
iload 1
ireturn
L2:
astore 3
ldc "TransformationUtils"
bipush 6
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
ldc "TransformationUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to get orientation for image with path="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
aload 0
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
ifnull L0
aload 0
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
areturn
L0:
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
areturn
.limit locals 1
.limit stack 1
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
iload 0
tableswitch 2
L0
L1
L2
L3
L4
L5
L6
default : L7
L7:
return
L0:
aload 1
ldc_w -1.0F
fconst_1
invokevirtual android/graphics/Matrix/setScale(FF)V
return
L1:
aload 1
ldc_w 180.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
return
L2:
aload 1
ldc_w 180.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
aload 1
ldc_w -1.0F
fconst_1
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
return
L3:
aload 1
ldc_w 90.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
aload 1
ldc_w -1.0F
fconst_1
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
return
L4:
aload 1
ldc_w 90.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
return
L5:
aload 1
ldc_w -90.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
aload 1
ldc_w -1.0F
fconst_1
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
return
L6:
aload 1
ldc_w -90.0F
invokevirtual android/graphics/Matrix/setRotate(F)V
return
.limit locals 2
.limit stack 3
.end method

.method public static orientImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 1
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getOrientation(Ljava/lang/String;)I
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
astore 2
aload 2
astore 3
iload 1
ifeq L1
L0:
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 3
aload 3
iload 1
i2f
invokevirtual android/graphics/Matrix/setRotate(F)V
aload 0
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
aload 3
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 3
L1:
aload 3
areturn
L2:
astore 0
aload 2
astore 3
ldc "TransformationUtils"
bipush 6
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "TransformationUtils"
ldc "Exception when trying to orient image"
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 2
areturn
.limit locals 4
.limit stack 7
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 5
iload 2
aload 5
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
aload 5
invokevirtual android/graphics/Matrix/isIdentity()Z
ifeq L0
aload 0
areturn
L0:
new android/graphics/RectF
dup
fconst_0
fconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 6
aload 5
aload 6
invokevirtual android/graphics/Matrix/mapRect(Landroid/graphics/RectF;)Z
pop
aload 6
invokevirtual android/graphics/RectF/width()F
invokestatic java/lang/Math/round(F)I
istore 2
aload 6
invokevirtual android/graphics/RectF/height()F
invokestatic java/lang/Math/round(F)I
istore 3
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
astore 7
aload 1
iload 2
iload 3
aload 7
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 4
aload 4
astore 1
aload 4
ifnonnull L1
iload 2
iload 3
aload 7
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 1
L1:
aload 5
aload 6
getfield android/graphics/RectF/left F
fneg
aload 6
getfield android/graphics/RectF/top F
fneg
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
new android/graphics/Canvas
dup
aload 1
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
aload 0
aload 5
new android/graphics/Paint
dup
bipush 6
invokespecial android/graphics/Paint/<init>(I)V
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
aload 1
areturn
.limit locals 8
.limit stack 6
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 12
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 12
if_icmplt L0
aload 1
ifnull L0
aload 1
aload 0
invokevirtual android/graphics/Bitmap/hasAlpha()Z
invokevirtual android/graphics/Bitmap/setHasAlpha(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method
