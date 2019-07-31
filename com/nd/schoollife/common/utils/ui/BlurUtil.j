.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/BlurUtil
.super java/lang/Object

.field public static final 'BLUR_DEFAULT_RADIO' I = 10


.field public static final 'BLUR_SCALE_TYPE_H' I = 2305


.field public static final 'BLUR_SCALE_TYPE_W' I = 2304


.field public static final 'BLUR_SCALE_TYPE_W_H' I = 2307


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static blurBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
iload 4
iload 5
imul
newarray int
astore 28
aload 0
aload 28
iconst_0
iload 4
iload 2
iload 3
iload 4
iload 5
invokevirtual android/graphics/Bitmap/getPixels([IIIIIII)V
iload 4
iconst_1
isub
istore 23
iload 5
iconst_1
isub
istore 20
iload 4
iload 5
imul
istore 6
iload 1
iload 1
iadd
iconst_1
iadd
istore 21
iload 6
newarray int
astore 29
iload 6
newarray int
astore 30
iload 6
newarray int
astore 31
iload 4
iload 5
invokestatic java/lang/Math/max(II)I
newarray int
astore 32
iload 21
iconst_1
iadd
iconst_1
ishr
istore 6
iload 6
iload 6
imul
istore 7
iload 7
sipush 256
imul
newarray int
astore 33
iconst_0
istore 6
L0:
iload 6
iload 7
sipush 256
imul
if_icmpge L1
aload 33
iload 6
iload 6
iload 7
idiv
iastore
iload 6
iconst_1
iadd
istore 6
goto L0
L1:
iconst_0
istore 17
iconst_0
istore 15
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
iconst_2
newarray int
dup
iconst_0
iload 21
iastore
dup
iconst_1
iconst_3
iastore
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
checkcast [[I
astore 34
iload 1
iconst_1
iadd
istore 22
iconst_0
istore 16
L2:
iload 16
iload 5
if_icmpge L3
iconst_0
istore 11
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 7
iconst_0
istore 10
iconst_0
istore 12
iconst_0
istore 6
iconst_0
istore 8
iconst_0
istore 9
iload 1
ineg
istore 18
L4:
iload 18
iload 1
if_icmpgt L5
aload 28
iload 23
iload 18
iconst_0
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/min(II)I
iload 17
iadd
iaload
istore 19
aload 34
iload 18
iload 1
iadd
aaload
astore 35
aload 35
iconst_0
ldc_w 16711680
iload 19
iand
bipush 16
ishr
iastore
aload 35
iconst_1
ldc_w 65280
iload 19
iand
bipush 8
ishr
iastore
aload 35
iconst_2
iload 19
sipush 255
iand
iastore
iload 22
iload 18
invokestatic java/lang/Math/abs(I)I
isub
istore 19
iload 14
aload 35
iconst_0
iaload
iload 19
imul
iadd
istore 14
iload 13
aload 35
iconst_1
iaload
iload 19
imul
iadd
istore 13
iload 11
aload 35
iconst_2
iaload
iload 19
imul
iadd
istore 11
iload 18
ifle L6
iload 9
aload 35
iconst_0
iaload
iadd
istore 9
iload 8
aload 35
iconst_1
iaload
iadd
istore 8
iload 6
aload 35
iconst_2
iaload
iadd
istore 6
L7:
iload 18
iconst_1
iadd
istore 18
goto L4
L6:
iload 12
aload 35
iconst_0
iaload
iadd
istore 12
iload 10
aload 35
iconst_1
iaload
iadd
istore 10
iload 7
aload 35
iconst_2
iaload
iadd
istore 7
goto L7
L5:
iload 1
istore 19
iconst_0
istore 18
L8:
iload 18
iload 4
if_icmpge L9
aload 29
iload 17
aload 33
iload 14
iaload
iastore
aload 30
iload 17
aload 33
iload 13
iaload
iastore
aload 31
iload 17
aload 33
iload 11
iaload
iastore
aload 34
iload 19
iload 1
isub
iload 21
iadd
iload 21
irem
aaload
astore 35
aload 35
iconst_0
iaload
istore 26
aload 35
iconst_1
iaload
istore 25
aload 35
iconst_2
iaload
istore 24
iload 16
ifne L10
aload 32
iload 18
iload 18
iload 1
iadd
iconst_1
iadd
iload 23
invokestatic java/lang/Math/min(II)I
iastore
L10:
aload 28
aload 32
iload 18
iaload
iload 15
iadd
iaload
istore 27
aload 35
iconst_0
ldc_w 16711680
iload 27
iand
bipush 16
ishr
iastore
aload 35
iconst_1
ldc_w 65280
iload 27
iand
bipush 8
ishr
iastore
aload 35
iconst_2
iload 27
sipush 255
iand
iastore
iload 9
aload 35
iconst_0
iaload
iadd
istore 9
iload 8
aload 35
iconst_1
iaload
iadd
istore 8
iload 6
aload 35
iconst_2
iaload
iadd
istore 6
iload 14
iload 12
isub
iload 9
iadd
istore 14
iload 13
iload 10
isub
iload 8
iadd
istore 13
iload 11
iload 7
isub
iload 6
iadd
istore 11
iload 19
iconst_1
iadd
iload 21
irem
istore 19
aload 34
iload 19
iload 21
irem
aaload
astore 35
iload 12
iload 26
isub
aload 35
iconst_0
iaload
iadd
istore 12
iload 10
iload 25
isub
aload 35
iconst_1
iaload
iadd
istore 10
iload 7
iload 24
isub
aload 35
iconst_2
iaload
iadd
istore 7
iload 9
aload 35
iconst_0
iaload
isub
istore 9
iload 8
aload 35
iconst_1
iaload
isub
istore 8
iload 6
aload 35
iconst_2
iaload
isub
istore 6
iload 17
iconst_1
iadd
istore 17
iload 18
iconst_1
iadd
istore 18
goto L8
L9:
iload 15
iload 4
iadd
istore 15
iload 16
iconst_1
iadd
istore 16
goto L2
L3:
iconst_0
istore 6
L11:
iload 6
iload 4
if_icmpge L12
iconst_0
istore 12
iconst_0
istore 14
iconst_0
istore 15
iconst_0
istore 8
iconst_0
istore 11
iconst_0
istore 13
iconst_0
istore 7
iconst_0
istore 9
iconst_0
istore 10
iload 1
ineg
iload 4
imul
istore 16
iload 1
ineg
istore 17
L13:
iload 17
iload 1
if_icmpgt L14
iconst_0
iload 16
invokestatic java/lang/Math/max(II)I
iload 6
iadd
istore 18
aload 34
iload 17
iload 1
iadd
aaload
astore 35
aload 35
iconst_0
aload 29
iload 18
iaload
iastore
aload 35
iconst_1
aload 30
iload 18
iaload
iastore
aload 35
iconst_2
aload 31
iload 18
iaload
iastore
iload 22
iload 17
invokestatic java/lang/Math/abs(I)I
isub
istore 19
iload 15
aload 29
iload 18
iaload
iload 19
imul
iadd
istore 15
iload 14
aload 30
iload 18
iaload
iload 19
imul
iadd
istore 14
iload 12
aload 31
iload 18
iaload
iload 19
imul
iadd
istore 12
iload 17
ifle L15
iload 10
aload 35
iconst_0
iaload
iadd
istore 10
iload 9
aload 35
iconst_1
iaload
iadd
istore 9
iload 7
aload 35
iconst_2
iaload
iadd
istore 7
L16:
iload 16
istore 18
iload 17
iload 20
if_icmpge L17
iload 16
iload 4
iadd
istore 18
L17:
iload 17
iconst_1
iadd
istore 17
iload 18
istore 16
goto L13
L15:
iload 13
aload 35
iconst_0
iaload
iadd
istore 13
iload 11
aload 35
iconst_1
iaload
iadd
istore 11
iload 8
aload 35
iconst_2
iaload
iadd
istore 8
goto L16
L14:
iload 6
istore 17
iload 1
istore 18
iconst_0
istore 16
L18:
iload 16
iload 5
if_icmpge L19
aload 28
iload 17
ldc_w -16777216
aload 28
iload 17
iaload
iand
aload 33
iload 15
iaload
bipush 16
ishl
ior
aload 33
iload 14
iaload
bipush 8
ishl
ior
aload 33
iload 12
iaload
ior
iastore
aload 34
iload 18
iload 1
isub
iload 21
iadd
iload 21
irem
aaload
astore 35
aload 35
iconst_0
iaload
istore 24
aload 35
iconst_1
iaload
istore 23
aload 35
iconst_2
iaload
istore 19
iload 6
ifne L20
aload 32
iload 16
iload 16
iload 22
iadd
iload 20
invokestatic java/lang/Math/min(II)I
iload 4
imul
iastore
L20:
iload 6
aload 32
iload 16
iaload
iadd
istore 25
aload 35
iconst_0
aload 29
iload 25
iaload
iastore
aload 35
iconst_1
aload 30
iload 25
iaload
iastore
aload 35
iconst_2
aload 31
iload 25
iaload
iastore
iload 10
aload 35
iconst_0
iaload
iadd
istore 10
iload 9
aload 35
iconst_1
iaload
iadd
istore 9
iload 7
aload 35
iconst_2
iaload
iadd
istore 7
iload 15
iload 13
isub
iload 10
iadd
istore 15
iload 14
iload 11
isub
iload 9
iadd
istore 14
iload 12
iload 8
isub
iload 7
iadd
istore 12
iload 18
iconst_1
iadd
iload 21
irem
istore 18
aload 34
iload 18
aaload
astore 35
iload 13
iload 24
isub
aload 35
iconst_0
iaload
iadd
istore 13
iload 11
iload 23
isub
aload 35
iconst_1
iaload
iadd
istore 11
iload 8
iload 19
isub
aload 35
iconst_2
iaload
iadd
istore 8
iload 10
aload 35
iconst_0
iaload
isub
istore 10
iload 9
aload 35
iconst_1
iaload
isub
istore 9
iload 7
aload 35
iconst_2
iaload
isub
istore 7
iload 17
iload 4
iadd
istore 17
iload 16
iconst_1
iadd
istore 16
goto L18
L19:
iload 6
iconst_1
iadd
istore 6
goto L11
L12:
aload 0
aload 28
iconst_0
iload 4
iload 2
iload 3
iload 4
iload 5
invokevirtual android/graphics/Bitmap/setPixels([IIIIIII)V
aload 0
areturn
.limit locals 36
.limit stack 8
.end method

.method public static blurBitmapByCoordinate(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
aload 0
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 0
iload 1
iconst_1
if_icmplt L0
iload 4
ifle L0
iload 5
ifgt L1
L0:
aload 0
areturn
L1:
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
areturn
.limit locals 6
.limit stack 6
.end method

.method public static blurBitmapByScale(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
aload 0
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 0
iload 1
iconst_1
if_icmpge L0
aload 0
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 5
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 4
iload 3
tableswitch 2304
L1
L2
L3
L4
default : L3
L3:
aload 0
areturn
L1:
iload 5
i2f
fload 2
fmul
f2d
ldc2_w 0.5D
dadd
d2i
istore 3
L5:
aload 0
iload 1
iconst_0
iconst_0
iload 3
iload 4
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
areturn
L2:
iload 4
i2f
fload 2
fmul
f2d
ldc2_w 0.5D
dadd
d2i
istore 4
iload 5
istore 3
goto L5
L4:
iload 5
i2f
fload 2
fmul
f2d
ldc2_w 0.5D
dadd
d2i
istore 3
iload 4
i2f
fload 2
fmul
f2d
ldc2_w 0.5D
dadd
d2i
istore 4
goto L5
.limit locals 6
.limit stack 6
.end method

.method public static blurBitmapBySize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
aload 0
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 0
iload 1
iconst_1
if_icmplt L0
iload 2
ifle L0
iload 3
ifgt L1
L0:
aload 0
areturn
L1:
aload 0
iload 1
iconst_0
iconst_0
iload 2
iload 3
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 6
.end method

.method public static blurFullBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
aload 0
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnonnull L0
aload 0
areturn
L0:
iload 1
iconst_1
if_icmpge L1
aload 2
areturn
L1:
aload 2
iload 1
iconst_0
iconst_0
aload 2
invokevirtual android/graphics/Bitmap/getWidth()I
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 6
.end method

.method private static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
astore 1
L0:
aload 0
aload 1
iconst_1
invokevirtual android/graphics/Bitmap/copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method
