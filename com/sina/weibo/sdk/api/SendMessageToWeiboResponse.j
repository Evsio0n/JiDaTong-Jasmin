.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/SendMessageToWeiboResponse
.super com/sina/weibo/sdk/api/BaseResponse

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseResponse/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseResponse/<init>()V
aload 0
aload 1
invokevirtual com/sina/weibo/sdk/api/SendMessageToWeiboResponse/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method final check()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseResponse/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseResponse/toBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
