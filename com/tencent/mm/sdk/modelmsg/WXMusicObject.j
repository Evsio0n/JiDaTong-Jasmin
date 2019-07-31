.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXMusicObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'LENGTH_LIMIT' I = 10240


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXMusicObject"

.field public 'musicDataUrl' Ljava/lang/String;

.field public 'musicLowBandDataUrl' Ljava/lang/String;

.field public 'musicLowBandUrl' Ljava/lang/String;

.field public 'musicUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L2:
ldc "MicroMsg.SDK.WXMusicObject"
ldc "both arguments are null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L3
ldc "MicroMsg.SDK.WXMusicObject"
ldc "checkArgs fail, musicUrl is too long"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L4
ldc "MicroMsg.SDK.WXMusicObject"
ldc "checkArgs fail, musicLowBandUrl is too long"
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
ldc "_wxmusicobject_musicUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxmusicobject_musicLowBandUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxmusicobject_musicDataUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicDataUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxmusicobject_musicLowBandDataUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandDataUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public type()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxmusicobject_musicUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicUrl Ljava/lang/String;
aload 0
aload 1
ldc "_wxmusicobject_musicLowBandUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandUrl Ljava/lang/String;
aload 0
aload 1
ldc "_wxmusicobject_musicDataUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicDataUrl Ljava/lang/String;
aload 0
aload 1
ldc "_wxmusicobject_musicLowBandDataUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMusicObject/musicLowBandDataUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
