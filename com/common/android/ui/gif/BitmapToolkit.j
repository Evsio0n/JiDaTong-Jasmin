.bytecode 50.0
.class public synchronized com/common/android/ui/gif/BitmapToolkit
.super java/lang/Object
.inner class public static BitmapMemoryMgr inner com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr outer com/common/android/ui/gif/BitmapToolkit
.inner class public static FlushedInputStream inner com/common/android/ui/gif/BitmapToolkit$FlushedInputStream outer com/common/android/ui/gif/BitmapToolkit

.field public static final 'CROP_IMAGE_MAX_HEIGHT' I = 800


.field public static final 'CROP_IMAGE_MAX_WIDTH' I = 480


.field public static final 'DEFAULT_COMPRESS_QUALITY' I = 80


.field public static final 'DIR_IM_AUDIO' Ljava/lang/String;

.field public static final 'DIR_IM_MAP' Ljava/lang/String;

.field public static final 'DIR_IM_PICTURE' Ljava/lang/String;

.field public static final 'DIR_PHOTO' Ljava/lang/String;

.field private static final 'DIR_ROOT' Ljava/lang/String;

.field public static final 'DIR_SHOW_AUDIO' Ljava/lang/String;

.field public static final 'DIR_SHOW_IMAGE' Ljava/lang/String;

.field public static final 'DIR_SHOW_VIDEO' Ljava/lang/String;

.field public static final 'DIR_SMALL_AVATAR' Ljava/lang/String;

.field protected static final 'MAX_BITMAP_HIGHT' I = 1024


.field protected static final 'MAX_BITMAP_WIDTH' I = 768


.field private static final 'MAX_THUMB_LONG' I = 120


.field private static final 'MAX_THUMB_SHORT' I = 30


.field public static final 'SELECT_IMAGE_MIN_SIDE' I = 120


.field private static final 'TAG' Ljava/lang/String; = "BitmapToolkit"

.field public static final 'UPLOAD_IMAGE_MAX_WIDTH' I = 640


.field private 'mDirectory' Ljava/lang/String;

.field private 'mName' Ljava/lang/String;

.field private 'mPrefix' Ljava/lang/String;

.field private 'mRemoteUrl' Ljava/lang/String;

