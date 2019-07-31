.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/process/RotateBitmapProcessor
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/process/BitmapProcessor

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDegree(Ljava/lang/String;)I
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
L2:
astore 1
aload 1
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
.limit locals 4
.limit stack 3
.end method

.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
areturn
L0:
aload 0
aload 1
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/core/process/RotateBitmapProcessor/getDegree(Ljava/lang/String;)I
invokevirtual com/nostra13/universalimageloader/core/process/RotateBitmapProcessor/rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 4
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
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
