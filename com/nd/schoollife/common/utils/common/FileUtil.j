.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/common/FileUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static decodeInputStreamAsBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L6
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 1
aload 1
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 1
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 1
iconst_1
putfield android/graphics/BitmapFactory$Options/inInputShareable Z
aload 1
iconst_2
putfield android/graphics/BitmapFactory$Options/inSampleSize I
L4:
aload 0
aconst_null
aload 1
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
L5:
aconst_null
areturn
L6:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
L3:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
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
