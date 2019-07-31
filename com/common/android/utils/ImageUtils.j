.bytecode 50.0
.class public synchronized com/common/android/utils/ImageUtils
.super java/lang/Object
.inner class public static ImageUploadProcessParams inner com/common/android/utils/ImageUtils$ImageUploadProcessParams outer com/common/android/utils/ImageUtils

.field private static final 'ROTATE_180' I = 180


.field private static final 'ROTATE_270' I = 270


.field private static final 'ROTATE_90' I = 90


.field private static final 'TAG' Ljava/lang/String; = "ImageUtils"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
iconst_1
istore 7
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
if_icmple L0
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 5
L1:
iload 2
iload 1
if_icmple L2
iload 1
istore 6
L3:
iload 5
iload 6
if_icmple L4
iload 5
i2f
iload 6
i2f
fdiv
invokestatic java/lang/Math/round(F)I
istore 5
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
imul
i2f
fstore 3
iload 1
iload 2
imul
iconst_2
imul
i2f
fstore 4
iload 5
istore 1
L5:
iload 1
istore 7
fload 3
iload 1
iload 1
imul
i2f
fdiv
fload 4
fcmpl
ifle L4
iload 1
iconst_1
iadd
istore 1
goto L5
L0:
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
istore 5
goto L1
L2:
iload 2
istore 6
goto L3
L4:
iload 7
ireturn
.limit locals 8
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
invokevirtual android/graphics/Bitmap/getHeight()I
istore 2
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 3
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 2
L2:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmpge L3
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
L3:
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
if_icmple L4
aload 0
iload 1
iload 2
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
L4:
aload 0
iload 2
iload 1
iconst_0
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokevirtual java/io/File/exists()Z
ifne L3
aconst_null
areturn
L3:
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
iload 1
iload 2
invokestatic com/common/android/utils/ImageUtils/decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 5
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
astore 6
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
istore 1
aload 5
astore 4
iload 1
ifle L4
aload 5
iload 1
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 4
L4:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 5
aload 4
aload 6
iload 3
aload 5
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 4
aload 4
astore 0
aload 4
invokestatic com/common/android/utils/ImageUtils/isImage(Ljava/lang/String;)Z
ifne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L5:
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 5
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 0
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 0
L0:
aload 5
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
aload 0
areturn
L2:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
aload 0
areturn
.limit locals 7
.limit stack 4
.end method

