.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/ImageObject
.super com/sina/weibo/sdk/api/BaseMediaObject
.inner class inner com/sina/weibo/sdk/api/ImageObject$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/sina/weibo/sdk/api/ImageObject;>;"

.field private static final 'DATA_SIZE' I = 2097152


.field public 'imageData' [B

.field public 'imagePath' Ljava/lang/String;

.method static <clinit>()V
new com/sina/weibo/sdk/api/ImageObject$1
dup
invokespecial com/sina/weibo/sdk/api/ImageObject$1/<init>()V
putstatic com/sina/weibo/sdk/api/ImageObject/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/createByteArray()[B
putfield com/sina/weibo/sdk/api/ImageObject/imageData [B
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
.catch java/lang/SecurityException from L0 to L1 using L2
.catch java/lang/SecurityException from L1 to L3 using L2
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imageData [B
ifnonnull L4
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
ifnonnull L4
ldc "Weibo.ImageObject"
ldc "imageData and imagePath are null"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imageData [B
ifnull L5
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imageData [B
arraylength
ldc_w 2097152
if_icmple L5
ldc "Weibo.ImageObject"
ldc "imageData is too large"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
ifnull L6
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L6
ldc "Weibo.ImageObject"
ldc "imagePath is too length"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L6:
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
ifnull L7
new java/io/File
dup
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
L0:
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
aload 1
invokevirtual java/io/File/length()J
lconst_0
lcmp
ifeq L1
aload 1
invokevirtual java/io/File/length()J
ldc2_w 10485760L
lcmp
ifle L7
L1:
ldc "Weibo.ImageObject"
ldc "checkArgs fail, image content is too large or not exists"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L3:
iconst_0
ireturn
L2:
astore 1
ldc "Weibo.ImageObject"
ldc "checkArgs fail, image content is too large or not exists"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObjType()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setImageObject(Landroid/graphics/Bitmap;)V
.catch java/lang/Exception from L0 to L1 using L2
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
putfield com/sina/weibo/sdk/api/ImageObject/imageData [B
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "Weibo.ImageObject"
ldc "put thumb failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imageData [B
invokevirtual android/os/Parcel/writeByteArray([B)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/ImageObject/imagePath Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method
