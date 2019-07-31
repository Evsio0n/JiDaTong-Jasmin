.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/ImageSizeUtils
.super java/lang/Object

.field private static synthetic '$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$ViewScaleType' [I

.field private static final 'DEFAULT_MAX_BITMAP_DIMENSION' I = 2048


.field private static 'maxBitmapSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.method static synthetic $SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$ViewScaleType()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
getstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$ViewScaleType [I
astore 0
aload 0
ifnull L5
aload 0
areturn
L5:
invokestatic com/nostra13/universalimageloader/core/assist/ViewScaleType/values()[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invokevirtual com/nostra13/universalimageloader/core/assist/ViewScaleType/ordinal()I
iconst_2
iastore
L1:
aload 0
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invokevirtual com/nostra13/universalimageloader/core/assist/ViewScaleType/ordinal()I
iconst_1
iastore
L3:
aload 0
putstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$ViewScaleType [I
aload 0
areturn
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method static <clinit>()V
iconst_1
newarray int
astore 1
sipush 3379
aload 1
iconst_0
invokestatic android/opengl/GLES10/glGetIntegerv(I[II)V
aload 1
iconst_0
iaload
sipush 2048
invokestatic java/lang/Math/max(II)I
istore 0
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
iload 0
iload 0
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
putstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/maxBitmapSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
return
.limit locals 2
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 7
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 8
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 9
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 10
iconst_1
istore 5
iconst_1
istore 4
iconst_1
istore 6
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$ViewScaleType()[I
aload 2
invokevirtual com/nostra13/universalimageloader/core/assist/ViewScaleType/ordinal()I
iaload
tableswitch 1
L0
L1
default : L2
L2:
iload 6
istore 4
L3:
iload 4
istore 5
iload 4
iconst_1
if_icmpge L4
iconst_1
istore 5
L4:
iload 7
iload 8
iload 5
iload 3
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/considerMaxTextureSize(IIIZ)I
ireturn
L0:
iload 3
ifeq L5
iload 7
iconst_2
idiv
istore 6
iload 8
iconst_2
idiv
istore 11
L6:
iload 6
iload 5
idiv
iload 9
if_icmpgt L7
iload 5
istore 4
iload 11
iload 5
idiv
iload 10
if_icmple L3
L7:
iload 5
iconst_2
imul
istore 5
goto L6
L5:
iload 7
iload 9
idiv
iload 8
iload 10
idiv
invokestatic java/lang/Math/max(II)I
istore 4
goto L3
L1:
iload 3
ifeq L8
iload 7
iconst_2
idiv
istore 6
iload 8
iconst_2
idiv
istore 11
iload 4
istore 5
L9:
iload 5
istore 4
iload 6
iload 5
idiv
iload 9
if_icmple L3
iload 5
istore 4
iload 11
iload 5
idiv
iload 10
if_icmple L3
iload 5
iconst_2
imul
istore 5
goto L9
L8:
iload 7
iload 9
idiv
iload 8
iload 10
idiv
invokestatic java/lang/Math/min(II)I
istore 4
goto L3
.limit locals 12
.limit stack 4
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 8
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 9
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 7
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 6
iload 8
i2f
iload 7
i2f
fdiv
fstore 4
iload 9
i2f
iload 6
i2f
fdiv
fstore 5
aload 2
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
if_acmpne L0
fload 4
fload 5
fcmpl
ifge L1
L0:
aload 2
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
if_acmpne L2
fload 4
fload 5
fcmpg
ifge L2
L1:
iload 9
i2f
fload 4
fdiv
f2i
istore 6
L3:
fconst_1
fstore 5
iload 3
ifne L4
iload 7
iload 8
if_icmpge L4
iload 6
iload 9
if_icmplt L5
L4:
fload 5
fstore 4
iload 3
ifeq L6
fload 5
fstore 4
iload 7
iload 8
if_icmpeq L6
fload 5
fstore 4
iload 6
iload 9
if_icmpeq L6
L5:
iload 7
i2f
iload 8
i2f
fdiv
fstore 4
L6:
fload 4
freturn
L2:
iload 8
i2f
fload 5
fdiv
f2i
istore 7
goto L3
.limit locals 10
.limit stack 2
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)I
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 1
aload 0
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 2
getstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/maxBitmapSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 3
getstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/maxBitmapSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 4
iload 1
i2f
iload 3
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
iload 2
i2f
iload 4
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
invokestatic java/lang/Math/max(II)I
ireturn
.limit locals 5
.limit stack 3
.end method

.method private static considerMaxTextureSize(IIIZ)I
getstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/maxBitmapSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 4
getstatic com/nostra13/universalimageloader/utils/ImageSizeUtils/maxBitmapSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 5
L0:
iload 0
iload 2
idiv
iload 4
if_icmpgt L1
iload 1
iload 2
idiv
iload 5
if_icmpgt L1
iload 2
ireturn
L1:
iload 3
ifeq L2
iload 2
iconst_2
imul
istore 2
goto L0
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 6
.limit stack 2
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWidth()I 0
istore 3
iload 3
istore 2
iload 3
ifgt L0
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
istore 2
L0:
aload 0
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getHeight()I 0
istore 4
iload 4
istore 3
iload 4
ifgt L1
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
istore 3
L1:
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
iload 2
iload 3
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
areturn
.limit locals 5
.limit stack 4
.end method
