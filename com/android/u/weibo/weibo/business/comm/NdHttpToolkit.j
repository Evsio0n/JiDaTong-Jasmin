.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdHttpToolkit
.super java/lang/Object
.inner class public final UploadName inner com/android/u/weibo/weibo/business/comm/NdHttpToolkit$UploadName outer com/android/u/weibo/weibo/business/comm/NdHttpToolkit

.field public static 'HTTP_WEIBO_NOEXIST' I = 0


.field public static 'WEIBO_DEBUG' Z = 0


.field public static final 'WEIBO_LOG_TAG' Ljava/lang/String; = "WEIBO_DEBUG"

.field public static 'WEIBO_RESPONSE_DEBUG' Z

.field private 'httpToolkit' Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;

.field private 'mResponse' Ljava/lang/String;

.field private 'mRetCode' I

.field private 'mSid' Ljava/lang/String;

.field private 'mUrl' Ljava/lang/String;

.method static <clinit>()V
bipush 105
putstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/HTTP_WEIBO_NOEXIST I
iconst_0
putstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/WEIBO_DEBUG Z
iconst_0
putstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/WEIBO_RESPONSE_DEBUG Z
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
iconst_1
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
invokestatic com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
checkcast com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpToolkit Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;
aload 0
aload 2
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mUrl Ljava/lang/String;
getstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/WEIBO_DEBUG Z
ifeq L0
ldc "WEIBO_DEBUG"
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mUrl Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getSid(Landroid/content/Context;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mSid Ljava/lang/String;
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/setSid()V
return
.limit locals 3
.limit stack 4
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

.method private compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.catch java/io/IOException from L0 to L1 using L2
aload 1
invokevirtual java/io/File/exists()Z
ifne L3
L4:
aconst_null
areturn
L3:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 5
aload 5
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
aload 5
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
iload 2
iload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 6
aload 6
ifnull L4
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
astore 7
aload 0
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getDegree(Ljava/lang/String;)I
istore 2
aload 6
astore 5
iload 2
ifle L5
aload 0
aload 6
iload 2
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 5
L5:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 6
aload 5
aload 7
iload 4
aload 6
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 5
invokevirtual android/graphics/Bitmap/recycle()V
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 5
aload 5
astore 1
aload 0
aload 5
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/isImage(Ljava/lang/String;)Z
ifne L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L6:
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 6
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 1
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 1
L0:
aload 6
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
aload 1
areturn
L2:
astore 5
aload 5
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
.limit locals 8
.limit stack 4
.end method

.method private convertGIFToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
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
aload 1
invokevirtual java/io/File/exists()Z
ifne L45
aconst_null
astore 1
L46:
aload 1
areturn
L45:
aconst_null
astore 10
aconst_null
astore 5
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 4
aconst_null
astore 9
aconst_null
astore 6
L0:
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 3
L1:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 4
L5:
sipush 1024
newarray byte
astore 5
L9:
aload 3
aload 5
invokevirtual java/io/FileInputStream/read([B)I
istore 2
L13:
iload 2
iconst_m1
if_icmpeq L23
L14:
aload 4
aload 5
iconst_0
iload 2
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L15:
goto L9
L10:
astore 6
aload 3
astore 1
aload 4
astore 3
L47:
aload 3
astore 4
aload 1
astore 5
L16:
aload 6
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L17:
aload 1
ifnull L19
L18:
aload 1
invokevirtual java/io/FileInputStream/close()V
L19:
aload 3
ifnull L22
L21:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L22:
aconst_null
areturn
L23:
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 5
L24:
aload 5
astore 1
L25:
aload 0
aload 5
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/isImage(Ljava/lang/String;)Z
ifne L26
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".gif"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L26:
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 1
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 5
L27:
aload 3
ifnull L29
L28:
aload 3
invokevirtual java/io/FileInputStream/close()V
L29:
aload 5
astore 1
aload 4
ifnull L46
L31:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L32:
aload 5
areturn
L30:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 5
areturn
L20:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L22
L3:
astore 6
aload 10
astore 1
aload 7
astore 3
L48:
aload 3
astore 4
aload 1
astore 5
L33:
aload 6
invokevirtual java/io/IOException/printStackTrace()V
L34:
aload 1
ifnull L36
L35:
aload 1
invokevirtual java/io/FileInputStream/close()V
L36:
aload 3
ifnull L22
L38:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L39:
goto L22
L37:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L22
L4:
astore 1
L49:
aload 5
ifnull L41
L40:
aload 5
invokevirtual java/io/FileInputStream/close()V
L41:
aload 4
ifnull L44
L43:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L44:
aload 1
athrow
L42:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L44
L8:
astore 1
aload 9
astore 4
aload 3
astore 5
goto L49
L12:
astore 1
aload 3
astore 5
goto L49
L7:
astore 6
aload 3
astore 1
aload 7
astore 3
goto L48
L11:
astore 6
aload 3
astore 1
aload 4
astore 3
goto L48
L2:
astore 1
aload 6
astore 3
aload 1
astore 6
aload 8
astore 1
goto L47
L6:
astore 4
aload 3
astore 1
aload 6
astore 3
aload 4
astore 6
goto L47
.limit locals 11
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
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inInputShareable Z
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 3
aload 3
iload 1
iload 2
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
L0:
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method private getDegree(Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 2
L0:
new android/media/ExifInterface
dup
aload 1
invokespecial android/media/ExifInterface/<init>(Ljava/lang/String;)V
ldc "Orientation"
iconst_0
invokevirtual android/media/ExifInterface/getAttributeInt(Ljava/lang/String;I)I
istore 3
L1:
iload 3
istore 2
L3:
iload 2
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
astore 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method private isImage(Ljava/lang/String;)Z
iconst_3
anewarray java/lang/String
astore 4
aload 4
iconst_0
ldc ".png"
aastore
aload 4
iconst_1
ldc ".jpg"
aastore
aload 4
iconst_2
ldc ".gif"
aastore
aload 4
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
aload 4
iload 2
aaload
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public static parseWeiboErrMsg(Landroid/content/Context;ILjava/lang/String;)V
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
aload 0
iload 1
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
return
.limit locals 3
.limit stack 5
.end method

.method public static parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
.throws com/android/u/weibo/weibo/controller/WeiBoException
.throws org/json/JSONException
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
getstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/WEIBO_DEBUG Z
ifeq L0
ldc "WEIBO_DEBUG"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "parseWeiboErrMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
astore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/system_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 1
aload 2
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
iload 2
ifne L3
aload 1
areturn
L3:
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 3
aload 3
iload 2
i2f
invokevirtual android/graphics/Matrix/postRotate(F)Z
pop
L0:
aload 1
iconst_0
iconst_0
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
aload 3
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 3
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L1:
aload 3
astore 1
L4:
aload 1
areturn
L2:
astore 3
goto L4
.limit locals 4
.limit stack 7
.end method

.method private setSid()V
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpToolkit Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mSid Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static tansferToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L2
aload 0
invokevirtual java/io/File/exists()Z
ifne L0
aconst_null
areturn
L0:
new java/io/FileInputStream
dup
aload 0
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
L2:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L6:
aload 2
invokevirtual java/io/FileInputStream/close()V
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 3
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;)V
astore 0
L7:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public DoDelete()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpToolkit Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mUrl Ljava/lang/String;
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/doDelete(Ljava/lang/String;Ljava/lang/StringBuilder;)I
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mResponse Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public DoGet()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpToolkit Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mUrl Ljava/lang/String;
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mResponse Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public DoPost(Ljava/lang/String;)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aconst_null
astore 2
aload 1
ifnull L1
L0:
new org/apache/http/entity/StringEntity
dup
aload 1
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 2
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
L1:
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/apache/http/HttpEntity;)I
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method public DoPost(Lorg/apache/http/HttpEntity;)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 0
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpToolkit Lcom/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mUrl Ljava/lang/String;
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mResponse Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
ireturn
.limit locals 3
.limit stack 5
.end method

.method public DoPost(Lorg/json/JSONArray;)I
aload 0
aload 1
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public DoPost(Lorg/json/JSONObject;)I
aload 0
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getResponse()Ljava/lang/String;
getstatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/WEIBO_RESPONSE_DEBUG Z
ifeq L0
ldc "WEIBO_DEBUG"
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mResponse Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mResponse Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getRetCode()I
aload 0
getfield com/android/u/weibo/weibo/business/comm/NdHttpToolkit/mRetCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public httpUploadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)I
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
.throws java/lang/IllegalStateException
.throws java/io/IOException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 5
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
sipush 300
ldc " "
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
aload 2
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc ".gif"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
aload 5
aload 3
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/convertGIFToByteArray(Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L3:
aload 5
ldc "image_type"
new org/apache/http/entity/mime/content/StringBody
dup
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 0
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/apache/http/HttpEntity;)I
ireturn
L2:
aload 1
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L4
aload 2
ifnull L3
aload 0
aload 2
sipush 1920
sipush 1024
bipush 80
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
astore 1
aload 1
ifnonnull L5
new com/android/u/weibo/weibo/controller/WeiBoException
dup
sipush 300
ldc " "
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L5:
aload 5
aload 3
aload 1
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
goto L3
L4:
aload 0
aload 2
sipush 640
sipush 600
bipush 80
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/compressAndRotate(Ljava/io/File;III)Lorg/apache/http/entity/mime/content/ByteArrayBody;
astore 1
aload 1
ifnonnull L6
new com/android/u/weibo/weibo/controller/WeiBoException
dup
sipush 300
ldc " "
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L6:
aload 5
aload 3
aload 1
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
goto L3
.limit locals 6
.limit stack 5
.end method
