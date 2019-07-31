.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXImageObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'CONTENT_LENGTH_LIMIT' I = 10485760


.field private static final 'PATH_LENGTH_LIMIT' I = 10240


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXImageObject"

.field private static final 'URL_LENGTH_LIMIT' I = 10240


.field public 'imageData' [B

.field public 'imagePath' Ljava/lang/String;

.field public 'imageUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/graphics/Bitmap;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 85
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 0
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>([B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
return
.limit locals 2
.limit stack 2
.end method

.method private getFileSize(Ljava/lang/String;)I
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifne L1
L0:
iconst_0
ireturn
L1:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 1
invokevirtual java/io/File/length()J
l2i
ireturn
.limit locals 2
.limit stack 3
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
arraylength
ifne L1
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L2:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L3:
ldc "MicroMsg.SDK.WXImageObject"
ldc "checkArgs fail, all arguments are null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
arraylength
ldc_w 10485760
if_icmple L4
ldc "MicroMsg.SDK.WXImageObject"
ldc "checkArgs fail, content is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
ifnull L5
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L5
ldc "MicroMsg.SDK.WXImageObject"
ldc "checkArgs fail, path is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
ifnull L6
aload 0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
invokespecial com/tencent/mm/sdk/modelmsg/WXImageObject/getFileSize(Ljava/lang/String;)I
ldc_w 10485760
if_icmple L6
ldc "MicroMsg.SDK.WXImageObject"
ldc "checkArgs fail, image content is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L6:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
ifnull L7
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L7
ldc "MicroMsg.SDK.WXImageObject"
ldc "checkArgs fail, url is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public serialize(Landroid/os/Bundle;)V
aload 1
ldc "_wximageobject_imageData"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
invokevirtual android/os/Bundle/putByteArray(Ljava/lang/String;[B)V
aload 1
ldc "_wximageobject_imagePath"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wximageobject_imageUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setImagePath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public type()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wximageobject_imageData"
invokevirtual android/os/Bundle/getByteArray(Ljava/lang/String;)[B
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageData [B
aload 0
aload 1
ldc "_wximageobject_imagePath"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imagePath Ljava/lang/String;
aload 0
aload 1
ldc "_wximageobject_imageUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXImageObject/imageUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
