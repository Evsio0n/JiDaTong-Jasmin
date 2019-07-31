.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/ProvideMessageForWeiboRequest
.super com/sina/weibo/sdk/api/BaseRequest

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseRequest/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseRequest/<init>()V
aload 0
aload 1
invokevirtual com/sina/weibo/sdk/api/ProvideMessageForWeiboRequest/fromBundle(Landroid/os/Bundle;)V
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
invokespecial com/sina/weibo/sdk/api/BaseRequest/fromBundle(Landroid/os/Bundle;)V
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
invokespecial com/sina/weibo/sdk/api/BaseRequest/toBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
