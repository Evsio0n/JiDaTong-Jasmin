.bytecode 50.0
.class public synchronized abstract com/sina/weibo/sdk/api/BaseMediaObject
.super java/lang/Object
.implements android/os/Parcelable

.field public static final 'COMMAND_IMAGE' I = 2


.field public static final 'COMMAND_MUSIC' I = 3


.field public static final 'COMMAND_TEXT' I = 1


.field public static final 'COMMAND_VIDEO' I = 4


.field public static final 'COMMAND_WEBPAGE' I = 5


.field public 'actionUrl' Ljava/lang/String;

.field public 'description' Ljava/lang/String;

.field public 'identify' Ljava/lang/String;

.field public 'schema' Ljava/lang/String;

.field public 'thumbData' [B

.field public 'title' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseMediaObject/actionUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseMediaObject/schema Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseMediaObject/identify Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseMediaObject/title Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseMediaObject/description Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/createByteArray()[B
putfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
return
.limit locals 2
.limit stack 2
.end method

.method checkArgs()Z
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/actionUrl Ljava/lang/String;
ifnull L0
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/actionUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L1
L0:
ldc "Weibo.BaseMediaObject"
ldc "checkArgs fail, actionUrl is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/identify Ljava/lang/String;
ifnull L2
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/identify Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L3
L2:
ldc "Weibo.BaseMediaObject"
ldc "checkArgs fail, identify is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
ifnull L4
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
arraylength
ldc_w 32768
if_icmple L5
L4:
ldc "Weibo.BaseMediaObject"
new java/lang/StringBuilder
dup
ldc "checkArgs fail, thumbData is invalid,size is "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
arraylength
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "! more then 32768."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/title Ljava/lang/String;
ifnull L6
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/title Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L7
L6:
ldc "Weibo.BaseMediaObject"
ldc "checkArgs fail, title is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/description Ljava/lang/String;
ifnull L8
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/description Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L9
L8:
ldc "Weibo.BaseMediaObject"
ldc "checkArgs fail, description is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L9:
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getObjType()I
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
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
putfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "Weibo.BaseMediaObject"
ldc "put thumb failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/actionUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/schema Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/identify Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/title Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/description Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/BaseMediaObject/thumbData [B
invokevirtual android/os/Parcel/writeByteArray([B)V
return
.limit locals 3
.limit stack 2
.end method
