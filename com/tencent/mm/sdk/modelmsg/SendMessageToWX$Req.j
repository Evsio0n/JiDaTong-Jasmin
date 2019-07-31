.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req
.super com/tencent/mm/sdk/modelbase/BaseReq
.inner class public static Req inner com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req outer com/tencent/mm/sdk/modelmsg/SendMessageToWX

.field private static final 'FAV_CONTENT_LENGTH_LIMIT' I = 26214400


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.SendMessageToWX.Req"

.field public static final 'WXSceneFavorite' I = 2


.field public static final 'WXSceneSession' I = 0


.field public static final 'WXSceneTimeline' I = 1


.field public 'message' Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.field public 'scene' I

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/<init>()V
aload 0
aload 1
invokevirtual com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
ifnonnull L0
ldc "MicroMsg.SDK.SendMessageToWX.Req"
ldc "checkArgs fail ,message is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invokeinterface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject/type()I 0
bipush 6
if_icmpne L1
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/scene I
iconst_2
if_icmpne L1
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
checkcast com/tencent/mm/sdk/modelmsg/WXFileObject
ldc_w 26214400
invokevirtual com/tencent/mm/sdk/modelmsg/WXFileObject/setContentLengthLimit(I)V
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokevirtual com/tencent/mm/sdk/modelmsg/WXMediaMessage/checkArgs()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
putfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
aload 0
aload 1
ldc "_wxapi_sendmessagetowx_req_scene"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/scene I
return
.limit locals 2
.limit stack 3
.end method

.method public getType()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
aload 1
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;
invokevirtual android/os/Bundle/putAll(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_sendmessagetowx_req_scene"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendMessageToWX$Req/scene I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method
