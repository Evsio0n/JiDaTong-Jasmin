.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp
.super com/tencent/mm/sdk/modelbase/BaseResp
.inner class public static Resp inner com/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp outer com/tencent/mm/sdk/modelmsg/SendMessageToWX

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
invokevirtual com/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp/fromBundle(Landroid/os/Bundle;)V
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
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
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
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/toBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
