.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/modelmsg/WXMediaMessage
.super java/lang/Object
.inner class public static Builder inner com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder outer com/tencent/mm/sdk/modelmsg/WXMediaMessage
.inner class public static abstract interface IMediaObject inner com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject outer com/tencent/mm/sdk/modelmsg/WXMediaMessage

.field public static final 'ACTION_WXAPPMESSAGE' Ljava/lang/String; = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE"

.field private static final 'DESCRIPTION_LENGTH_LIMIT' I = 1024


.field private static final 'MEDIA_TAG_NAME_LENGTH_LIMIT' I = 64


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXMediaMessage"

.field private static final 'THUMB_LENGTH_LIMIT' I = 32768


.field private static final 'TITLE_LENGTH_LIMIT' I = 512


.field public 'description' Ljava/lang/String;

.field public 'mediaObject' Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

.field public 'mediaTagName' Ljava/lang/String;

.field public 'sdkVer' I

.field public 'thumbData' [B

.field public 'title' Ljava/lang/String;

.method public <init>()V
aload 0
aconst_null
invokespecial com/tencent/mm/sdk/modelmsg/WXMediaMessage/<init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
return
.limit locals 2
.limit stack 2
.end method

.method final checkArgs()Z
aload 0
invokevirtual com/tencent/mm/sdk/modelmsg/WXMediaMessage/getType()I
bipush 8
if_icmpne L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
ifnull L1
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
arraylength
ifne L0
L1:
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, thumbData should not be null when send emoji"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
arraylength
ldc_w 32768
if_icmple L2
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, thumbData is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/title Ljava/lang/String;
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/title Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L3
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, title is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/description Ljava/lang/String;
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/description Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L4
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, description is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
ifnonnull L5
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, mediaObject is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaTagName Ljava/lang/String;
ifnull L6
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaTagName Ljava/lang/String;
invokevirtual java/lang/String/length()I
bipush 64
if_icmple L6
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "checkArgs fail, mediaTagName is too long"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L6:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invokeinterface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject/checkArgs()Z 0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getType()I
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invokeinterface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject/type()I 0
ireturn
.limit locals 1
.limit stack 1
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
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "put thumb failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method
