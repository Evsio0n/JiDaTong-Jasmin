.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXWebpageObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'LENGTH_LIMIT' I = 10240


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXWebpageObject"

.field public 'webpageUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L1
L0:
ldc "MicroMsg.SDK.WXWebpageObject"
ldc "checkArgs fail, webpageUrl is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public serialize(Landroid/os/Bundle;)V
aload 1
ldc "_wxwebpageobject_webpageUrl"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public type()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxwebpageobject_webpageUrl"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXWebpageObject/webpageUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
