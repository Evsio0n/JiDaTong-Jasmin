.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req
.super com/tencent/mm/sdk/modelbase/BaseReq
.inner class public static Req inner com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req outer com/tencent/mm/sdk/modelmsg/ShowMessageFromWX

.field public 'message' Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

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
invokevirtual com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokevirtual com/tencent/mm/sdk/modelmsg/WXMediaMessage/checkArgs()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
putfield com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
return
.limit locals 2
.limit stack 2
.end method

.method public getType()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
getfield com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/message Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;
astore 2
aload 0
aload 2
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
aload 1
aload 2
invokevirtual android/os/Bundle/putAll(Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 2
.end method
