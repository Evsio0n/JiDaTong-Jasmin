.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/LaunchFromWX$Resp
.super com/tencent/mm/sdk/modelbase/BaseResp
.inner class public static Resp inner com/tencent/mm/sdk/modelmsg/LaunchFromWX$Resp outer com/tencent/mm/sdk/modelmsg/LaunchFromWX

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
invokevirtual com/tencent/mm/sdk/modelmsg/LaunchFromWX$Resp/fromBundle(Landroid/os/Bundle;)V
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

.method public getType()I
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method
