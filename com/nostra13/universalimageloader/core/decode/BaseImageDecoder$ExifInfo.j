.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo
.super java/lang/Object
.inner class protected static ExifInfo inner com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo outer com/nostra13/universalimageloader/core/decode/BaseImageDecoder

.field public final 'flipHorizontal' Z

.field public final 'rotation' I

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/rotation I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/flipHorizontal Z
return
.limit locals 1
.limit stack 2
.end method

.method protected <init>(IZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/rotation I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/flipHorizontal Z
return
.limit locals 3
.limit stack 2
.end method