.method public static compressBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
aload 0
iload 1
iconst_2
imul
invokestatic com/common/android/utils/ImageUtils/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static convertGIFToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L1 to L5 using L6
.catch java/io/IOException from L1 to L5 using L7
.catch all from L1 to L5 using L8
.catch java/io/FileNotFoundException from L5 to L9 using L10
.catch java/io/IOException from L5 to L9 using L11
.catch all from L5 to L9 using L12
.catch java/io/FileNotFoundException from L9 to L13 using L10
.catch java/io/IOException from L9 to L13 using L11
.catch all from L9 to L13 using L12
.catch java/io/FileNotFoundException from L14 to L15 using L10
.catch java/io/IOException from L14 to L15 using L11
.catch all from L14 to L15 using L12
.catch all from L16 to L17 using L4
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L20
.catch java/io/FileNotFoundException from L23 to L24 using L10
.catch java/io/IOException from L23 to L24 using L11
.catch all from L23 to L24 using L12
.catch java/io/FileNotFoundException from L25 to L26 using L10
.catch java/io/IOException from L25 to L26 using L11
.catch all from L25 to L26 using L12
.catch java/io/FileNotFoundException from L26 to L27 using L10
.catch java/io/IOException from L26 to L27 using L11
.catch all from L26 to L27 using L12
.catch java/io/IOException from L28 to L29 using L30
.catch java/io/IOException from L31 to L32 using L30
.catch all from L33 to L34 using L4
.catch java/io/IOException from L35 to L36 using L37
.catch java/io/IOException from L38 to L39 using L37
.catch java/io/IOException from L40 to L41 using L42
.catch java/io/IOException from L43 to L44 using L42
aload 0
invokevirtual java/io/File/exists()Z
ifne L45
aconst_null
astore 0
L46:
aload 0
areturn
L45:
aconst_null
astore 9
aconst_null
astore 4
aconst_null
astore 7
aconst_null
astore 6
aconst_null
astore 3
aconst_null
astore 8
aconst_null
astore 5
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 2
L1:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 3
L5:
sipush 1024
newarray byte
astore 4
L9:
aload 2
aload 4
invokevirtual java/io/FileInputStream/read([B)I
istore 1
L13:
iload 1
iconst_m1
if_icmpeq L23
L14:
aload 3
aload 4
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L15:
goto L9
L10:
astore 5
aload 2
astore 0
aload 3
astore 2
L47:
aload 2
astore 3
aload 0
astore 4
L16:
aload 5
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L17:
aload 0
ifnull L19
L18:
aload 0
invokevirtual java/io/FileInputStream/close()V
L19:
aload 2
ifnull L22
L21:
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L22:
aconst_null
areturn
L23:
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 4
L24:
aload 4
astore 0
L25:
aload 4
invokestatic com/common/android/utils/ImageUtils/isImage(Ljava/lang/String;)Z
ifne L26
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".gif"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L26:
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 3
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 0
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 4
L27:
aload 2
ifnull L29
L28:
aload 2
invokevirtual java/io/FileInputStream/close()V
L29:
aload 4
astore 0
aload 3
ifnull L46
L31:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L32:
aload 4
areturn
L30:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 4
areturn
L20:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L22
L3:
astore 5
aload 9
astore 0
aload 6
astore 2
L48:
aload 2
astore 3
aload 0
astore 4
L33:
aload 5
invokevirtual java/io/IOException/printStackTrace()V
L34:
aload 0
ifnull L36
L35:
aload 0
invokevirtual java/io/FileInputStream/close()V
L36:
aload 2
ifnull L22
L38:
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L39:
goto L22
L37:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L22
L4:
astore 0
L49:
aload 4
ifnull L41
L40:
aload 4
invokevirtual java/io/FileInputStream/close()V
L41:
aload 3
ifnull L44
L43:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L44:
aload 0
athrow
L42:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L44
L8:
astore 0
aload 8
astore 3
aload 2
astore 4
goto L49
L12:
astore 0
aload 2
astore 4
goto L49
L7:
astore 5
aload 2
astore 0
aload 6
astore 2
goto L48
L11:
astore 5
aload 2
astore 0
aload 3
astore 2
goto L48
L2:
astore 0
aload 5
astore 2
aload 0
astore 5
aload 7
astore 0
goto L47
L6:
astore 3
aload 2
astore 0
aload 5
astore 2
aload 3
astore 5
goto L47
.limit locals 10
.limit stack 4
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;ID)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 7
aload 7
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 7
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
if_icmpge L0
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
idiv
i2d
dstore 4
L1:
dload 4
dload 2
dcmpl
ifle L2
aconst_null
areturn
L0:
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
idiv
i2d
dstore 4
goto L1
L2:
aload 7
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
if_icmple L3
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
istore 6
L4:
iload 6
iload 1
if_icmple L5
aload 7
iload 6
iload 1
idiv
putfield android/graphics/BitmapFactory$Options/inSampleSize I
iload 6
iload 1
irem
ifle L5
aload 7
aload 7
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
iadd
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L5:
aload 7
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 7
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
L3:
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 6
goto L4
.limit locals 8
.limit stack 4
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
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
aload 3
iload 1
iload 2
invokestatic com/common/android/utils/ImageUtils/calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static drawableToBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
astore 3
L1:
aload 3
areturn
L2:
astore 3
invokestatic java/lang/System/gc()V
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 2
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 2
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
iload 1
iload 2
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
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L6:
bipush 90
ireturn
L4:
sipush 180
ireturn
L7:
sipush 270
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static getImageByteArrayBody(Landroid/content/Context;Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
aload 0
aload 1
new com/common/android/utils/ImageUtils$ImageUploadProcessParams
dup
invokespecial com/common/android/utils/ImageUtils$ImageUploadProcessParams/<init>()V
invokestatic com/common/android/utils/ImageUtils/getImageByteArrayBody(Landroid/content/Context;Ljava/io/File;Lcom/common/android/utils/ImageUtils$ImageUploadProcessParams;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getImageByteArrayBody(Landroid/content/Context;Ljava/io/File;Lcom/common/android/utils/ImageUtils$ImageUploadProcessParams;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 1
ifnull L0
aload 0
ifnonnull L1
L0:
aconst_null
areturn
L1:
aload 1
ifnull L2
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc ".gif"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
aload 1
invokestatic com/common/android/utils/ImageUtils/convertGIFToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
areturn
L2:
aload 0
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L3
aload 1
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/wifi_width I
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/wifi_height I
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/compress_quality I
invokestatic com/common/android/utils/ImageUtils/compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
areturn
L3:
aload 1
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/no_wifi_width I
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/no_wifi_height I
aload 2
getfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/compress_quality I
invokestatic com/common/android/utils/ImageUtils/compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aload 1
ifnonnull L8
aconst_null
astore 0
L9:
aload 0
areturn
L8:
ldc ""
astore 2
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "_data"
aastore
dup
iconst_2
ldc "_size"
aastore
invokestatic android/provider/MediaStore$Images$Media/query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 3
aload 3
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L1:
aload 1
astore 0
aload 3
ifnull L9
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
areturn
L4:
aload 1
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 1
L5:
goto L1
L2:
astore 0
L6:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
aload 2
astore 0
aload 3
ifnull L9
aload 3
invokeinterface android/database/Cursor/close()V 0
ldc ""
areturn
L3:
astore 0
aload 3
ifnull L10
aload 3
invokeinterface android/database/Cursor/close()V 0
L10:
aload 0
athrow
.limit locals 4
.limit stack 6
.end method

.method public static isBitmapFileAvaiable(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L3:
iconst_0
ireturn
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 1
aload 1
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 1
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 1
getfield android/graphics/BitmapFactory$Options/outHeight I
ifle L3
aload 1
getfield android/graphics/BitmapFactory$Options/outWidth I
ifle L3
aload 0
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 0
L1:
aload 0
ifnull L3
iconst_1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isGifFile(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L7 to L8 using L9
.catch all from L10 to L11 using L3
.catch java/io/IOException from L12 to L13 using L14
.catch java/io/IOException from L15 to L16 using L17
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
L19:
iconst_0
ireturn
L18:
aconst_null
astore 2
aconst_null
astore 3
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
astore 0
L1:
iconst_3
newarray byte
astore 2
aload 0
aload 2
invokevirtual java/io/InputStream/read([B)I
pop
new java/lang/String
dup
aload 2
invokespecial java/lang/String/<init>([B)V
ldc "gif"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
istore 1
L4:
aload 0
ifnull L20
L7:
aload 0
invokevirtual java/io/InputStream/close()V
L8:
iload 1
ireturn
L9:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iload 1
ireturn
L2:
astore 2
aload 3
astore 0
aload 2
astore 3
L21:
aload 0
astore 2
L10:
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 0
ifnull L19
L12:
aload 0
invokevirtual java/io/InputStream/close()V
L13:
iconst_0
ireturn
L14:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L3:
astore 0
L22:
aload 2
ifnull L16
L15:
aload 2
invokevirtual java/io/InputStream/close()V
L16:
aload 0
athrow
L17:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L16
L6:
astore 3
aload 0
astore 2
aload 3
astore 0
goto L22
L5:
astore 3
goto L21
L20:
iload 1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "gif"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 1
invokestatic com/common/android/utils/ImageUtils/isGifPicture(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isGifPicture(Ljava/lang/String;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc ".gif"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L1
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc ".gif&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isImage(Ljava/lang/String;)Z
iconst_3
anewarray java/lang/String
astore 3
aload 3
iconst_0
ldc ".png"
aastore
aload 3
iconst_1
ldc ".jpg"
aastore
aload 3
iconst_2
ldc ".gif"
aastore
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
aload 3
iload 1
aaload
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static loadLocalBitmapExactScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
aload 0
iload 1
iconst_2
imul
invokestatic com/common/android/utils/ImageUtils/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 0
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
iload 1
invokestatic com/common/android/utils/ImageUtils/compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
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

.method public static loadLocalBitmapRoughScaled(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L2
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 6
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 6
ldc_w 32768
newarray byte
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 7
aload 6
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
iload 2
idiv
istore 4
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
iload 1
idiv
istore 5
L1:
iload 4
istore 3
iload 4
iload 5
if_icmple L8
iload 5
istore 3
goto L8
L3:
aload 6
iload 4
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L4:
aload 7
ifnull L6
L5:
aload 7
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L6
aload 7
invokevirtual android/graphics/Bitmap/recycle()V
invokestatic java/lang/System/gc()V
L6:
aload 0
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iload 1
iload 2
invokestatic com/common/android/utils/ImageUtils/zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 0
L7:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aconst_null
areturn
L8:
iload 3
istore 4
iload 3
ifgt L3
iconst_1
istore 4
goto L3
.limit locals 8
.limit stack 3
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
aload 0
ifnull L0
ldc "bitmap"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "recycle bitmap:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
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
astore 2
aload 2
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aload 0
areturn
.limit locals 3
.limit stack 7
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/io/FileNotFoundException from L7 to L8 using L2
.catch java/io/IOException from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/io/FileNotFoundException from L9 to L10 using L2
.catch java/io/IOException from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/io/FileNotFoundException from L10 to L11 using L12
.catch java/io/IOException from L10 to L11 using L13
.catch all from L10 to L11 using L14
.catch java/io/IOException from L15 to L16 using L17
.catch all from L18 to L19 using L4
.catch java/io/IOException from L20 to L21 using L22
.catch all from L23 to L24 using L4
.catch java/io/IOException from L25 to L26 using L27
.catch java/io/IOException from L28 to L29 using L30
iconst_0
istore 3
iload 3
istore 2
aload 0
ifnull L31
aload 1
ifnonnull L32
iload 3
istore 2
L31:
iload 2
ireturn
L32:
aconst_null
astore 6
aconst_null
astore 7
aconst_null
astore 5
aload 7
astore 4
L0:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L6
L1:
aload 7
astore 4
L5:
aload 1
invokevirtual java/io/File/delete()Z
pop
L6:
aload 7
astore 4
L7:
aload 1
invokevirtual java/io/File/createNewFile()Z
pop
L8:
aload 7
astore 4
L9:
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L10:
aload 0
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 90
aload 1
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
ifeq L11
aload 1
invokevirtual java/io/FileOutputStream/flush()V
L11:
iconst_1
istore 2
aload 1
ifnull L31
L15:
aload 1
invokevirtual java/io/FileOutputStream/close()V
L16:
iconst_1
ireturn
L17:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_1
ireturn
L2:
astore 1
aload 5
astore 0
L33:
aload 0
astore 4
L18:
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L19:
iload 3
istore 2
aload 0
ifnull L31
L20:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L21:
iconst_0
ireturn
L22:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 6
astore 0
L34:
aload 0
astore 4
L23:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L24:
iload 3
istore 2
aload 0
ifnull L31
L25:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L26:
iconst_0
ireturn
L27:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L4:
astore 0
L35:
aload 4
ifnull L29
L28:
aload 4
invokevirtual java/io/FileOutputStream/close()V
L29:
aload 0
athrow
L30:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L29
L14:
astore 0
aload 1
astore 4
goto L35
L13:
astore 4
aload 1
astore 0
aload 4
astore 1
goto L34
L12:
astore 4
aload 1
astore 0
aload 4
astore 1
goto L33
.limit locals 8
.limit stack 4
.end method

.method public static scaleAndRotateImage(Ljava/lang/String;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
.catch java/lang/Exception from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/lang/OutOfMemoryError from L7 to L8 using L2
.catch java/lang/Exception from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/lang/OutOfMemoryError from L9 to L10 using L2
.catch java/lang/Exception from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/lang/OutOfMemoryError from L11 to L12 using L2
.catch java/lang/Exception from L11 to L12 using L3
.catch all from L11 to L12 using L4
.catch java/lang/OutOfMemoryError from L13 to L14 using L2
.catch java/lang/Exception from L13 to L14 using L3
.catch all from L13 to L14 using L4
.catch java/lang/OutOfMemoryError from L15 to L16 using L17
.catch java/lang/Exception from L15 to L16 using L3
.catch all from L15 to L16 using L4
.catch java/lang/OutOfMemoryError from L18 to L19 using L2
.catch java/lang/Exception from L18 to L19 using L3
.catch all from L18 to L19 using L4
.catch java/lang/OutOfMemoryError from L20 to L21 using L2
.catch java/lang/Exception from L20 to L21 using L3
.catch all from L20 to L21 using L4
.catch java/io/IOException from L22 to L23 using L24
.catch java/lang/OutOfMemoryError from L25 to L26 using L2
.catch java/lang/Exception from L25 to L26 using L3
.catch all from L25 to L26 using L4
.catch java/lang/OutOfMemoryError from L27 to L28 using L2
.catch java/lang/Exception from L27 to L28 using L3
.catch all from L27 to L28 using L4
.catch java/lang/OutOfMemoryError from L29 to L30 using L2
.catch java/lang/Exception from L29 to L30 using L3
.catch all from L29 to L30 using L4
.catch java/lang/OutOfMemoryError from L30 to L31 using L32
.catch java/lang/Exception from L30 to L31 using L33
.catch all from L30 to L31 using L34
.catch java/io/IOException from L35 to L36 using L37
.catch all from L38 to L39 using L4
.catch java/io/IOException from L40 to L41 using L42
.catch all from L43 to L44 using L4
.catch java/io/IOException from L45 to L46 using L47
.catch java/io/IOException from L48 to L49 using L50
aconst_null
astore 9
aconst_null
astore 11
aconst_null
astore 10
aconst_null
astore 7
aconst_null
astore 12
aconst_null
astore 4
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 13
L1:
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L5:
aload 13
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L6:
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L7:
aload 0
aload 13
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
L8:
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L9:
aload 13
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
sipush 1280
i2f
fdiv
invokestatic java/lang/Math/round(F)I
istore 1
L10:
sipush 1280
ifne L51
iconst_1
istore 1
goto L51
L52:
iload 2
iconst_1
if_icmple L12
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L11:
aload 13
iload 2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L12:
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L13:
aload 13
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L14:
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L15:
aload 0
aload 13
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 6
L16:
aload 6
astore 4
L53:
aload 4
astore 7
aload 4
ifnonnull L21
aload 4
astore 6
aload 4
astore 5
aload 4
astore 3
aload 11
astore 8
L18:
aload 13
iconst_2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L19:
aload 4
astore 6
aload 4
astore 5
aload 4
astore 3
aload 11
astore 8
L20:
aload 0
aload 13
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 7
L21:
aload 7
ifnonnull L54
iconst_0
ifeq L23
L22:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L23:
aload 7
ifnull L55
aload 7
invokevirtual android/graphics/Bitmap/recycle()V
L55:
return
L17:
astore 14
aload 4
astore 6
aload 7
astore 5
aload 12
astore 3
aload 11
astore 8
L25:
aload 14
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
L26:
aconst_null
astore 4
goto L53
L24:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L23
L54:
aload 7
astore 6
aload 7
astore 5
aload 7
astore 3
aload 11
astore 8
L27:
aload 7
aload 0
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 4
L28:
aload 4
astore 6
aload 4
astore 5
aload 4
astore 3
aload 11
astore 8
L29:
new java/io/FileOutputStream
dup
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 0
L30:
aload 4
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 0
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
ifeq L31
aload 0
invokevirtual java/io/FileOutputStream/flush()V
L31:
aload 0
ifnull L36
L35:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L36:
aload 4
ifnull L56
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
return
L37:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L36
L2:
astore 5
aload 10
astore 0
aload 6
astore 4
L57:
aload 4
astore 3
aload 0
astore 8
L38:
aload 5
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
L39:
aload 0
ifnull L41
L40:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L41:
aload 4
ifnull L55
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
return
L42:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L41
L3:
astore 6
aload 9
astore 0
aload 5
astore 4
L58:
aload 4
astore 3
aload 0
astore 8
L43:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L44:
aload 0
ifnull L46
L45:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L46:
aload 4
ifnull L55
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
return
L47:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L46
L4:
astore 0
L59:
aload 8
ifnull L49
L48:
aload 8
invokevirtual java/io/FileOutputStream/close()V
L49:
aload 3
ifnull L60
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
L60:
aload 0
athrow
L50:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
goto L49
L34:
astore 5
aload 4
astore 3
aload 0
astore 8
aload 5
astore 0
goto L59
L33:
astore 6
goto L58
L32:
astore 5
goto L57
L56:
return
L51:
iload 1
istore 2
iload 1
iconst_1
if_icmpge L52
iconst_1
istore 2
goto L52
.limit locals 15
.limit stack 5
.end method

.method public static tansferToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L7 to L10 using L8
.catch all from L7 to L10 using L9
.catch java/io/IOException from L11 to L12 using L8
.catch all from L11 to L12 using L9
.catch all from L13 to L14 using L3
.catch java/io/IOException from L15 to L16 using L17
.catch java/io/IOException from L18 to L19 using L17
.catch java/io/IOException from L20 to L21 using L8
.catch all from L20 to L21 using L9
.catch java/io/IOException from L22 to L23 using L24
.catch java/io/IOException from L25 to L26 using L24
.catch java/io/IOException from L27 to L28 using L29
.catch java/io/IOException from L30 to L31 using L29
aload 0
invokevirtual java/io/File/exists()Z
ifne L32
L33:
aconst_null
areturn
L32:
aconst_null
astore 4
aconst_null
astore 6
aconst_null
astore 3
aconst_null
astore 7
aconst_null
astore 5
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 2
L1:
new java/io/ByteArrayOutputStream
dup
sipush 1000
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 3
L4:
sipush 1000
newarray byte
astore 4
L7:
aload 2
aload 4
invokevirtual java/io/FileInputStream/read([B)I
istore 1
L10:
iload 1
iconst_m1
if_icmpeq L20
L11:
aload 3
aload 4
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L12:
goto L7
L8:
astore 4
aload 2
astore 0
aload 3
astore 5
aload 4
astore 2
L34:
aload 5
astore 3
aload 0
astore 4
L13:
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L14:
aload 0
ifnull L16
L15:
aload 0
invokevirtual java/io/FileInputStream/close()V
L16:
aload 5
ifnull L33
L18:
aload 5
invokevirtual java/io/ByteArrayOutputStream/close()V
L19:
aconst_null
areturn
L17:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L20:
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 3
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 0
L21:
aload 2
ifnull L23
L22:
aload 2
invokevirtual java/io/FileInputStream/close()V
L23:
aload 3
ifnull L26
L25:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L26:
aload 0
areturn
L24:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L26
L3:
astore 0
L35:
aload 4
ifnull L28
L27:
aload 4
invokevirtual java/io/FileInputStream/close()V
L28:
aload 3
ifnull L31
L30:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L31:
aload 0
athrow
L29:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L31
L6:
astore 0
aload 7
astore 3
aload 2
astore 4
goto L35
L9:
astore 0
aload 2
astore 4
goto L35
L2:
astore 2
aload 6
astore 0
goto L34
L5:
astore 3
aload 2
astore 0
aload 3
astore 2
goto L34
.limit locals 8
.limit stack 4
.end method

.method public static toGrayImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
aconst_null
astore 1
aload 0
ifnonnull L0
aload 0
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
L1:
aload 2
astore 1
L3:
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 3
L4:
aload 2
astore 1
L5:
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 4
L6:
aload 2
astore 1
L7:
new android/graphics/ColorMatrix
dup
invokespecial android/graphics/ColorMatrix/<init>()V
astore 5
L8:
aload 2
astore 1
L9:
aload 5
fconst_0
invokevirtual android/graphics/ColorMatrix/setSaturation(F)V
L10:
aload 2
astore 1
L11:
aload 4
new android/graphics/ColorMatrixColorFilter
dup
aload 5
invokespecial android/graphics/ColorMatrixColorFilter/<init>(Landroid/graphics/ColorMatrix;)V
invokevirtual android/graphics/Paint/setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
pop
L12:
aload 2
astore 1
L13:
aload 3
aload 0
fconst_0
fconst_0
aload 4
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L14:
aload 2
astore 1
L15:
aload 1
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
pop
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
goto L15
.limit locals 6
.limit stack 5
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
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
areturn
.limit locals 6
.limit stack 7
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
aload 0
areturn
L1:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fstore 2
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fstore 3
aload 0
iconst_0
iconst_0
fload 2
f2i
fload 3
f2i
aload 1
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 7
.end method
