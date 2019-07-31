.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXVideoObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'LENGTH_LIMIT' I = 10240


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXVideoObject"

.field public 'videoLowBandUrl' Ljava/lang/String;

.field public 'videoUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L2:
ldc "MicroMsg.SDK.WXVideoObject"
ldc "both arguments are null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L3
ldc "MicroMsg.SDK.WXVideoObject"
ldc "checkArgs fail, videoUrl is too long"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L4
ldc "MicroMsg.SDK.WXVideoObject"
ldc "checkArgs fail, videoLowBandUrl is too long"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public serialize(Landroid/os/Bundle;)V
aload 1
ldc "_wxvideoobject_videoUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxvideoobject_videoLowBandUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public type()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxvideoobject_videoUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoUrl Ljava/lang/String;
aload 0
aload 1
ldc "_wxvideoobject_videoLowBandUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXVideoObject/videoLowBandUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
