.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo
.super java/lang/Object
.inner class protected static ImageFileInfo inner com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo outer com/nostra13/universalimageloader/core/decode/BaseImageDecoder

.field public final 'exif' Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

.field public final 'imageSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.method protected <init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/imageSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/exif Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
return
.limit locals 3
.limit stack 2
.end method
