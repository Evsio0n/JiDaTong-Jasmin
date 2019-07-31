.bytecode 50.0
.class public synchronized com/ant/liao/GifFrame
.super java/lang/Object

.field public 'delay' I

.field public 'image' Landroid/graphics/Bitmap;

.field public 'imageName' Ljava/lang/String;

.field public 'nextFrame' Lcom/ant/liao/GifFrame;

.method public <init>(Landroid/graphics/Bitmap;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/ant/liao/GifFrame/imageName Ljava/lang/String;
aload 0
aconst_null
putfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
aload 0
aload 1
putfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
aload 0
iload 2
putfield com/ant/liao/GifFrame/delay I
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/ant/liao/GifFrame/imageName Ljava/lang/String;
aload 0
aconst_null
putfield com/ant/liao/GifFrame/nextFrame Lcom/ant/liao/GifFrame;
aload 0
aload 1
putfield com/ant/liao/GifFrame/imageName Ljava/lang/String;
aload 0
iload 2
putfield com/ant/liao/GifFrame/delay I
return
.limit locals 3
.limit stack 2
.end method
