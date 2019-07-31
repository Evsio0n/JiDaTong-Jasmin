.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp
.super com/tencent/mm/sdk/modelbase/BaseResp
.inner class public static Resp inner com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp outer com/tencent/mm/sdk/modelmsg/GetMessageFromWX

.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.GetMessageFromWX.Resp"

.field public 'message' Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
aload 0
aload 1
invokevirtual com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
ifnonnull L0
ldc "MicroMsg.SDK.GetMessageFromWX.Resp"
ldc "checkArgs fail, message is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokevirtual com/tencent/mm/sdk/modelmsg/WXMediaMessage/checkArgs()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
putfield com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
return
.limit locals 2
.limit stack 2
.end method

.method public getType()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/toBundle(Landroid/os/Bundle;)V
aload 1
aload 0
getfield com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;
invokevirtual android/os/Bundle/putAll(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
