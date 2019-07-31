.bytecode 50.0
.class public synchronized com/common/android/ui/gif/GifFrame
.super java/lang/Object

.field public 'delay' I

.field public 'image' Landroid/graphics/Bitmap;

.field public 'path' Ljava/lang/String;

.field public 'size' J

.method public <init>(Landroid/graphics/Bitmap;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
aload 0
iload 2
putfield com/common/android/ui/gif/GifFrame/delay I
aload 1
ifnull L0
aload 0
aload 1
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
imul
i2l
putfield com/common/android/ui/gif/GifFrame/size J
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L1
L0:
aload 0
getfield com/common/android/ui/gif/GifFrame/path Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aconst_null
areturn
L2:
aload 0
aload 0
getfield com/common/android/ui/gif/GifFrame/path Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
putfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
L1:
aload 0
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 2
.end method
