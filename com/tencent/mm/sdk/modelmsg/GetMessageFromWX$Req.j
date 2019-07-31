.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req
.super com/tencent/mm/sdk/modelbase/BaseReq
.inner class public static Req inner com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req outer com/tencent/mm/sdk/modelmsg/GetMessageFromWX

.field public 'username' Ljava/lang/String;

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
invokevirtual com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/fromBundle(Landroid/os/Bundle;)V
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
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