.field private 'mSuffix' Ljava/lang/String;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/MoMoShow/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photo/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_PHOTO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "show/image/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_SHOW_IMAGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "show/audio/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_SHOW_AUDIO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "show/video/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_SHOW_VIDEO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "avatar/130/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_SMALL_AVATAR Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "im/picture/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_IM_PICTURE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "im/audio/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_IM_AUDIO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "im/map/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/common/android/ui/gif/BitmapToolkit/DIR_IM_MAP Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
putfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mRemoteUrl Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
aload 0
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_PHOTO Ljava/lang/String;
putfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
aload 0
aload 2
putfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
aload 0
aload 3
putfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
aload 0
aload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/stringToMD5(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
aload 0
aload 1
putfield com/common/android/ui/gif/BitmapToolkit/mRemoteUrl Ljava/lang/String;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/mkdirsIfNotExist()V
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
putfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mRemoteUrl Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
aload 0
aload 1
putfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
aload 0
aload 3
putfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
aload 0
aload 4
putfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
aload 0
aload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/stringToMD5(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
aload 0
aload 2
putfield com/common/android/ui/gif/BitmapToolkit/mRemoteUrl Ljava/lang/String;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/mkdirsIfNotExist()V
return
.limit locals 5
.limit stack 2
.end method

.method public static BitmapToByteArray(Landroid/graphics/Bitmap;)[B
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 60
aload 1
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
.limit locals 2
.limit stack 4
.end method

.method public static ByteArrayToBitmap([B)Landroid/graphics/Bitmap;
aload 0
iconst_0
aload 0
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static MinWidthOrHeightOfBitmap(Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
invokestatic java/lang/Math/min(II)I
istore 1
L1:
iload 1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static ShrinkBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
.throws java/lang/Exception
.throws java/lang/OutOfMemoryError
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 4
aload 4
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
iload 1
aload 4
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 4
getfield android/graphics/BitmapFactory$Options/outHeight I
i2f
iload 3
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 3
aload 4
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
iload 2
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 2
iload 3
iconst_1
if_icmpgt L0
iload 2
iconst_1
if_icmple L1
L0:
iload 3
iload 2
if_icmple L2
aload 4
iload 3
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L1:
aload 4
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 4
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 4
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 4
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
iload 1
aload 4
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
L2:
aload 4
iload 2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
goto L1
.limit locals 5
.limit stack 3
.end method

.method public static ShrinkBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
iload 1
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 1
L1:
iload 1
iconst_1
if_icmple L4
L3:
aload 2
iload 1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L4:
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 2
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
L5:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public static ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.throws java/lang/Exception
.throws java/lang/OutOfMemoryError
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 3
getfield android/graphics/BitmapFactory$Options/outHeight I
i2f
iload 2
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 2
aload 3
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
iload 1
i2f
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 1
iload 2
iconst_1
if_icmpgt L0
iload 1
iconst_1
if_icmple L1
L0:
iload 2
iload 1
if_icmple L2
aload 3
iload 2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L1:
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 3
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
L2:
aload 3
iload 1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
goto L1
.limit locals 4
.limit stack 2
.end method

.method public static ShrinkCropBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
iload 1
i2f
fdiv
f2d
invokestatic java/lang/Math/floor(D)D
d2i
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 2
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public static ShrinkCropBitmapWithRotate(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
.catch java/lang/OutOfMemoryError from L7 to L8 using L2
.catch java/lang/OutOfMemoryError from L9 to L10 using L2
.catch java/lang/OutOfMemoryError from L11 to L12 using L2
.catch java/lang/OutOfMemoryError from L13 to L14 using L2
.catch java/lang/OutOfMemoryError from L15 to L16 using L2
.catch java/lang/OutOfMemoryError from L17 to L18 using L2
.catch java/lang/OutOfMemoryError from L19 to L20 using L2
.catch java/lang/OutOfMemoryError from L21 to L22 using L2
.catch java/lang/OutOfMemoryError from L23 to L24 using L2
.catch java/lang/OutOfMemoryError from L25 to L26 using L27
.catch java/lang/OutOfMemoryError from L28 to L29 using L27
.catch java/lang/OutOfMemoryError from L30 to L31 using L27
.catch java/lang/OutOfMemoryError from L32 to L33 using L27
.catch java/lang/OutOfMemoryError from L34 to L35 using L27
.catch java/lang/OutOfMemoryError from L36 to L37 using L27
.catch java/lang/OutOfMemoryError from L38 to L39 using L27
.catch java/lang/OutOfMemoryError from L40 to L41 using L27
.catch java/lang/OutOfMemoryError from L42 to L43 using L27
.catch java/lang/OutOfMemoryError from L44 to L45 using L27
.catch java/lang/OutOfMemoryError from L46 to L47 using L27
.catch java/lang/OutOfMemoryError from L48 to L49 using L27
aconst_null
astore 7
iconst_0
istore 3
aload 7
astore 6
iload 3
istore 4
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 8
L1:
aload 7
astore 6
iload 3
istore 4
L3:
aload 8
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L4:
aload 7
astore 6
iload 3
istore 4
L5:
aload 0
aload 8
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 7
L6:
aload 7
astore 6
iload 3
istore 4
L7:
aload 8
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 3
L8:
aload 7
astore 6
iload 3
istore 4
L9:
iload 3
i2f
iload 2
i2f
fdiv
f2d
invokestatic java/lang/Math/floor(D)D
d2i
istore 5
L10:
iload 5
iconst_1
if_icmple L12
aload 7
astore 6
iload 3
istore 4
L11:
aload 8
iload 5
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L12:
aload 7
astore 6
iload 3
istore 4
L13:
aload 8
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L14:
aload 7
astore 6
iload 3
istore 4
L15:
aload 8
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
L16:
aload 7
astore 6
iload 3
istore 4
L17:
aload 8
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L18:
aload 7
astore 6
iload 3
istore 4
L19:
aload 8
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
L20:
aload 7
astore 6
iload 3
istore 4
L21:
aload 0
aload 8
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 7
L22:
aload 7
astore 6
iload 1
ifle L50
aload 7
astore 6
iload 3
istore 4
L23:
aload 7
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 7
L24:
aload 7
astore 6
L50:
aload 6
areturn
L2:
astore 7
aload 6
ifnull L51
aload 6
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L51
aload 6
invokevirtual android/graphics/Bitmap/recycle()V
L51:
iload 2
sipush 720
if_icmple L52
sipush 540
istore 3
L53:
aload 6
astore 7
L25:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 9
L26:
aload 6
astore 8
iload 4
istore 2
iload 4
iconst_1
if_icmpge L33
aload 6
astore 7
L28:
aload 9
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L29:
aload 6
astore 7
L30:
aload 0
aload 9
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 8
L31:
aload 8
astore 7
L32:
aload 9
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 2
L33:
aload 8
astore 7
L34:
iload 2
i2f
iload 3
i2f
fdiv
f2d
invokestatic java/lang/Math/floor(D)D
d2i
istore 2
L35:
iload 2
iconst_1
if_icmple L37
aload 8
astore 7
L36:
aload 9
iload 2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L37:
aload 8
astore 7
L38:
aload 9
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L39:
aload 8
astore 7
L40:
aload 9
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
L41:
aload 8
astore 7
L42:
aload 9
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L43:
aload 8
astore 7
L44:
aload 9
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
L45:
aload 8
astore 7
L46:
aload 0
aload 9
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
L47:
aload 0
astore 6
iload 1
ifle L49
aload 0
astore 7
L48:
aload 0
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 6
L49:
aload 6
areturn
L52:
iload 2
sipush 540
if_icmple L54
sipush 480
istore 3
goto L53
L54:
iload 2
istore 3
iload 2
sipush 320
if_icmple L53
sipush 320
istore 3
goto L53
L27:
astore 0
aload 7
ifnull L55
aload 7
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L55
aload 7
invokevirtual android/graphics/Bitmap/recycle()V
L55:
aconst_null
areturn
.limit locals 10
.limit stack 2
.end method

.method public static addImage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 0
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 7
aload 0
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_data"
aastore
ldc "_data=? "
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 7
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 7
iconst_0
istore 4
iload 4
istore 3
aload 7
ifnull L1
iload 4
istore 3
aload 7
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "media photo find:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokeinterface android/database/Cursor/getCount()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
istore 3
L1:
aload 7
ifnull L2
aload 7
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L2
aload 7
invokeinterface android/database/Cursor/close()V 0
L2:
iload 3
ifeq L3
aconst_null
areturn
L3:
aload 1
invokevirtual java/io/File/length()J
lstore 5
new android/content/ContentValues
dup
bipush 7
invokespecial android/content/ContentValues/<init>(I)V
astore 7
aload 7
ldc "title"
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "_display_name"
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "datetaken"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 7
ldc "mime_type"
aload 2
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "orientation"
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 7
ldc "_data"
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "_size"
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
aload 7
invokevirtual android/content/ContentResolver/insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
areturn
.limit locals 8
.limit stack 8
.end method

.method public static available()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 0
.limit stack 2
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
istore 8
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 9
iconst_1
istore 7
iload 1
istore 6
iload 2
istore 5
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
if_icmpge L0
iload 1
istore 5
iload 2
istore 6
L0:
iload 8
iload 5
if_icmpgt L1
iload 7
istore 2
iload 9
iload 6
if_icmple L2
L1:
iload 9
iload 8
if_icmple L3
iload 8
i2f
iload 5
i2f
fdiv
invokestatic java/lang/Math/round(F)I
istore 1
L4:
iload 9
iload 8
imul
i2f
fstore 3
iload 6
iload 5
imul
iconst_2
imul
i2f
fstore 4
L5:
iload 1
istore 2
fload 3
iload 1
iload 1
imul
i2f
fdiv
fload 4
fcmpl
ifle L2
iload 1
iconst_1
iadd
istore 1
goto L5
L3:
iload 9
i2f
iload 6
i2f
fdiv
invokestatic java/lang/Math/round(F)I
istore 1
goto L4
L2:
iload 2
ireturn
.limit locals 10
.limit stack 3
.end method

.method public static compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L1
aconst_null
areturn
L1:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 2
L3:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmpge L4
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
L5:
iload 1
iload 3
imul
iload 2
idiv
istore 2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L6
aload 0
iload 1
iload 2
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
L2:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 2
goto L3
L4:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 3
goto L5
L6:
aload 0
iload 2
iload 1
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static cornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
aload 0
fload 1
iconst_0
invokestatic com/common/android/ui/gif/BitmapToolkit/cornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static cornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
aload 0
fload 1
iload 2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
invokestatic com/common/android/ui/gif/BitmapToolkit/cornerBitmap(Landroid/graphics/Bitmap;FIII)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static cornerBitmap(Landroid/graphics/Bitmap;FIII)Landroid/graphics/Bitmap;
iload 3
iload 4
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 5
new android/graphics/Canvas
dup
aload 5
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 6
aload 6
invokevirtual android/graphics/Canvas/save()I
pop
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 7
new android/graphics/Rect
dup
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
invokespecial android/graphics/Rect/<init>(IIII)V
astore 8
new android/graphics/Rect
dup
iconst_0
iconst_0
iload 3
iload 4
invokespecial android/graphics/Rect/<init>(IIII)V
astore 9
new android/graphics/RectF
dup
aload 9
invokespecial android/graphics/RectF/<init>(Landroid/graphics/Rect;)V
astore 10
aload 7
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 6
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/graphics/Canvas/drawARGB(IIII)V
aload 7
ldc_w -12434878
invokevirtual android/graphics/Paint/setColor(I)V
aload 6
aload 10
fload 1
fload 1
aload 7
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 7
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 6
aload 0
aload 8
aload 9
aload 7
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
aload 6
invokevirtual android/graphics/Canvas/restore()V
aload 6
invokevirtual android/graphics/Canvas/save()I
pop
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 0
aload 0
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
iload 2
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
fconst_0
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 6
new android/graphics/RectF
dup
new android/graphics/Rect
dup
iconst_0
iconst_0
iload 3
iload 4
invokespecial android/graphics/Rect/<init>(IIII)V
invokespecial android/graphics/RectF/<init>(Landroid/graphics/Rect;)V
fload 1
fload 1
aload 0
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 6
invokevirtual android/graphics/Canvas/restore()V
aload 5
areturn
.limit locals 11
.limit stack 9
.end method

.method public static createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
L0:
new android/media/ExifInterface
dup
aload 0
invokespecial android/media/ExifInterface/<init>(Ljava/lang/String;)V
invokevirtual android/media/ExifInterface/getThumbnail()[B
astore 2
L1:
aload 2
ifnull L5
L3:
aload 2
iconst_0
aload 2
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
astore 2
L4:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L5:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
if_icmplt L6
aload 2
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
invokestatic com/common/android/ui/gif/BitmapToolkit/getScale(Landroid/graphics/BitmapFactory$Options;II)F
fstore 1
L7:
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
fload 1
fconst_1
fcmpl
ifne L8
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
L6:
aload 2
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
invokestatic com/common/android/ui/gif/BitmapToolkit/getScale(Landroid/graphics/BitmapFactory$Options;II)F
fstore 1
goto L7
L8:
fload 1
fconst_2
fdiv
fstore 1
L9:
fload 1
fconst_1
fcmpl
ifle L10
aload 2
aload 2
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_2
imul
putfield android/graphics/BitmapFactory$Options/inSampleSize I
fload 1
fconst_2
fdiv
fstore 1
goto L9
L10:
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
aload 0
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
fload 1
fconst_2
fmul
fdiv
f2i
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
i2f
fload 1
fconst_2
fmul
fdiv
f2i
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 2
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public static createThumbnailBitmap(Landroid/app/Activity;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
.catch java/lang/Error from L0 to L1 using L5
.catch all from L0 to L1 using L6
.catch java/io/IOException from L7 to L8 using L2
.catch java/lang/RuntimeException from L7 to L8 using L3
.catch java/lang/Exception from L7 to L8 using L4
.catch java/lang/Error from L7 to L8 using L5
.catch all from L7 to L8 using L6
.catch java/io/IOException from L9 to L10 using L2
.catch java/lang/RuntimeException from L9 to L10 using L3
.catch java/lang/Exception from L9 to L10 using L4
.catch java/lang/Error from L9 to L10 using L5
.catch all from L9 to L10 using L6
.catch java/lang/IllegalArgumentException from L11 to L12 using L13
.catch java/lang/SecurityException from L11 to L12 using L14
.catch java/lang/IllegalAccessException from L11 to L12 using L15
.catch java/lang/NoSuchFieldException from L11 to L12 using L16
.catch java/io/IOException from L11 to L12 using L2
.catch java/lang/RuntimeException from L11 to L12 using L3
.catch java/lang/Exception from L11 to L12 using L4
.catch java/lang/Error from L11 to L12 using L5
.catch all from L11 to L12 using L6
.catch java/io/IOException from L17 to L18 using L2
.catch java/lang/RuntimeException from L17 to L18 using L3
.catch java/lang/Exception from L17 to L18 using L4
.catch java/lang/Error from L17 to L18 using L5
.catch all from L17 to L18 using L6
.catch java/io/IOException from L19 to L20 using L2
.catch java/lang/RuntimeException from L19 to L20 using L3
.catch java/lang/Exception from L19 to L20 using L4
.catch java/lang/Error from L19 to L20 using L5
.catch all from L19 to L20 using L6
.catch java/io/IOException from L21 to L22 using L2
.catch java/lang/RuntimeException from L21 to L22 using L3
.catch java/lang/Exception from L21 to L22 using L4
.catch java/lang/Error from L21 to L22 using L5
.catch all from L21 to L22 using L6
.catch java/io/IOException from L23 to L24 using L2
.catch java/lang/RuntimeException from L23 to L24 using L3
.catch java/lang/Exception from L23 to L24 using L4
.catch java/lang/Error from L23 to L24 using L5
.catch all from L23 to L24 using L6
.catch java/io/IOException from L25 to L26 using L2
.catch java/lang/RuntimeException from L25 to L26 using L3
.catch java/lang/Exception from L25 to L26 using L4
.catch java/lang/Error from L25 to L26 using L5
.catch all from L25 to L26 using L6
.catch java/io/IOException from L27 to L28 using L2
.catch java/lang/RuntimeException from L27 to L28 using L3
.catch java/lang/Exception from L27 to L28 using L4
.catch java/lang/Error from L27 to L28 using L5
.catch all from L27 to L28 using L6
.catch java/io/IOException from L29 to L30 using L2
.catch java/lang/RuntimeException from L29 to L30 using L3
.catch java/lang/Exception from L29 to L30 using L4
.catch java/lang/Error from L29 to L30 using L5
.catch all from L29 to L30 using L6
.catch java/io/IOException from L31 to L32 using L33
.catch java/io/IOException from L34 to L35 using L2
.catch java/lang/RuntimeException from L34 to L35 using L3
.catch java/lang/Exception from L34 to L35 using L4
.catch java/lang/Error from L34 to L35 using L5
.catch all from L34 to L35 using L6
.catch all from L36 to L37 using L6
.catch java/io/IOException from L38 to L39 using L40
.catch all from L41 to L42 using L6
.catch java/io/IOException from L43 to L44 using L45
.catch all from L46 to L47 using L6
.catch java/io/IOException from L48 to L49 using L50
.catch all from L51 to L52 using L6
.catch java/io/IOException from L53 to L54 using L55
.catch java/io/IOException from L56 to L57 using L58
aconst_null
astore 10
aconst_null
astore 7
aconst_null
astore 8
aconst_null
astore 9
aconst_null
astore 4
aconst_null
astore 6
L0:
aload 0
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 5
L1:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L7:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 11
L8:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L9:
aload 11
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L10:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L11:
ldc android/graphics/BitmapFactory$Options
ldc "inNativeAlloc"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aload 11
iconst_1
invokevirtual java/lang/reflect/Field/setBoolean(Ljava/lang/Object;Z)V
L12:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L17:
aload 5
aconst_null
aload 11
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
L18:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L19:
aload 5
invokevirtual java/io/InputStream/close()V
L20:
iconst_1
istore 3
iload 2
ifeq L22
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L21:
aload 11
sipush 768
sipush 1024
invokestatic com/common/android/ui/gif/BitmapToolkit/calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
istore 3
L22:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L23:
aload 11
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L24:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L25:
aload 11
iload 3
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L26:
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L27:
aload 0
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 0
L28:
aload 0
astore 6
aload 0
astore 7
aload 0
astore 8
aload 0
astore 9
aload 0
astore 4
L29:
aload 0
aconst_null
aload 11
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 1
L30:
aload 1
astore 4
aload 4
astore 1
aload 0
ifnull L59
L31:
aload 0
invokevirtual java/io/InputStream/close()V
L32:
aload 4
astore 1
L59:
aload 1
areturn
L13:
astore 12
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
aload 5
astore 9
aload 5
astore 4
L34:
aload 12
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
L35:
goto L12
L2:
astore 0
aload 6
astore 4
L36:
aload 0
invokevirtual java/io/IOException/printStackTrace()V
L37:
aload 10
astore 1
aload 6
ifnull L59
L38:
aload 6
invokevirtual java/io/InputStream/close()V
L39:
aconst_null
areturn
L40:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L33:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 4
areturn
L3:
astore 0
aload 7
astore 4
L41:
aload 0
invokevirtual java/lang/RuntimeException/printStackTrace()V
L42:
aload 10
astore 1
aload 7
ifnull L59
L43:
aload 7
invokevirtual java/io/InputStream/close()V
L44:
aconst_null
areturn
L45:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L4:
astore 0
aload 8
astore 4
L46:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L47:
aload 10
astore 1
aload 8
ifnull L59
L48:
aload 8
invokevirtual java/io/InputStream/close()V
L49:
aconst_null
areturn
L50:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L5:
astore 0
aload 9
astore 4
L51:
aload 0
invokevirtual java/lang/Error/printStackTrace()V
L52:
aload 10
astore 1
aload 9
ifnull L59
L53:
aload 9
invokevirtual java/io/InputStream/close()V
L54:
aconst_null
areturn
L55:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L6:
astore 0
aload 4
ifnull L57
L56:
aload 4
invokevirtual java/io/InputStream/close()V
L57:
aload 0
athrow
L58:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L57
L16:
astore 4
goto L12
L15:
astore 4
goto L12
L14:
astore 4
goto L12
.limit locals 13
.limit stack 3
.end method

.method public static createThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch java/lang/Error from L0 to L1 using L4
.catch all from L0 to L1 using L5
.catch java/io/IOException from L6 to L7 using L2
.catch java/lang/Exception from L6 to L7 using L3
.catch java/lang/Error from L6 to L7 using L4
.catch all from L6 to L7 using L5
.catch java/io/IOException from L8 to L9 using L2
.catch java/lang/Exception from L8 to L9 using L3
.catch java/lang/Error from L8 to L9 using L4
.catch all from L8 to L9 using L5
.catch java/io/IOException from L10 to L11 using L2
.catch java/lang/Exception from L10 to L11 using L3
.catch java/lang/Error from L10 to L11 using L4
.catch all from L10 to L11 using L5
.catch java/io/IOException from L12 to L13 using L2
.catch java/lang/Exception from L12 to L13 using L3
.catch java/lang/Error from L12 to L13 using L4
.catch all from L12 to L13 using L5
.catch java/lang/IllegalArgumentException from L14 to L15 using L16
.catch java/lang/SecurityException from L14 to L15 using L17
.catch java/lang/IllegalAccessException from L14 to L15 using L18
.catch java/lang/NoSuchFieldException from L14 to L15 using L19
.catch java/io/IOException from L14 to L15 using L2
.catch java/lang/Exception from L14 to L15 using L3
.catch java/lang/Error from L14 to L15 using L4
.catch all from L14 to L15 using L5
.catch java/io/IOException from L20 to L21 using L2
.catch java/lang/Exception from L20 to L21 using L3
.catch java/lang/Error from L20 to L21 using L4
.catch all from L20 to L21 using L5
.catch java/io/IOException from L22 to L23 using L2
.catch java/lang/Exception from L22 to L23 using L3
.catch java/lang/Error from L22 to L23 using L4
.catch all from L22 to L23 using L5
.catch java/io/IOException from L24 to L25 using L2
.catch java/lang/Exception from L24 to L25 using L3
.catch java/lang/Error from L24 to L25 using L4
.catch all from L24 to L25 using L5
.catch java/io/IOException from L26 to L27 using L2
.catch java/lang/Exception from L26 to L27 using L3
.catch java/lang/Error from L26 to L27 using L4
.catch all from L26 to L27 using L5
.catch java/io/IOException from L28 to L29 using L2
.catch java/lang/Exception from L28 to L29 using L3
.catch java/lang/Error from L28 to L29 using L4
.catch all from L28 to L29 using L5
.catch java/io/IOException from L30 to L31 using L2
.catch java/lang/Exception from L30 to L31 using L3
.catch java/lang/Error from L30 to L31 using L4
.catch all from L30 to L31 using L5
.catch java/io/IOException from L32 to L33 using L2
.catch java/lang/Exception from L32 to L33 using L3
.catch java/lang/Error from L32 to L33 using L4
.catch all from L32 to L33 using L5
.catch java/io/IOException from L34 to L35 using L36
.catch java/io/IOException from L37 to L38 using L2
.catch java/lang/Exception from L37 to L38 using L3
.catch java/lang/Error from L37 to L38 using L4
.catch all from L37 to L38 using L5
.catch all from L39 to L40 using L5
.catch java/io/IOException from L41 to L42 using L43
.catch all from L44 to L45 using L5
.catch java/io/IOException from L46 to L47 using L48
.catch all from L49 to L50 using L5
.catch java/io/IOException from L51 to L52 using L53
.catch java/io/IOException from L54 to L55 using L56
aconst_null
astore 8
aconst_null
astore 5
aconst_null
astore 6
aconst_null
astore 3
aconst_null
astore 4
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 7
L1:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L6:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 9
L7:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L8:
aload 9
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L9:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L10:
aload 9
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L11:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L12:
aload 9
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L13:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L14:
ldc android/graphics/BitmapFactory$Options
ldc "inNativeAlloc"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aload 9
iconst_1
invokevirtual java/lang/reflect/Field/setBoolean(Ljava/lang/Object;Z)V
L15:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L20:
aload 7
aconst_null
aload 9
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
L21:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L22:
aload 7
invokevirtual java/io/InputStream/close()V
L23:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L24:
aload 9
iload 2
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
istore 2
L25:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L26:
aload 9
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L27:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L28:
aload 9
iload 2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L29:
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L30:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 0
L31:
aload 0
astore 4
aload 0
astore 5
aload 0
astore 6
aload 0
astore 3
L32:
aload 0
aconst_null
aload 9
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 1
L33:
aload 1
astore 3
aload 3
astore 1
aload 0
ifnull L57
L34:
aload 0
invokevirtual java/io/InputStream/close()V
L35:
aload 3
astore 1
L57:
aload 1
areturn
L16:
astore 10
aload 7
astore 4
aload 7
astore 5
aload 7
astore 6
aload 7
astore 3
L37:
aload 10
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
L38:
goto L15
L2:
astore 0
aload 4
astore 3
L39:
ldc "BitmapToolkit"
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L40:
aload 8
astore 1
aload 4
ifnull L57
L41:
aload 4
invokevirtual java/io/InputStream/close()V
L42:
aconst_null
areturn
L43:
astore 0
ldc "BitmapToolkit"
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L36:
astore 0
ldc "BitmapToolkit"
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
L3:
astore 0
aload 5
astore 3
L44:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L45:
aload 8
astore 1
aload 5
ifnull L57
L46:
aload 5
invokevirtual java/io/InputStream/close()V
L47:
aconst_null
areturn
L48:
astore 0
ldc "BitmapToolkit"
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L4:
astore 0
aload 6
astore 3
L49:
aload 0
invokevirtual java/lang/Error/printStackTrace()V
L50:
aload 8
astore 1
aload 6
ifnull L57
L51:
aload 6
invokevirtual java/io/InputStream/close()V
L52:
aconst_null
areturn
L53:
astore 0
ldc "BitmapToolkit"
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L5:
astore 0
aload 3
ifnull L55
L54:
aload 3
invokevirtual java/io/InputStream/close()V
L55:
aload 0
athrow
L56:
astore 1
ldc "BitmapToolkit"
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L55
L19:
astore 3
goto L15
L18:
astore 3
goto L15
L17:
astore 3
goto L15
.limit locals 11
.limit stack 3
.end method

.method public static cropLocalFileBitmapWithRotate(Ljava/lang/String;IFFFF)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/OutOfMemoryError from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/OutOfMemoryError from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/OutOfMemoryError from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/OutOfMemoryError from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/OutOfMemoryError from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/OutOfMemoryError from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch java/lang/OutOfMemoryError from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch java/lang/OutOfMemoryError from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch java/lang/OutOfMemoryError from L24 to L25 using L3
.catch java/lang/Exception from L26 to L27 using L2
.catch java/lang/OutOfMemoryError from L26 to L27 using L3
.catch java/lang/Exception from L28 to L29 using L2
.catch java/lang/OutOfMemoryError from L28 to L29 using L3
.catch java/lang/Exception from L30 to L31 using L2
.catch java/lang/OutOfMemoryError from L30 to L31 using L3
.catch java/lang/Exception from L32 to L33 using L2
.catch java/lang/OutOfMemoryError from L32 to L33 using L3
.catch java/lang/Exception from L34 to L35 using L2
.catch java/lang/OutOfMemoryError from L34 to L35 using L3
.catch java/lang/Exception from L36 to L37 using L2
.catch java/lang/OutOfMemoryError from L36 to L37 using L3
.catch java/lang/Exception from L38 to L39 using L2
.catch java/lang/OutOfMemoryError from L38 to L39 using L3
.catch java/lang/Exception from L40 to L41 using L2
.catch java/lang/OutOfMemoryError from L40 to L41 using L3
.catch java/lang/Exception from L42 to L43 using L2
.catch java/lang/OutOfMemoryError from L42 to L43 using L3
.catch java/lang/Exception from L44 to L45 using L2
.catch java/lang/OutOfMemoryError from L44 to L45 using L3
.catch java/lang/Exception from L46 to L47 using L2
.catch java/lang/OutOfMemoryError from L46 to L47 using L3
.catch java/lang/Exception from L48 to L49 using L50
.catch java/lang/OutOfMemoryError from L48 to L49 using L51
.catch java/lang/Exception from L52 to L53 using L50
.catch java/lang/OutOfMemoryError from L52 to L53 using L51
.catch java/lang/Exception from L54 to L55 using L50
.catch java/lang/OutOfMemoryError from L54 to L55 using L51
.catch java/lang/Exception from L56 to L57 using L50
.catch java/lang/OutOfMemoryError from L56 to L57 using L51
.catch java/lang/Exception from L58 to L59 using L50
.catch java/lang/OutOfMemoryError from L58 to L59 using L51
.catch java/lang/Exception from L60 to L61 using L50
.catch java/lang/OutOfMemoryError from L60 to L61 using L51
.catch java/lang/Exception from L62 to L63 using L50
.catch java/lang/OutOfMemoryError from L62 to L63 using L51
.catch java/lang/Exception from L64 to L65 using L50
.catch java/lang/OutOfMemoryError from L64 to L65 using L51
.catch java/lang/Exception from L66 to L67 using L50
.catch java/lang/OutOfMemoryError from L66 to L67 using L51
.catch java/lang/Exception from L68 to L69 using L50
.catch java/lang/OutOfMemoryError from L68 to L69 using L51
.catch java/lang/Exception from L70 to L71 using L50
.catch java/lang/OutOfMemoryError from L70 to L71 using L51
.catch java/lang/Exception from L72 to L73 using L50
.catch java/lang/OutOfMemoryError from L72 to L73 using L51
.catch java/lang/Exception from L74 to L75 using L50
.catch java/lang/OutOfMemoryError from L74 to L75 using L51
.catch java/lang/Exception from L76 to L77 using L78
.catch java/lang/OutOfMemoryError from L76 to L77 using L79
.catch java/lang/Exception from L80 to L81 using L78
.catch java/lang/OutOfMemoryError from L80 to L81 using L79
.catch java/lang/Exception from L82 to L83 using L78
.catch java/lang/OutOfMemoryError from L82 to L83 using L79
.catch java/lang/Exception from L84 to L85 using L78
.catch java/lang/OutOfMemoryError from L84 to L85 using L79
.catch java/lang/Exception from L86 to L87 using L78
.catch java/lang/OutOfMemoryError from L86 to L87 using L79
.catch java/lang/Exception from L88 to L89 using L78
.catch java/lang/OutOfMemoryError from L88 to L89 using L79
.catch java/lang/Exception from L90 to L91 using L78
.catch java/lang/OutOfMemoryError from L90 to L91 using L79
.catch java/lang/Exception from L92 to L93 using L78
.catch java/lang/OutOfMemoryError from L92 to L93 using L79
.catch java/lang/Exception from L94 to L95 using L78
.catch java/lang/OutOfMemoryError from L94 to L95 using L79
.catch java/lang/Exception from L96 to L97 using L78
.catch java/lang/OutOfMemoryError from L96 to L97 using L79
.catch java/lang/Exception from L98 to L99 using L78
.catch java/lang/OutOfMemoryError from L98 to L99 using L79
.catch java/lang/Exception from L100 to L101 using L78
.catch java/lang/OutOfMemoryError from L100 to L101 using L79
.catch java/lang/Exception from L102 to L103 using L78
.catch java/lang/OutOfMemoryError from L102 to L103 using L79
aconst_null
astore 14
aconst_null
astore 13
aload 13
astore 12
aload 14
astore 11
L0:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L104
L1:
aload 13
astore 12
aload 14
astore 11
L4:
ldc "BitmapToolkit"
ldc "loadBitmap not exit"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aconst_null
areturn
L104:
aload 13
astore 12
aload 14
astore 11
L6:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 15
L7:
aload 13
astore 12
aload 14
astore 11
L8:
aload 15
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L9:
aload 13
astore 12
aload 14
astore 11
L10:
aload 0
aload 15
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 13
L11:
aload 13
astore 12
aload 13
astore 11
L12:
aload 15
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
fload 4
fmul
ldc_w 640.0F
fcmpl
ifle L17
L13:
aload 13
astore 12
aload 13
astore 11
L14:
aload 15
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
fload 4
fmul
ldc_w 640.0F
fdiv
f2d
invokestatic java/lang/Math/floor(D)D
d2i
istore 6
L15:
iload 6
iconst_1
if_icmple L17
aload 13
astore 12
aload 13
astore 11
L16:
aload 15
iload 6
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L17:
aload 13
astore 12
aload 13
astore 11
L18:
aload 15
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L19:
aload 13
astore 12
aload 13
astore 11
L20:
aload 15
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
L21:
aload 13
astore 12
aload 13
astore 11
L22:
aload 15
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L23:
aload 13
astore 12
aload 13
astore 11
L24:
aload 15
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
L25:
aload 13
astore 12
aload 13
astore 11
L26:
aload 0
aload 15
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 14
L27:
aload 14
astore 13
iload 1
ifle L29
aload 14
astore 12
aload 14
astore 11
L28:
aload 14
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 13
L29:
aload 13
astore 12
aload 13
astore 11
L30:
aload 13
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 2
fmul
f2i
istore 9
L31:
aload 13
astore 12
aload 13
astore 11
L32:
aload 13
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 3
fmul
f2i
istore 10
L33:
aload 13
astore 12
aload 13
astore 11
L34:
aload 13
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 4
fmul
f2i
istore 8
L35:
aload 13
astore 12
aload 13
astore 11
L36:
aload 13
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 5
fmul
f2i
istore 7
L37:
iload 7
istore 6
aload 13
astore 12
aload 13
astore 11
L38:
iload 10
iload 7
iadd
aload 13
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L41
L39:
aload 13
astore 12
aload 13
astore 11
L40:
aload 13
invokevirtual android/graphics/Bitmap/getHeight()I
iload 10
isub
istore 6
L41:
iload 8
istore 7
aload 13
astore 12
aload 13
astore 11
L42:
iload 9
iload 8
iadd
aload 13
invokevirtual android/graphics/Bitmap/getWidth()I
if_icmple L45
L43:
aload 13
astore 12
aload 13
astore 11
L44:
aload 13
invokevirtual android/graphics/Bitmap/getWidth()I
iload 9
isub
istore 7
L45:
aload 13
astore 12
aload 13
astore 11
L46:
aload 13
iload 9
iload 10
iload 7
iload 6
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 13
L47:
aload 13
areturn
L2:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 12
astore 0
aload 12
ifnull L105
aload 12
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L106
aload 12
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L106:
aconst_null
areturn
L3:
astore 12
aload 11
astore 12
aload 11
ifnull L107
aload 11
astore 13
aload 11
astore 12
L48:
aload 11
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L108
L49:
aload 11
astore 13
aload 11
astore 12
L52:
aload 11
invokevirtual android/graphics/Bitmap/recycle()V
L53:
aconst_null
astore 12
L107:
aload 12
astore 13
L54:
aload 0
sipush 480
sipush 800
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 14
L55:
aload 14
astore 11
iload 1
ifle L57
aload 14
astore 13
aload 14
astore 12
L56:
aload 14
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 11
L57:
aload 11
astore 13
aload 11
astore 12
L58:
aload 11
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 2
fmul
f2i
istore 9
L59:
aload 11
astore 13
aload 11
astore 12
L60:
aload 11
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 3
fmul
f2i
istore 10
L61:
aload 11
astore 13
aload 11
astore 12
L62:
aload 11
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 4
fmul
f2i
istore 8
L63:
aload 11
astore 13
aload 11
astore 12
L64:
aload 11
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 5
fmul
f2i
istore 7
L65:
iload 7
istore 6
aload 11
astore 13
aload 11
astore 12
L66:
iload 10
iload 7
iadd
aload 11
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L69
L67:
aload 11
astore 13
aload 11
astore 12
L68:
aload 11
invokevirtual android/graphics/Bitmap/getHeight()I
iload 10
isub
istore 6
L69:
iload 8
istore 7
aload 11
astore 13
aload 11
astore 12
L70:
iload 9
iload 8
iadd
aload 11
invokevirtual android/graphics/Bitmap/getWidth()I
if_icmple L73
L71:
aload 11
astore 13
aload 11
astore 12
L72:
aload 11
invokevirtual android/graphics/Bitmap/getWidth()I
iload 9
isub
istore 7
L73:
aload 11
astore 13
aload 11
astore 12
L74:
aload 11
iload 9
iload 10
iload 7
iload 6
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 11
L75:
aload 11
areturn
L108:
aconst_null
astore 12
goto L107
L50:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 13
astore 0
aload 13
ifnull L105
aload 13
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L109
aload 13
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L109:
aconst_null
areturn
L51:
astore 14
aload 12
astore 13
aload 12
ifnull L110
aload 12
astore 11
aload 12
astore 13
L76:
aload 12
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L111
L77:
aload 12
astore 11
aload 12
astore 13
L80:
aload 12
invokevirtual android/graphics/Bitmap/recycle()V
L81:
aconst_null
astore 13
L110:
aload 13
astore 11
L82:
aload 0
sipush 320
sipush 480
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 12
L83:
aload 12
astore 0
iload 1
ifle L85
aload 12
astore 11
aload 12
astore 13
L84:
aload 12
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 0
L85:
aload 0
astore 11
aload 0
astore 13
L86:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 2
fmul
f2i
istore 8
L87:
aload 0
astore 11
aload 0
astore 13
L88:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 3
fmul
f2i
istore 9
L89:
aload 0
astore 11
aload 0
astore 13
L90:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 4
fmul
f2i
istore 7
L91:
aload 0
astore 11
aload 0
astore 13
L92:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 5
fmul
f2i
istore 6
L93:
iload 6
istore 1
aload 0
astore 11
aload 0
astore 13
L94:
iload 9
iload 6
iadd
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L97
L95:
aload 0
astore 11
aload 0
astore 13
L96:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
iload 9
isub
istore 1
L97:
iload 7
istore 6
aload 0
astore 11
aload 0
astore 13
L98:
iload 8
iload 7
iadd
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
if_icmple L101
L99:
aload 0
astore 11
aload 0
astore 13
L100:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
iload 8
isub
istore 6
L101:
aload 0
astore 11
aload 0
astore 13
L102:
aload 0
iload 8
iload 9
iload 6
iload 1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 0
L103:
aload 0
areturn
L111:
aconst_null
astore 13
goto L110
L78:
astore 0
aload 14
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aload 11
astore 0
aload 11
ifnull L105
aload 11
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L112
aload 11
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L112:
aconst_null
areturn
L79:
astore 0
aload 13
astore 0
aload 13
ifnull L105
aload 13
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L113
aload 13
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L113:
aconst_null
astore 0
L105:
aload 0
areturn
.limit locals 16
.limit stack 5
.end method

.method public static decodeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
new android/util/TypedValue
dup
invokespecial android/util/TypedValue/<init>()V
astore 2
aload 0
iload 1
aload 2
invokevirtual android/content/res/Resources/openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
pop
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
aload 2
getfield android/util/TypedValue/density I
putfield android/graphics/BitmapFactory$Options/inTargetDensity I
aload 0
iload 1
aload 3
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static deletePic(JI)V
lload 0
iload 2
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokestatic com/common/android/ui/gif/BitmapToolkit/deletePic(JILjava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static deletePic(JILjava/lang/String;)V
new java/io/File
dup
lload 0
iload 2
aload 3
invokestatic com/common/android/ui/gif/BitmapToolkit/getFullPath(JILjava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual java/io/File/exists()Z
ifeq L0
aload 5
invokevirtual java/io/File/delete()Z
istore 4
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deletePic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
iload 2
aload 3
invokestatic com/common/android/ui/gif/BitmapToolkit/getFullPath(JILjava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "result:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 6
.limit stack 6
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
istore 1
aload 0
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
istore 2
aload 0
invokevirtual android/graphics/drawable/Drawable/getOpacity()I
iconst_m1
if_icmpeq L0
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
astore 3
L1:
iload 1
iload 2
aload 3
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 3
new android/graphics/Canvas
dup
aload 3
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 4
aload 0
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
aload 0
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
aload 4
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 3
areturn
L0:
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
astore 3
goto L1
.limit locals 5
.limit stack 5
.end method

.method private static extendBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
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
iload 4
iload 1
if_icmpgt L2
iload 3
iload 1
if_icmple L3
L2:
aload 0
areturn
L3:
iload 3
i2f
iload 4
i2f
fdiv
fstore 2
fload 2
fconst_1
fcmpl
iflt L4
iload 1
istore 3
iload 1
i2f
fload 2
fdiv
f2i
istore 1
L5:
aload 0
iload 3
iload 1
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 6
aload 6
astore 5
aload 0
ifnull L1
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
aload 6
areturn
L4:
iload 1
istore 3
iload 1
i2f
fload 2
fmul
f2i
istore 4
iload 3
istore 1
iload 4
istore 3
goto L5
.limit locals 7
.limit stack 4
.end method

.method public static getAvailaSize()J
invokestatic com/common/android/ui/gif/BitmapToolkit/available()Z
ifne L0
lconst_0
lreturn
L0:
new android/os/StatFs
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial android/os/StatFs/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual android/os/StatFs/getBlockSize()I
i2l
lstore 0
aload 2
invokevirtual android/os/StatFs/getAvailableBlocks()I
i2l
lload 0
lmul
lreturn
.limit locals 3
.limit stack 4
.end method

.method public static getBigImageDpi(Landroid/content/Context;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
aload 0
getfield android/util/DisplayMetrics/densityDpi I
bipush 120
if_icmpne L0
L1:
sipush 480
ireturn
L0:
aload 0
getfield android/util/DisplayMetrics/densityDpi I
sipush 160
if_icmpeq L1
aload 0
getfield android/util/DisplayMetrics/densityDpi I
sipush 240
if_icmpne L1
goto L1
.limit locals 1
.limit stack 2
.end method

.method public static getDegree(Ljava/lang/String;)I
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
istore 2
L1:
iload 2
istore 1
L3:
iload 1
tableswitch 3
L4
L5
L5
L6
L5
L7
default : L5
L5:
iconst_0
ireturn
L6:
bipush 90
ireturn
L4:
sipush 180
ireturn
L7:
sipush 270
ireturn
L2:
astore 0
goto L3
.limit locals 3
.limit stack 3
.end method

.method private static getFullPath(JILjava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
aload 3
invokestatic com/common/android/ui/gif/BitmapToolkit/getPath(JLjava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/getName(JI)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private static getName(JI)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 4
iload 2
bipush 100
if_icmpge L0
ldc ".cache"
astore 3
L1:
aload 4
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
ldc ".jpg"
astore 3
goto L1
.limit locals 5
.limit stack 3
.end method

.method private static getPath(JLjava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getScale(Landroid/graphics/BitmapFactory$Options;II)F
fconst_1
fstore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 120.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 30.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 5
iload 1
i2f
fconst_1
fmul
iload 2
i2f
fdiv
ldc_w 1.7777778F
fcmpl
ifle L0
iload 1
iload 4
if_icmpgt L1
iload 1
iload 5
if_icmpge L2
iload 1
i2f
fconst_1
fmul
iload 5
i2f
fdiv
fstore 3
L3:
fload 3
freturn
L2:
iload 2
iload 5
if_icmple L3
iload 2
i2f
fconst_1
fmul
iload 5
i2f
fdiv
freturn
L1:
iload 2
iload 5
if_icmpgt L4
iload 1
i2f
fconst_1
fmul
iload 4
i2f
fdiv
freturn
L4:
iload 2
i2f
fconst_1
fmul
iload 5
i2f
fdiv
iload 1
i2f
fconst_1
fmul
iload 4
i2f
fdiv
invokestatic java/lang/Math/max(FF)F
freturn
L0:
iload 1
iload 4
if_icmple L3
iload 1
i2f
fconst_1
fmul
iload 4
i2f
fdiv
freturn
.limit locals 6
.limit stack 3
.end method

.method public static getSmaller(Landroid/view/Display;)I
.annotation invisible Landroid/annotation/TargetApi;
value I = 13
.end annotation
new android/graphics/Point
dup
invokespecial android/graphics/Point/<init>()V
astore 1
aload 0
aload 1
invokevirtual android/view/Display/getSize(Landroid/graphics/Point;)V
aload 1
getfield android/graphics/Point/y I
aload 1
getfield android/graphics/Point/x I
if_icmple L0
aload 1
getfield android/graphics/Point/x I
ireturn
L0:
aload 1
getfield android/graphics/Point/y I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "?momolink=0"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
aload 0
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
iconst_1
isub
istore 1
iload 1
ifle L0
iload 1
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L0
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static halfCenterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
idiv
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 4
new android/graphics/Canvas
dup
aload 4
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 5
aload 5
invokevirtual android/graphics/Canvas/save()I
pop
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 6
new android/graphics/Rect
dup
iconst_0
iconst_0
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_0
iadd
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_0
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 9
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_4
idiv
iconst_0
iadd
istore 2
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_4
idiv
iconst_0
iadd
istore 3
new android/graphics/Rect
dup
iload 2
iload 3
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
iload 2
iadd
iconst_0
iadd
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
iload 3
iadd
iconst_0
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 7
new android/graphics/Rect
dup
iconst_0
iconst_0
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_0
iadd
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_0
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 8
new android/graphics/RectF
dup
aload 9
invokespecial android/graphics/RectF/<init>(Landroid/graphics/Rect;)V
astore 9
aload 6
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 5
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/graphics/Canvas/drawARGB(IIII)V
aload 6
ldc_w -12434878
invokevirtual android/graphics/Paint/setColor(I)V
aload 5
aload 9
fload 1
fload 1
aload 6
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 6
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 5
aload 0
aload 7
aload 8
aload 6
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
aload 5
invokevirtual android/graphics/Canvas/restore()V
aload 4
areturn
.limit locals 10
.limit stack 7
.end method

.method public static hasHoneycombMR2()Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 13
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method public static isExist(JI)Z
lload 0
iload 2
getstatic com/common/android/ui/gif/BitmapToolkit/DIR_ROOT Ljava/lang/String;
invokestatic com/common/android/ui/gif/BitmapToolkit/isExist(JILjava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isExist(JILjava/lang/String;)Z
new java/io/File
dup
lload 0
iload 2
aload 3
invokestatic com/common/android/ui/gif/BitmapToolkit/getFullPath(JILjava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/exists()Z
ifeq L0
aload 3
invokevirtual java/io/File/length()J
lconst_0
lcmp
ifle L0
iconst_1
istore 4
L1:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "isExit:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "----"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 4
ireturn
L0:
iconst_0
istore 4
goto L1
.limit locals 5
.limit stack 6
.end method

.method public static isFullStorage()Z
invokestatic com/common/android/ui/gif/BitmapToolkit/getAvailaSize()J
ldc2_w 1048576L
lcmp
ifge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 4
.end method

.method public static isLocalUrl(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
ldc "http"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isWidthOver480Px(Ljava/lang/String;)Z
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 1
L1:
iload 1
sipush 480
if_icmple L3
iconst_1
ireturn
L3:
iconst_0
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static isWidthOver640Px(Ljava/lang/String;)Z
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 1
L1:
iload 1
sipush 720
if_icmple L3
iconst_1
ireturn
L3:
iconst_0
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static loadLocalBitmapExactScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
aload 0
iload 1
iconst_2
imul
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 0
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static loadLocalBitmapExactScaledBytes(Ljava/lang/String;I)[B
aload 0
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapExactScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
invokestatic com/common/android/ui/gif/BitmapToolkit/BitmapToByteArray(Landroid/graphics/Bitmap;)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method public static loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
.catch java/lang/OutOfMemoryError from L7 to L8 using L2
.catch java/lang/OutOfMemoryError from L8 to L9 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
iload 1
putfield android/graphics/BitmapFactory$Options/outHeight I
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 3
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 4
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 3
getfield android/graphics/BitmapFactory$Options/outHeight I
iload 1
bipush 10
idiv
idiv
istore 2
L1:
iload 2
istore 1
iload 2
bipush 10
irem
ifeq L3
iload 2
bipush 10
iadd
istore 1
L3:
iload 1
bipush 10
idiv
istore 2
L4:
iload 2
istore 1
iload 2
ifgt L5
iconst_1
istore 1
L5:
aload 3
iload 1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L6:
aload 4
ifnull L8
L7:
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L8
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
invokestatic java/lang/System/gc()V
L8:
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
L9:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public static loadLocalFileBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/OutOfMemoryError from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/OutOfMemoryError from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/OutOfMemoryError from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/OutOfMemoryError from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/OutOfMemoryError from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/OutOfMemoryError from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch java/lang/OutOfMemoryError from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch java/lang/OutOfMemoryError from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L26
.catch java/lang/OutOfMemoryError from L24 to L25 using L27
.catch java/lang/Exception from L28 to L29 using L26
.catch java/lang/OutOfMemoryError from L28 to L29 using L27
.catch java/lang/Exception from L30 to L31 using L26
.catch java/lang/OutOfMemoryError from L30 to L31 using L27
.catch java/lang/Exception from L32 to L33 using L26
.catch java/lang/OutOfMemoryError from L32 to L33 using L27
.catch java/lang/Exception from L34 to L35 using L36
.catch java/lang/OutOfMemoryError from L34 to L35 using L37
.catch java/lang/Exception from L38 to L39 using L36
.catch java/lang/OutOfMemoryError from L38 to L39 using L37
.catch java/lang/Exception from L40 to L41 using L36
.catch java/lang/OutOfMemoryError from L40 to L41 using L37
.catch java/lang/Exception from L42 to L43 using L36
.catch java/lang/OutOfMemoryError from L42 to L43 using L37
aconst_null
astore 5
aconst_null
astore 3
aload 3
astore 4
aload 5
astore 2
L0:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L44
L1:
aload 3
astore 4
aload 5
astore 2
L4:
ldc "BitmapToolkit"
ldc "loadBitmap not exit"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aconst_null
areturn
L44:
aload 3
astore 4
aload 5
astore 2
L6:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 6
L7:
aload 3
astore 4
aload 5
astore 2
L8:
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L9:
aload 3
astore 4
aload 5
astore 2
L10:
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
L11:
aload 3
astore 4
aload 5
astore 2
L12:
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L13:
aload 3
astore 4
aload 5
astore 2
L14:
aload 6
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
L15:
aload 3
astore 4
aload 5
astore 2
L16:
aload 0
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 3
L17:
aload 3
astore 4
aload 3
astore 2
L18:
aload 0
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 1
L19:
aload 3
astore 4
aload 3
astore 2
L20:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "original degree\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L21:
aload 3
astore 2
iload 1
ifle L45
aload 3
astore 4
aload 3
astore 2
L22:
aload 3
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 3
L23:
aload 3
areturn
L2:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
L3:
astore 3
aload 2
astore 4
L24:
aload 0
sipush 480
sipush 800
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 3
L25:
aload 3
astore 4
aload 3
astore 2
L28:
aload 0
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 1
L29:
aload 3
astore 4
aload 3
astore 2
L30:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "480x800 degree\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L31:
aload 3
astore 2
iload 1
ifle L45
aload 3
astore 4
aload 3
astore 2
L32:
aload 3
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 3
L33:
aload 3
areturn
L26:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
L27:
astore 5
aload 2
astore 4
L34:
aload 0
sipush 320
sipush 480
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 3
L35:
aload 3
astore 4
aload 3
astore 2
L38:
aload 0
invokestatic com/common/android/ui/gif/BitmapToolkit/getDegree(Ljava/lang/String;)I
istore 1
L39:
aload 3
astore 4
aload 3
astore 2
L40:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "320x480 degree\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L41:
aload 3
astore 2
iload 1
ifle L45
aload 3
astore 4
aload 3
astore 2
L42:
aload 3
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 0
L43:
aload 0
areturn
L36:
astore 0
aload 5
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aload 4
areturn
L37:
astore 0
L45:
aload 2
areturn
.limit locals 7
.limit stack 3
.end method

.method public static loadLocalFileBitmapWithRotate(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/OutOfMemoryError from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/OutOfMemoryError from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/OutOfMemoryError from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/OutOfMemoryError from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/OutOfMemoryError from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/OutOfMemoryError from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L22
.catch java/lang/OutOfMemoryError from L20 to L21 using L23
.catch java/lang/Exception from L24 to L25 using L22
.catch java/lang/OutOfMemoryError from L24 to L25 using L23
.catch java/lang/Exception from L26 to L27 using L22
.catch java/lang/OutOfMemoryError from L26 to L27 using L23
.catch java/lang/Exception from L28 to L29 using L22
.catch java/lang/OutOfMemoryError from L28 to L29 using L23
.catch java/lang/Exception from L30 to L31 using L32
.catch java/lang/OutOfMemoryError from L30 to L31 using L33
.catch java/lang/Exception from L34 to L35 using L32
.catch java/lang/OutOfMemoryError from L34 to L35 using L33
.catch java/lang/Exception from L36 to L37 using L32
.catch java/lang/OutOfMemoryError from L36 to L37 using L33
.catch java/lang/Exception from L38 to L39 using L32
.catch java/lang/OutOfMemoryError from L38 to L39 using L33
aconst_null
astore 5
aconst_null
astore 2
aload 2
astore 4
aload 5
astore 3
L0:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L40
L1:
aload 2
astore 4
aload 5
astore 3
L4:
ldc "BitmapToolkit"
ldc "loadBitmap not exit"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aconst_null
areturn
L40:
aload 2
astore 4
aload 5
astore 3
L6:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 6
L7:
aload 2
astore 4
aload 5
astore 3
L8:
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L9:
aload 2
astore 4
aload 5
astore 3
L10:
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
L11:
aload 2
astore 4
aload 5
astore 3
L12:
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
L13:
aload 2
astore 4
aload 5
astore 3
L14:
aload 6
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
L15:
aload 2
astore 4
aload 5
astore 3
L16:
aload 0
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 5
L17:
aload 5
astore 2
iload 1
ifle L41
aload 5
astore 4
aload 5
astore 3
L18:
aload 5
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 2
L19:
aload 2
areturn
L2:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
astore 2
aload 4
ifnull L41
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L42
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L42:
aconst_null
areturn
L3:
astore 2
aload 3
astore 2
aload 3
ifnull L43
aload 3
astore 4
aload 3
astore 2
L20:
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L44
L21:
aload 3
astore 4
aload 3
astore 2
L24:
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
L25:
aconst_null
astore 2
L43:
aload 2
astore 4
L26:
aload 0
sipush 480
sipush 800
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 3
L27:
aload 3
astore 2
iload 1
ifle L41
aload 3
astore 4
aload 3
astore 2
L28:
aload 3
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 3
L29:
aload 3
areturn
L44:
aconst_null
astore 2
goto L43
L22:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
astore 2
aload 4
ifnull L41
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L45
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L45:
aconst_null
areturn
L23:
astore 5
aload 2
astore 3
aload 2
ifnull L46
aload 2
astore 4
aload 2
astore 3
L30:
aload 2
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L47
L31:
aload 2
astore 4
aload 2
astore 3
L34:
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
L35:
aconst_null
astore 3
L46:
aload 3
astore 4
L36:
aload 0
sipush 320
sipush 480
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 0
L37:
aload 0
astore 2
iload 1
ifle L41
aload 0
astore 4
aload 0
astore 3
L38:
aload 0
iload 1
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 0
L39:
aload 0
areturn
L47:
aconst_null
astore 3
goto L46
L32:
astore 0
aload 5
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aload 4
astore 2
aload 4
ifnull L41
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L48
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L48:
aconst_null
areturn
L33:
astore 0
aload 3
astore 2
aload 3
ifnull L41
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L49
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
aconst_null
areturn
L49:
aconst_null
astore 2
L41:
aload 2
areturn
.limit locals 7
.limit stack 3
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
fload 2
fload 1
fsub
fstore 6
fload 4
fload 3
fsub
fstore 5
fload 6
fstore 2
fload 6
fconst_1
fcmpg
ifge L1
fconst_1
fstore 2
L1:
fload 5
fstore 4
fload 5
fconst_1
fcmpg
ifge L2
fconst_1
fstore 4
L2:
fload 1
fstore 5
fload 1
fconst_0
fcmpl
ifne L3
fconst_1
fstore 5
L3:
fload 3
fstore 1
fload 3
fconst_0
fcmpl
ifne L4
fconst_1
fstore 1
L4:
fload 4
fstore 3
fload 1
fload 4
fadd
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fcmpl
ifle L5
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fload 1
fsub
fstore 3
L5:
fload 2
fstore 4
fload 5
fload 2
fadd
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fcmpl
ifle L6
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 5
fsub
fstore 4
L6:
aload 0
fload 5
f2i
fload 1
f2i
fload 4
f2i
fload 3
f2i
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 9
aload 0
ifnull L7
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L7:
fload 4
f2i
istore 8
iload 8
istore 7
iload 8
iconst_1
if_icmpge L8
iconst_1
istore 7
L8:
fload 3
f2i
istore 8
iload 8
iconst_1
if_icmpge L9
iconst_1
istore 7
L9:
aload 9
iload 7
iload 8
invokestatic com/common/android/ui/gif/BitmapToolkit/resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
areturn
.limit locals 10
.limit stack 5
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
astore 9
L1:
aload 9
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 7
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 8
iload 7
iload 1
if_icmpge L2
aload 0
astore 9
iload 8
iload 2
if_icmplt L1
L2:
iload 7
istore 5
iload 8
istore 6
iload 7
iload 1
if_icmple L3
iload 1
istore 5
iload 7
i2d
dconst_1
dmul
iload 1
i2d
ddiv
dstore 3
iload 8
i2d
dload 3
ddiv
invokestatic java/lang/Math/floor(D)D
d2i
istore 6
L3:
iload 6
istore 1
iload 8
iload 2
if_icmple L4
iload 2
istore 1
iload 8
i2d
dconst_1
dmul
iload 2
i2d
ddiv
dstore 3
iload 7
i2d
dload 3
ddiv
invokestatic java/lang/Math/floor(D)D
d2i
istore 5
L4:
iload 5
istore 2
iload 5
iconst_1
if_icmpge L5
iconst_1
istore 2
L5:
iload 1
istore 5
iload 1
iconst_1
if_icmpge L6
iconst_1
istore 5
L6:
aload 0
iload 2
iload 5
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 9
aload 0
ifnull L7
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L7:
aload 9
areturn
.limit locals 10
.limit stack 4
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
iload 1
ifne L7
aload 0
areturn
L7:
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 2
aload 2
iload 1
i2f
invokevirtual android/graphics/Matrix/postRotate(F)Z
pop
L0:
aload 0
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
aload 2
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 2
L1:
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L3:
aload 2
areturn
L4:
astore 3
L5:
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
L6:
goto L3
L2:
astore 2
aload 0
areturn
.limit locals 4
.limit stack 7
.end method

.method public static rotateBitmapWithThrowsOOM(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.throws java/lang/OutOfMemoryError
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
iload 1
ifne L3
aload 0
areturn
L3:
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 2
aload 2
iload 1
i2f
invokevirtual android/graphics/Matrix/postRotate(F)Z
pop
L0:
aload 0
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
aload 2
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 2
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L1:
aload 2
areturn
L2:
astore 0
aload 0
athrow
.limit locals 3
.limit stack 7
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;JILjava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnonnull L3
L4:
iconst_0
ireturn
L3:
invokestatic com/common/android/ui/gif/BitmapToolkit/isFullStorage()Z
ifne L4
new java/io/File
dup
lload 1
aload 4
invokestatic com/common/android/ui/gif/BitmapToolkit/getPath(JLjava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual java/io/File/exists()Z
ifne L0
aload 5
invokevirtual java/io/File/mkdirs()Z
pop
L0:
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
new java/io/File
dup
lload 1
iload 3
aload 4
invokestatic com/common/android/ui/gif/BitmapToolkit/getFullPath(JILjava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
sipush 8192
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 5
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 5
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 5
invokevirtual java/io/BufferedOutputStream/flush()V
aload 5
invokevirtual java/io/BufferedOutputStream/close()V
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap create"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
iload 3
aload 4
invokestatic com/common/android/ui/gif/BitmapToolkit/getFullPath(JILjava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iconst_1
ireturn
L2:
astore 0
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 6
.limit stack 10
.end method

.method public static saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)Z
aload 0
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
invokestatic com/common/android/ui/gif/BitmapToolkit/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L7 to L8 using L9
.catch java/lang/Exception from L10 to L11 using L5
.catch all from L10 to L11 using L6
.catch java/io/IOException from L12 to L13 using L14
.catch all from L15 to L16 using L3
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
iconst_0
istore 3
aload 1
ifnonnull L23
L24:
iload 3
ireturn
L23:
aconst_null
astore 5
aconst_null
astore 6
L0:
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 0
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
sipush 8192
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 0
L1:
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
istore 4
L4:
iload 4
ifeq L10
aload 0
ifnull L24
L7:
aload 0
invokevirtual java/io/BufferedOutputStream/flush()V
aload 0
invokevirtual java/io/BufferedOutputStream/close()V
L8:
iconst_0
ireturn
L9:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L10:
aload 1
aload 2
bipush 80
aload 0
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
L11:
iconst_1
istore 3
aload 0
ifnull L24
L12:
aload 0
invokevirtual java/io/BufferedOutputStream/flush()V
aload 0
invokevirtual java/io/BufferedOutputStream/close()V
L13:
iconst_1
ireturn
L14:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_1
ireturn
L2:
astore 1
aload 6
astore 0
L25:
aload 0
astore 5
L15:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L16:
aload 0
ifnull L24
L17:
aload 0
invokevirtual java/io/BufferedOutputStream/flush()V
aload 0
invokevirtual java/io/BufferedOutputStream/close()V
L18:
iconst_0
ireturn
L19:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L3:
astore 0
L26:
aload 5
ifnull L21
L20:
aload 5
invokevirtual java/io/BufferedOutputStream/flush()V
aload 5
invokevirtual java/io/BufferedOutputStream/close()V
L21:
aload 0
athrow
L22:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L21
L6:
astore 1
aload 0
astore 5
aload 1
astore 0
goto L26
L5:
astore 1
goto L25
.limit locals 7
.limit stack 5
.end method

.method public static saveBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
aload 2
ifnonnull L0
L1:
iconst_0
ireturn
L0:
invokestatic com/common/android/ui/gif/BitmapToolkit/isFullStorage()Z
ifne L1
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
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
aload 1
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
aload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static setImageBitmapSafe(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L0
return
L0:
aload 0
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
L0:
new java/math/BigInteger
dup
iconst_1
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
aload 0
invokevirtual java/security/MessageDigest/digest([B)[B
invokespecial java/math/BigInteger/<init>(I[B)V
bipush 16
invokevirtual java/math/BigInteger/toString(I)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 5
.end method

.method public static viewPicFromAlbum(Landroid/app/Activity;Ljava/lang/String;)V
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 2
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
ldc "image/*"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
astore 8
L1:
aload 8
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 6
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 7
iload 6
iload 1
if_icmpge L2
iload 7
iload 1
if_icmpge L2
aload 0
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/extendBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
L2:
iload 6
istore 5
iload 7
istore 2
iload 6
iload 1
if_icmple L3
iload 1
istore 5
iload 6
i2d
dconst_1
dmul
iload 1
i2d
ddiv
dstore 3
iload 7
i2d
dload 3
ddiv
invokestatic java/lang/Math/floor(D)D
d2i
istore 2
L3:
iload 7
iload 1
if_icmple L4
iload 1
istore 2
iload 7
i2d
dconst_1
dmul
iload 1
i2d
ddiv
dstore 3
iload 6
i2d
dload 3
ddiv
invokestatic java/lang/Math/floor(D)D
d2i
istore 5
L4:
iload 5
istore 1
iload 5
iconst_1
if_icmpge L5
iconst_1
istore 1
L5:
iload 2
istore 5
iload 2
iconst_1
if_icmpge L6
iconst_1
istore 5
L6:
aload 0
iload 1
iload 5
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 9
aload 9
astore 8
aload 0
ifnull L1
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
aload 9
areturn
.limit locals 10
.limit stack 4
.end method

.method public deletePic()V
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
aload 2
invokevirtual java/io/File/delete()Z
istore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deletePic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "result:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public getAbsolutePath()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getBytesFromFile()[B
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L2
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifeq L8
L0:
new java/io/FileInputStream
dup
aload 2
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 2
new java/io/ByteArrayOutputStream
dup
sipush 1000
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 3
sipush 1000
newarray byte
astore 4
L1:
aload 2
aload 4
invokevirtual java/io/FileInputStream/read([B)I
istore 1
L3:
iload 1
iconst_m1
if_icmpeq L6
L4:
aload 3
aload 4
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L5:
goto L1
L6:
aload 2
invokevirtual java/io/FileInputStream/close()V
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 3
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 2
L7:
aload 2
areturn
L2:
astore 2
L8:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public getDirecotry()Ljava/lang/String;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mDirectory Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mPrefix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mSuffix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isExist()Z
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
aload 2
invokevirtual java/io/File/length()J
lconst_0
lcmp
ifle L0
iconst_1
istore 1
L1:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "isExit:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc " size:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " absoulutePath:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 4
.end method

.method public loadLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/OutOfMemoryError from L6 to L7 using L9
.catch java/lang/Exception from L10 to L11 using L12
.catch java/lang/OutOfMemoryError from L10 to L11 using L13
L0:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L4
ldc "BitmapToolkit"
ldc "loadBitmap not exit"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L4:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 2
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 1
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 2
L5:
aload 2
areturn
L2:
astore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L3:
astore 2
L6:
aload 1
sipush 480
sipush 800
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 2
L7:
aload 2
areturn
L8:
astore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L9:
astore 2
L10:
aload 1
sipush 320
sipush 480
invokestatic com/common/android/ui/gif/BitmapToolkit/ShrinkBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 1
L11:
aload 1
areturn
L12:
astore 1
aload 2
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aconst_null
areturn
L13:
astore 1
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public loadLocalBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
aload 0
aload 1
invokevirtual com/common/android/ui/gif/BitmapToolkit/loadLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
iload 2
invokestatic com/common/android/ui/gif/BitmapToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 2
.end method

.method public loadLocalInputStream(Ljava/lang/String;)Ljava/io/InputStream;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L3
ldc "BitmapToolkit"
ldc "loadBitmap not exit"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L3:
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
astore 1
L4:
aload 1
areturn
L2:
astore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "loadBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public mkdirsIfNotExist()V
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getDirecotry()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdirs()Z
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnonnull L3
L4:
iconst_0
ireturn
L3:
invokestatic com/common/android/ui/gif/BitmapToolkit/isFullStorage()Z
ifne L4
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getDirecotry()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifne L0
aload 2
invokevirtual java/io/File/mkdirs()Z
pop
L0:
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
sipush 8192
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/BufferedOutputStream/flush()V
aload 2
invokevirtual java/io/BufferedOutputStream/close()V
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap create"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iconst_1
ireturn
L2:
astore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 3
.limit stack 7
.end method

.method public saveByte([B)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
aload 1
ifnonnull L5
iconst_0
ireturn
L5:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveByte"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit/mRemoteUrl Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/mkdirsIfNotExist()V
new java/io/File
dup
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
L0:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
aload 2
aload 1
iconst_0
aload 1
arraylength
invokevirtual java/io/FileOutputStream/write([BII)V
L1:
aload 2
invokevirtual java/io/FileOutputStream/close()V
L3:
iconst_1
ireturn
L2:
astore 1
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveBitmap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
L4:
astore 1
goto L3
.limit locals 3
.limit stack 4
.end method
