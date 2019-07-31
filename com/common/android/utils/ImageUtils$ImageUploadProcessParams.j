.bytecode 50.0
.class public synchronized com/common/android/utils/ImageUtils$ImageUploadProcessParams
.super java/lang/Object
.inner class public static ImageUploadProcessParams inner com/common/android/utils/ImageUtils$ImageUploadProcessParams outer com/common/android/utils/ImageUtils

.field public 'compress_quality' I

.field public 'no_wifi_height' I

.field public 'no_wifi_width' I

.field public 'wifi_height' I

.field public 'wifi_width' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 1024
putfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/wifi_height I
aload 0
sipush 1920
putfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/wifi_width I
aload 0
sipush 600
putfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/no_wifi_height I
aload 0
sipush 640
putfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/no_wifi_width I
aload 0
bipush 80
putfield com/common/android/utils/ImageUtils$ImageUploadProcessParams/compress_quality I
return
.limit locals 1
.limit stack 2
.end method
