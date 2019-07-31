.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/BitmapUtil
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 100
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
bipush 100
istore 1
L0:
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
arraylength
sipush 1024
idiv
bipush 100
if_icmple L1
aload 2
invokevirtual java/io/ByteArrayOutputStream/reset()V
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
iload 1
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
iload 1
bipush 10
isub
istore 1
goto L0
L1:
new java/io/ByteArrayInputStream
dup
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
aconst_null
aconst_null
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 4
.end method

.method private static getImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch all from L8 to L9 using L3
aconst_null
astore 3
aconst_null
astore 2
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
aconst_null
ldc "_id=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
aload 0
astore 2
aload 0
astore 3
L4:
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L10
L5:
aload 0
astore 2
aload 0
astore 3
L6:
aload 0
aload 0
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L7:
aload 0
ifnull L11
aload 0
invokeinterface android/database/Cursor/close()V 0
L11:
aload 1
areturn
L10:
aload 0
ifnull L12
aload 0
invokeinterface android/database/Cursor/close()V 0
L12:
aconst_null
areturn
L2:
astore 0
aload 2
astore 3
L8:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L9:
aload 2
ifnull L13
aload 2
invokeinterface android/database/Cursor/close()V 0
L13:
aconst_null
areturn
L3:
astore 0
aload 3
ifnull L14
aload 3
invokeinterface android/database/Cursor/close()V 0
L14:
aload 0
athrow
.limit locals 4
.limit stack 8
.end method

.method public static getImageThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2l
iconst_1
aconst_null
invokestatic android/provider/MediaStore$Images$Thumbnails/getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 7
aload 7
astore 6
aload 7
ifnonnull L0
aload 0
aload 1
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/BitmapUtil/getImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
ifnonnull L1
aconst_null
astore 0
L2:
aload 0
areturn
L1:
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
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
getfield android/graphics/BitmapFactory$Options/outWidth I
iload 2
idiv
istore 4
aload 1
getfield android/graphics/BitmapFactory$Options/outHeight I
iload 3
idiv
istore 5
iload 4
iload 5
if_icmpge L3
L4:
iload 4
istore 5
iload 4
ifgt L5
iconst_1
istore 5
L5:
aload 1
iload 5
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 0
aload 1
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 6
L0:
aload 6
iload 2
iload 3
iconst_2
invokestatic android/media/ThumbnailUtils/extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
astore 7
aload 6
ifnull L6
aload 6
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L6
aload 6
invokevirtual android/graphics/Bitmap/recycle()V
L6:
aload 7
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/BitmapUtil/compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 1
aload 1
astore 0
aload 7
ifnull L2
aload 1
astore 0
aload 7
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L2
aload 7
invokevirtual android/graphics/Bitmap/recycle()V
aload 1
areturn
L3:
iload 5
istore 4
goto L4
.limit locals 8
.limit stack 5
.end method

.method public static getThumbnailByPath(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 0
aload 0
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
aload 0
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
getfield android/graphics/BitmapFactory$Options/outWidth I
iload 2
idiv
istore 4
aload 0
getfield android/graphics/BitmapFactory$Options/outHeight I
iload 3
idiv
istore 5
iload 4
iload 5
if_icmpge L0
L1:
iload 4
istore 5
iload 4
ifgt L2
iconst_1
istore 5
L2:
aload 0
iload 5
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
aload 0
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 0
aload 0
iload 2
iload 3
iconst_2
invokestatic android/media/ThumbnailUtils/extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
astore 1
aload 0
ifnull L3
aload 0
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L3
aload 0
invokevirtual android/graphics/Bitmap/recycle()V
L3:
aload 1
areturn
L0:
iload 5
istore 4
goto L1
.limit locals 6
.limit stack 4
.end method
