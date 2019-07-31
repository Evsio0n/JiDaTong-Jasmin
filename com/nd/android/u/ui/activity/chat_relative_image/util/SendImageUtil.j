.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/SendImageUtil
.super java/lang/Object

.field private static final 'MAX_BITMAP_SIZE' I = 480


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 3
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 3
getfield android/graphics/BitmapFactory$Options/outHeight I
imul
i2l
lstore 1
L0:
lload 1
ldc2_w 230400L
lcmp
ifle L1
aload 3
aload 3
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
iadd
putfield android/graphics/BitmapFactory$Options/inSampleSize I
lload 1
iconst_2
lshr
lstore 1
goto L0
L1:
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
aload 0
invokestatic com/common/android/utils/ImageUtils/getDegree(Ljava/lang/String;)I
invokestatic com/common/android/utils/ImageUtils/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static saveAndCompressBitmap(Ljava/lang/String;)Ljava/io/File;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L7
.catch java/io/IOException from L8 to L9 using L10
.catch java/io/IOException from L11 to L12 using L10
aconst_null
astore 1
aconst_null
astore 2
aload 0
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifeq L5
aload 2
astore 1
L0:
ldc "upload"
iconst_1
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
astore 2
L1:
aload 2
astore 1
L3:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
aload 2
invokestatic com/nd/android/u/allCommonUtils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
L4:
aload 2
astore 1
L13:
aload 1
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
goto L13
L5:
ldc "upload"
iconst_0
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
astore 2
L6:
aload 2
astore 1
L8:
aload 0
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/SendImageUtil/compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 0
aload 1
aload 0
invokestatic com/product/android/utils/FileHelper/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
L9:
aload 0
ifnull L12
L11:
aload 0
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L12
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L12:
aload 1
areturn
L7:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L8
L10:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L12
.limit locals 3
.limit stack 3
.end method
